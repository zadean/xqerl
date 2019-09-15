-module('fn_encode_for_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-encode-for-uri1args-1'/1]).
-export(['fn-encode-for-uri1args-2'/1]).
-export(['fn-encode-for-uri1args-3'/1]).
-export(['fn-encode-for-uri1args-4'/1]).
-export(['fn-encode-for-uri1args-5'/1]).
-export(['fn-encode-for-uri1args-6'/1]).
-export(['fn-encode-for-uri1args-7'/1]).
-export(['fn-encode-for-uri-1'/1]).
-export(['fn-encode-for-uri-2'/1]).
-export(['fn-encode-for-uri-3'/1]).
-export(['fn-encode-for-uri-4'/1]).
-export(['fn-encode-for-uri-5'/1]).
-export(['fn-encode-for-uri-6'/1]).
-export(['fn-encode-for-uri-7'/1]).
-export(['fn-encode-for-uri-8'/1]).
-export(['fn-encode-for-uri-9'/1]).
-export(['fn-encode-for-uri-10'/1]).
-export(['fn-encode-for-uri-11'/1]).
-export(['fn-encode-for-uri-12'/1]).
-export(['fn-encode-for-uri-13'/1]).
-export(['fn-encode-for-uri-14'/1]).
-export(['fn-encode-for-uri-15'/1]).
-export(['fn-encode-for-uri-16'/1]).
-export(['K-EncodeURIfunc-1'/1]).
-export(['K-EncodeURIfunc-2'/1]).
-export(['K-EncodeURIfunc-3'/1]).
-export(['K-EncodeURIfunc-4'/1]).
-export(['K-EncodeURIfunc-5'/1]).
-export(['K-EncodeURIfunc-6'/1]).
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
    'fn-encode-for-uri1args-1', 
    'fn-encode-for-uri1args-2', 
    'fn-encode-for-uri1args-3', 
    'fn-encode-for-uri1args-4', 
    'fn-encode-for-uri1args-5', 
    'fn-encode-for-uri1args-6', 
    'fn-encode-for-uri1args-7', 
    'fn-encode-for-uri-1', 
    'fn-encode-for-uri-2', 
    'fn-encode-for-uri-3', 
    'fn-encode-for-uri-4', 
    'fn-encode-for-uri-5', 
    'fn-encode-for-uri-6', 
    'fn-encode-for-uri-7', 
    'fn-encode-for-uri-8', 
    'fn-encode-for-uri-9', 
    'fn-encode-for-uri-10', 
    'fn-encode-for-uri-11', 
    'fn-encode-for-uri-12', 
    'fn-encode-for-uri-13', 
    'fn-encode-for-uri-14', 
    'fn-encode-for-uri-15', 
    'fn-encode-for-uri-16']}, 
   {group_1, [parallel], [
    'K-EncodeURIfunc-1', 
    'K-EncodeURIfunc-2', 
    'K-EncodeURIfunc-3', 
    'K-EncodeURIfunc-4', 
    'K-EncodeURIfunc-5', 
    'K-EncodeURIfunc-6']}].

'fn-encode-for-uri1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:encode-for-uri (\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http%3A%2F%2Fwww.example.com%2F00%2FWeather%2FCA%2FLos%2520Angeles%23ocean") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri(\"~bébé\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "~b%C3%A9b%C3%A9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri(\"100% organic\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100%25%20organic") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri1args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri('')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri1args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri1args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri(12)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-6.xq"), Qry1),
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
'fn-encode-for-uri1args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri('',())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri1args-7.xq"), Qry1),
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
'fn-encode-for-uri-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples#example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%23example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples-example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples-example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples_example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples_example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples.example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples.example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples!example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%21example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples~example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples~example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples*example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%2Aexample") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples'example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%27example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples(example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%28example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples)example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%29example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples0123456789example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples0123456789example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%20example") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"examples/example\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "examples%2Fexample") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"http:examples\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http%3Aexamples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-encode-for-uri-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:encode-for-uri(\"http%20examples\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-encode-for-uri-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http%2520examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EncodeURIfunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EncodeURIfunc-1.xq"), Qry1),
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
'K-EncodeURIfunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri(\"http://example.com/\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EncodeURIfunc-2.xq"), Qry1),
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
'K-EncodeURIfunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "encode-for-uri(()) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EncodeURIfunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EncodeURIfunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "concat(\"http://www.example.com/\", encode-for-uri(\"~bébé\")) eq \"http://www.example.com/~b%C3%A9b%C3%A9\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EncodeURIfunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EncodeURIfunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "concat(\"http://www.example.com/\", encode-for-uri(\"100% organic\")) eq \"http://www.example.com/100%25%20organic\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EncodeURIfunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EncodeURIfunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-space(encode-for-uri((\"some string\", current-time())[1] treat as xs:string))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EncodeURIfunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "some%20string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.