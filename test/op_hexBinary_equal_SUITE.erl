-module('op_hexBinary_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['op-hexBinary-equal2args-1'/1]).
-export(['op-hexBinary-equal2args-2'/1]).
-export(['op-hexBinary-equal2args-3'/1]).
-export(['op-hexBinary-equal2args-4'/1]).
-export(['op-hexBinary-equal2args-5'/1]).
-export(['op-hexBinary-equal2args-6'/1]).
-export(['op-hexBinary-equal2args-7'/1]).
-export(['op-hexBinary-equal2args-8'/1]).
-export(['op-hexBinary-equal2args-9'/1]).
-export(['op-hexBinary-equal2args-10'/1]).
-export(['hexBinary-1'/1]).
-export(['hexBinary-2'/1]).
-export(['hexBinary-3'/1]).
-export(['hexBinary-4'/1]).
-export(['hexBinary-5'/1]).
-export(['hexBinary-6'/1]).
-export(['hexBinary-7'/1]).
-export(['hexBinary-8'/1]).
-export(['hexBinary-9'/1]).
-export(['hexBinary-10'/1]).
-export(['hexBinary-11'/1]).
-export(['hexBinary-12'/1]).
-export(['hexBinary-13'/1]).
-export(['hexBinary-14'/1]).
-export(['K-HexBinaryEQ-1'/1]).
-export(['K-HexBinaryEQ-2'/1]).
-export(['K-HexBinaryEQ-3'/1]).
-export(['K-HexBinaryEQ-4'/1]).
-export(['K-HexBinaryEQ-5'/1]).
-export(['K-HexBinaryEQ-6'/1]).
-export(['K-HexBinaryEQ-7'/1]).
-export(['K-HexBinaryEQ-8'/1]).
-export(['cbcl-hexBinary-equal-001'/1]).
-export(['cbcl-hexBinary-equal-002'/1]).
-export(['cbcl-hexBinary-equal-003'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'op-hexBinary-equal2args-1', 
'op-hexBinary-equal2args-2', 
'op-hexBinary-equal2args-3', 
'op-hexBinary-equal2args-4', 
'op-hexBinary-equal2args-5', 
'op-hexBinary-equal2args-6', 
'op-hexBinary-equal2args-7', 
'op-hexBinary-equal2args-8', 
'op-hexBinary-equal2args-9', 
'op-hexBinary-equal2args-10', 
'hexBinary-1', 
'hexBinary-2', 
'hexBinary-3', 
'hexBinary-4', 
'hexBinary-5', 
'hexBinary-6', 
'hexBinary-7', 
'hexBinary-8', 
'hexBinary-9', 
'hexBinary-10', 
'hexBinary-11', 
'hexBinary-12', 
'hexBinary-13', 
'hexBinary-14', 
'K-HexBinaryEQ-1', 
'K-HexBinaryEQ-2', 
'K-HexBinaryEQ-3', 
'K-HexBinaryEQ-4', 
'K-HexBinaryEQ-5', 
'K-HexBinaryEQ-6', 
'K-HexBinaryEQ-7', 
'K-HexBinaryEQ-8', 
'cbcl-hexBinary-equal-001', 
'cbcl-hexBinary-equal-002', 
'cbcl-hexBinary-equal-003'
].

'op-hexBinary-equal2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") eq xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"6e7875626264756366\") eq xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") eq xs:hexBinary(\"6e7875626264756366\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") eq xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") ne xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"6e7875626264756366\") ne xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") ne xs:hexBinary(\"6e7875626264756366\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-hexBinary-equal2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") ne xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-hexBinary-equal2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")) and (xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")) or (xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"786174616d61616772\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")) and fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")) or fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") eq xs:hexBinary(\"767479716c6a647663\")) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")) and (xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")) or (xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"786174616d61616772\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")) and fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")) or fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") ne xs:hexBinary(\"767479716c6a647663\")) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") eq xs:hexBinary(\"ff\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") ne xs:hexBinary(\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:hexBinary(\"FF\") eq xs:hexBinary(\"aa\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(xs:base64Binary(xs:hexBinary(\"03\"))) eq xs:hexBinary(\"03\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(xs:base64Binary(xs:hexBinary(\"03\"))) ne xs:hexBinary(\"13\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") eq xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") eq xs:hexBinary(\"01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HexBinaryEQ-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"00\") eq xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-HexBinaryEQ-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hexBinary-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         local:hexBinary-value(true()) eq local:hexBinary-value(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-hexBinary-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hexBinary-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         not(local:hexBinary-value(true()) eq local:hexBinary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-hexBinary-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hexBinary-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         not(local:hexBinary-value(true()) ne local:hexBinary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-hexBinary-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.