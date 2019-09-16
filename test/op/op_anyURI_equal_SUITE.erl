-module('op_anyURI_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['K-AnyURIEqual-1'/1]).
-export(['K-AnyURIEqual-2'/1]).
-export(['K-AnyURIEqual-3'/1]).
-export(['K-AnyURIEqual-4'/1]).
-export(['K-AnyURIEqual-5'/1]).
-export(['K-AnyURIEqual-6'/1]).
-export(['K-AnyURIEqual-7'/1]).
-export(['K-AnyURIEqual-8'/1]).
-export(['K-AnyURIEqual-9'/1]).
-export(['K-AnyURIEqual-10'/1]).
-export(['K2-AnyURIEqual-1'/1]).
-export(['K2-AnyURIEqual-2'/1]).
-export(['K2-AnyURIEqual-3'/1]).
-export(['K2-AnyURIEqual-4'/1]).
-export(['K2-AnyURIEqual-5'/1]).
-export(['K2-AnyURIEqual-6'/1]).
-export(['K2-AnyURIEqual-7'/1]).
-export(['K2-AnyURIEqual-8'/1]).
-export(['K2-AnyURIEqual-9'/1]).
-export(['K2-AnyURIEqual-10'/1]).
-export(['K2-AnyURIEqual-11'/1]).
-export(['K2-AnyURIEqual-12'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'K-AnyURIEqual-1', 
    'K-AnyURIEqual-2', 
    'K-AnyURIEqual-3', 
    'K-AnyURIEqual-4', 
    'K-AnyURIEqual-5', 
    'K-AnyURIEqual-6', 
    'K-AnyURIEqual-7', 
    'K-AnyURIEqual-8', 
    'K-AnyURIEqual-9', 
    'K-AnyURIEqual-10', 
    'K2-AnyURIEqual-1', 
    'K2-AnyURIEqual-2', 
    'K2-AnyURIEqual-3', 
    'K2-AnyURIEqual-4', 
    'K2-AnyURIEqual-5', 
    'K2-AnyURIEqual-6', 
    'K2-AnyURIEqual-7', 
    'K2-AnyURIEqual-8', 
    'K2-AnyURIEqual-9', 
    'K2-AnyURIEqual-10', 
    'K2-AnyURIEqual-11', 
    'K2-AnyURIEqual-12']}].

'K-AnyURIEqual-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") eq xs:anyURI(\"example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") ne xs:anyURI(\"example.com/No\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") eq xs:string(\"example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"example.com/\") eq xs:anyURI(\"example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") ne xs:string(\"example.com/No\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"example.com/\") ne xs:anyURI(\"example.com/No\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") eq xs:untypedAtomic(\"example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"example.com/\") eq xs:anyURI(\"example.com/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") ne xs:untypedAtomic(\"example.com/No\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AnyURIEqual-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"example.com/\") ne xs:anyURI(\"example.com/No\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AnyURIEqual-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"http://example.com/A\") eq xs:anyURI(\"http://example.com/A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/A\") eq xs:string(\"http://example.com/A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/A\") eq xs:anyURI(\"http://example.com/A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:string(\"http://example.com/A\") eq xs:anyURI(\"http://example.com/B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/A\") eq xs:string(\"http://example.com/B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/A\") eq xs:anyURI(\"http://example.com/B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/A\") ne xs:string(\"http://example.com/A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:string(\"http://example.com/A\") ne xs:anyURI(\"http://example.com/A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/A\") ne xs:anyURI(\"http://example.com/A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/A\") ne xs:string(\"http://example.com/B\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"http://example.com/A\") ne xs:anyURI(\"http://example.com/B\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURIEqual-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/A\") ne xs:anyURI(\"http://example.com/B\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AnyURIEqual-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.