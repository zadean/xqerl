-module('fn_resolve_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-resolve-uri-1'/1]).
-export(['fn-resolve-uri-2'/1]).
-export(['fn-resolve-uri-3'/1]).
-export(['fn-resolve-uri-4'/1]).
-export(['fn-resolve-uri-5'/1]).
-export(['fn-resolve-uri-6'/1]).
-export(['fn-resolve-uri-7'/1]).
-export(['fn-resolve-uri-8'/1]).
-export(['fn-resolve-uri-9'/1]).
-export(['fn-resolve-uri-10'/1]).
-export(['fn-resolve-uri-11'/1]).
-export(['fn-resolve-uri-12'/1]).
-export(['fn-resolve-uri-13'/1]).
-export(['fn-resolve-uri-14'/1]).
-export(['fn-resolve-uri-15'/1]).
-export(['fn-resolve-uri-16'/1]).
-export(['fn-resolve-uri-17'/1]).
-export(['fn-resolve-uri-18'/1]).
-export(['fn-resolve-uri-19'/1]).
-export(['fn-resolve-uri-20'/1]).
-export(['fn-resolve-uri-21'/1]).
-export(['fn-resolve-uri-22'/1]).
-export(['fn-resolve-uri-23'/1]).
-export(['fn-resolve-uri-24'/1]).
-export(['fn-resolve-uri-25'/1]).
-export(['fn-resolve-uri-26'/1]).
-export(['fn-resolve-uri-27'/1]).
-export(['fn-resolve-uri-29'/1]).
-export(['fn-resolve-uri-30'/1]).
-export(['fn-resolve-uri-31'/1]).
-export(['fn-resolve-uri-32'/1]).
-export(['K-ResolveURIFunc-1'/1]).
-export(['K-ResolveURIFunc-2'/1]).
-export(['K-ResolveURIFunc-3'/1]).
-export(['K-ResolveURIFunc-4'/1]).
-export(['K-ResolveURIFunc-5'/1]).
-export(['K-ResolveURIFunc-6'/1]).
-export(['cbcl-fn-resolve-uri-001'/1]).
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
    'fn-resolve-uri-1', 
    'fn-resolve-uri-2', 
    'fn-resolve-uri-3', 
    'fn-resolve-uri-4', 
    'fn-resolve-uri-5', 
    'fn-resolve-uri-6', 
    'fn-resolve-uri-7', 
    'fn-resolve-uri-8', 
    'fn-resolve-uri-9', 
    'fn-resolve-uri-10', 
    'fn-resolve-uri-11', 
    'fn-resolve-uri-12', 
    'fn-resolve-uri-13', 
    'fn-resolve-uri-14', 
    'fn-resolve-uri-15', 
    'fn-resolve-uri-16', 
    'fn-resolve-uri-17', 
    'fn-resolve-uri-18', 
    'fn-resolve-uri-19', 
    'fn-resolve-uri-20', 
    'fn-resolve-uri-21', 
    'fn-resolve-uri-22', 
    'fn-resolve-uri-23']}, 
   {group_1, [parallel], [
    'fn-resolve-uri-24', 
    'fn-resolve-uri-25', 
    'fn-resolve-uri-26', 
    'fn-resolve-uri-27', 
    'fn-resolve-uri-29', 
    'fn-resolve-uri-30', 
    'fn-resolve-uri-31', 
    'fn-resolve-uri-32', 
    'K-ResolveURIFunc-1', 
    'K-ResolveURIFunc-2', 
    'K-ResolveURIFunc-3', 
    'K-ResolveURIFunc-4', 
    'K-ResolveURIFunc-5', 
    'K-ResolveURIFunc-6', 
    'cbcl-fn-resolve-uri-001']}].

'fn-resolve-uri-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:resolve-uri((),\"BaseValue\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example/\"; fn:string(fn:resolve-uri(\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:resolve-uri(\":\",\"http://www.example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:resolve-uri(\"examples\",\"http:%%\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"http://www.examples.com\",\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",\"http://www.examples.com/\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",xs:string(\"http://www.examples.com/\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:string(\"examples\"),fn:string(\"http://www.examples.com/\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:upper-case(\"examples\"),fn:upper-case(\"http://www.examples.com/\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "HTTP://WWW.EXAMPLES.COM/EXAMPLES") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:lower-case(\"EXAMPLES\"),fn:lower-case(\"HTTP://www.examples.com/\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:substring(\"1234http://www.examples.com/\",5)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:string-join(('http://www.example','.com/'),'')))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:concat(\"http://www.example\",\".com/\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:substring-before(\"http://www.example.com/123\",\"123\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:substring-after(\"123http://www.example.com/\",\"123\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:string(\"http://www.examples.com/\"),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:upper-case(\"http://www.examples.com\"),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "HTTP://WWW.EXAMPLES.COM") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:lower-case(\"http://www.examples.com\"),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:substring(\"123http://www.examples.com\",4),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:string-join((\"http://www.examples\",\".com\"),''),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:concat(\"http://www.examples\",\".com\"),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:substring-before(\"http://www.example.com123\",\"123\"),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(fn:substring-after(\"123http://www.example.com\",\"123\"),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:resolve-uri(\"a.html\",\"b.html\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(resolve-uri(\"http://www.example.com/a.html\",\"b.html\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/a.html") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri(\"b.html\", \"http://www.example.com/a.html#fragment\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(resolve-uri(\"b.html\", \"http://www.example.com/a.html?foo=bar\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/b.html") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(resolve-uri(\"urn:isbn:01234567890X\", \"http://www.example.com/\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "urn:isbn:01234567890X") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         resolve-uri(codepoints-to-string(231)||\".html\", \"http://www.example.com/\"||codepoints-to-string(224)||\".html\")
         = (\"http://www.example.com/\"||codepoints-to-string(231)||\".html\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         resolve-uri(\"%C3%A0.html\", \"http://www.example.com/%C3%A7.html\")
         = \"http://www.example.com/%C3%A0.html\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-resolve-uri-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri(\"this doc.html\", \"http://www.example.com/that doc.html\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-resolve-uri-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "http://www.example.com/this doc.html") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FORG0002") of 
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
'K-ResolveURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ResolveURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ResolveURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri(\"http://www.example.com/\", \"relative/uri.ext\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ResolveURIFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ResolveURIFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri(\"relative/uri.ext\", \"http://www.example.com/\") eq xs:anyURI(\"http://www.example.com/relative/uri.ext\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ResolveURIFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ResolveURIFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri(\"\", \"http://www.example.com/\") eq xs:anyURI(\"http://www.example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ResolveURIFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ResolveURIFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(resolve-uri((), \"http://www.example.com/\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ResolveURIFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ResolveURIFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "resolve-uri(\"http://www.example.com/absolute\", \"http://www.example.com/\") eq xs:anyURI(\"http://www.example.com/absolute\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ResolveURIFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-resolve-uri-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        boolean(resolve-uri(string-join(for $x in 1 to 10 return \"blah\",\"z\"),\"http://localhost/\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-resolve-uri-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.