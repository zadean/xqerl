-module('fn_escape_html_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-escape-html-uri1args-1'/1]).
-export(['fn-escape-html-uri1args-2'/1]).
-export(['fn-escape-html-uri1args-3'/1]).
-export(['fn-escape-html-uri1args-4'/1]).
-export(['fn-escape-html-uri1args-5'/1]).
-export(['fn-escape-html-uri1args-6'/1]).
-export(['fn-escape-html-uri-1'/1]).
-export(['fn-escape-html-uri-2'/1]).
-export(['fn-escape-html-uri-3'/1]).
-export(['fn-escape-html-uri-4'/1]).
-export(['fn-escape-html-uri-5'/1]).
-export(['fn-escape-html-uri-6'/1]).
-export(['fn-escape-html-uri-7'/1]).
-export(['fn-escape-html-uri-8'/1]).
-export(['fn-escape-html-uri-9'/1]).
-export(['fn-escape-html-uri-10'/1]).
-export(['fn-escape-html-uri-11'/1]).
-export(['fn-escape-html-uri-12'/1]).
-export(['fn-escape-html-uri-13'/1]).
-export(['fn-escape-html-uri-14'/1]).
-export(['fn-escape-html-uri-15'/1]).
-export(['fn-escape-html-uri-16'/1]).
-export(['fn-escape-html-uri-17'/1]).
-export(['fn-escape-html-uri-18'/1]).
-export(['fn-escape-html-uri-19'/1]).
-export(['fn-escape-html-uri-20'/1]).
-export(['fn-escape-html-uri-21'/1]).
-export(['K-EscapeHTMLURIFunc-1'/1]).
-export(['K-EscapeHTMLURIFunc-2'/1]).
-export(['K-EscapeHTMLURIFunc-3'/1]).
-export(['K-EscapeHTMLURIFunc-4'/1]).
-export(['K-EscapeHTMLURIFunc-5'/1]).
-export(['K-EscapeHTMLURIFunc-6'/1]).
-export(['cbcl-escape-html-uri-001'/1]).
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
'fn-escape-html-uri1args-1', 
'fn-escape-html-uri1args-2', 
'fn-escape-html-uri1args-3', 
'fn-escape-html-uri1args-4', 
'fn-escape-html-uri1args-5', 
'fn-escape-html-uri1args-6', 
'fn-escape-html-uri-1', 
'fn-escape-html-uri-2', 
'fn-escape-html-uri-3', 
'fn-escape-html-uri-4', 
'fn-escape-html-uri-5', 
'fn-escape-html-uri-6', 
'fn-escape-html-uri-7', 
'fn-escape-html-uri-8', 
'fn-escape-html-uri-9', 
'fn-escape-html-uri-10', 
'fn-escape-html-uri-11', 
'fn-escape-html-uri-12', 
'fn-escape-html-uri-13', 
'fn-escape-html-uri-14', 
'fn-escape-html-uri-15', 
'fn-escape-html-uri-16', 
'fn-escape-html-uri-17', 
'fn-escape-html-uri-18', 
'fn-escape-html-uri-19', 
'fn-escape-html-uri-20', 
'fn-escape-html-uri-21', 
'K-EscapeHTMLURIFunc-1', 
'K-EscapeHTMLURIFunc-2', 
'K-EscapeHTMLURIFunc-3', 
'K-EscapeHTMLURIFunc-4', 
'K-EscapeHTMLURIFunc-5', 
'K-EscapeHTMLURIFunc-6', 
'cbcl-escape-html-uri-001'
].

'fn-escape-html-uri1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/00/Weather/CA/Los Angeles#ocean") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~bébé');\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri('')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri1args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri1args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri1args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(12)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri1args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri1args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri('',())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri1args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"abcdedfghijklmnopqrstuvwxyz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcdedfghijklmnopqrstuvwxyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"ABCDEFGHIJKLMNOPQRSTUVWXYZ\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"a0123456789\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a0123456789") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example!example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example!example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example#example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example#example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example$example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example$example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example'example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example'example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example(example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example(example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example)example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example)example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example*example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example*example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example+example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example+example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example,example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example,example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example-example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example-example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example.example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example.example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example/example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example/example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example;example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example;example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example:example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example:example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example@example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example@example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"exampleé€example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example%C3%A9%E2%82%ACexample") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-escape-html-uri-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(\"example€example\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-escape-html-uri-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example%E2%82%ACexample") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EscapeHTMLURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EscapeHTMLURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EscapeHTMLURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(\"http://example.com/\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EscapeHTMLURIFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EscapeHTMLURIFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(()) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EscapeHTMLURIFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EscapeHTMLURIFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\") eq \"http://www.example.com/00/Weather/CA/Los Angeles#ocean\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EscapeHTMLURIFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EscapeHTMLURIFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "escape-html-uri(\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~bébé');\") eq \"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EscapeHTMLURIFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EscapeHTMLURIFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-space(iri-to-uri((\"example.com\", current-time())[1] treat as xs:string))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EscapeHTMLURIFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-escape-html-uri-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:escape-html-uri(codepoints-to-string((9, 65, 128)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-escape-html-uri-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "%09A%C2%80") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.