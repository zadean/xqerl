-module('op_anyURI_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['K2-AnyURILtGt-1'/1]).
-export(['K2-AnyURILtGt-2'/1]).
-export(['K2-AnyURILtGt-3'/1]).
-export(['K2-AnyURILtGt-4'/1]).
-export(['K2-AnyURILtGt-5'/1]).
-export(['K2-AnyURILtGt-6'/1]).
-export(['K2-AnyURILtGt-7'/1]).
-export(['K2-AnyURILtGt-8'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'K2-AnyURILtGt-1', 
'K2-AnyURILtGt-2', 
'K2-AnyURILtGt-3', 
'K2-AnyURILtGt-4', 
'K2-AnyURILtGt-5', 
'K2-AnyURILtGt-6', 
'K2-AnyURILtGt-7', 
'K2-AnyURILtGt-8'
].

'K2-AnyURILtGt-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/A\") lt xs:anyURI(\"http://example.com/B\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/B\") lt xs:anyURI(\"http://example.com/A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"http://example.com/A\") lt xs:anyURI(\"http://example.com/B\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/B\") lt xs:string(\"http://example.com/A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://example.com/A\") gt xs:anyURI(\"http://example.com/B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:string(\"http://example.com/A\") gt xs:anyURI(\"http://example.com/B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/B\") gt xs:anyURI(\"http://example.com/A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AnyURILtGt-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://example.com/B\") gt xs:string(\"http://example.com/A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-AnyURILtGt-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.