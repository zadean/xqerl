-module('fn_static_base_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-static-base-1'/1]).
-export(['fn-static-base-2'/1]).
-export(['fn-static-base-3'/1]).
-export(['fn-static-base-4'/1]).
-export(['fn-static-base-5'/1]).
-export(['fn-static-base-6'/1]).
-export(['fn-static-base-7'/1]).
-export(['fn-static-base-8'/1]).
-export(['fn-static-base-9'/1]).
-export(['fn-static-base-10'/1]).
-export(['fn-static-base-11'/1]).
-export(['fn-static-base-12'/1]).
-export(['fn-static-base-13'/1]).
-export(['fn-static-base-14'/1]).
-export(['fn-static-base-15'/1]).
-export(['K-StaticBaseURIFunc-1'/1]).
-export(['K-StaticBaseURIFunc-2'/1]).
-export(['K-StaticBaseURIFunc-3'/1]).
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
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-static-base-1', 
    'fn-static-base-2', 
    'fn-static-base-3', 
    'fn-static-base-4', 
    'fn-static-base-5', 
    'fn-static-base-6', 
    'fn-static-base-7', 
    'fn-static-base-8', 
    'fn-static-base-9', 
    'fn-static-base-10', 
    'fn-static-base-11', 
    'fn-static-base-12', 
    'fn-static-base-13', 
    'fn-static-base-14', 
    'fn-static-base-15', 
    'K-StaticBaseURIFunc-1', 
    'K-StaticBaseURIFunc-2', 
    'K-StaticBaseURIFunc-3']}].

'fn-static-base-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:static-base-uri(\"A argument\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"ftp://ftp.is.co.za/rfc/somefile.txt\"; fn:string(fn:static-base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ftp://ftp.is.co.za/rfc/somefile.txt") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"mailto:John.Doe@example.com\"; fn:string(fn:static-base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "mailto:John.Doe@example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"news:comp.infosystems.www.servers.unix\"; fn:string(fn:static-base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "news:comp.infosystems.www.servers.unix") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"telnet://192.0.2.16:80/\"; fn:string(fn:static-base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "telnet://192.0.2.16:80/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"tel:+1-816-555-1212\"; fn:string(fn:static-base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "tel:+1-816-555-1212") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"urn:oasis:names:specification:docbook:dtd:xml:4.1.2\"; fn:string(fn:static-base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "urn:oasis:names:specification:docbook:dtd:xml:4.1.2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:upper-case(fn:string(fn:static-base-uri()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "HTTP://WWW.EXAMPLE.COM") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:lower-case(fn:string(fn:static-base-uri()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:concat(fn:string(fn:static-base-uri()),\"another string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.comanother string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:string-join((fn:string(fn:static-base-uri()),\"another string\"),\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.comanother string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:string-length(fn:string(fn:static-base-uri()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "22") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:substring-before(fn:string(fn:static-base-uri()),\":\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:substring-after(fn:string(fn:static-base-uri()),\":\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-static-base-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "//www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-static-base-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"DIS * static-base-uri set at compile time"}. 
'K-StaticBaseURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "static-base-uri(.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StaticBaseURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StaticBaseURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "static-base-uri(1, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StaticBaseURIFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StaticBaseURIFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if(static-base-uri()) then true() else true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StaticBaseURIFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.