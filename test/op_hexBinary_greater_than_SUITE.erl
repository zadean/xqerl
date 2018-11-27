-module('op_hexBinary_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['hexBinary-gt-1'/1]).
-export(['hexBinary-gt-2'/1]).
-export(['hexBinary-gt-3'/1]).
-export(['hexBinary-gt-4'/1]).
-export(['hexBinary-gt-5'/1]).
-export(['hexBinary-gt-6'/1]).
-export(['hexBinary-gt-7'/1]).
-export(['hexBinary-gt-8'/1]).
-export(['hexBinary-gt-9'/1]).
-export(['hexBinary-gt-10'/1]).
-export(['hexBinary-gt-11'/1]).
-export(['hexBinary-gt-12'/1]).
-export(['hexBinary-gt-13'/1]).
-export(['hexBinary-gt-14'/1]).
-export(['hexBinary-gt-15'/1]).
-export(['hexBinary-gt-16'/1]).
-export(['hexBinary-gt-17'/1]).
-export(['hexBinary-gt-18'/1]).
-export(['hexBinary-gt-19'/1]).
-export(['hexBinary-gt-20'/1]).
-export(['hexBinary-gt-21'/1]).
-export(['hexBinary-gt-22'/1]).
-export(['hexBinary-gt-23'/1]).
-export(['hexBinary-gt-24'/1]).
-export(['hexBinary-gt-25'/1]).
-export(['hexBinary-gt-26'/1]).
-export(['hexBinary-ge-27'/1]).
-export(['hexBinary-ge-28'/1]).
-export(['hexBinary-ge-29'/1]).
-export(['hexBinary-gt-30'/1]).
-export(['hexBinary-gt-31'/1]).
-export(['hexBinary-gt-32'/1]).
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
'hexBinary-gt-1', 
'hexBinary-gt-2', 
'hexBinary-gt-3', 
'hexBinary-gt-4', 
'hexBinary-gt-5', 
'hexBinary-gt-6', 
'hexBinary-gt-7', 
'hexBinary-gt-8', 
'hexBinary-gt-9', 
'hexBinary-gt-10', 
'hexBinary-gt-11', 
'hexBinary-gt-12', 
'hexBinary-gt-13', 
'hexBinary-gt-14', 
'hexBinary-gt-15', 
'hexBinary-gt-16', 
'hexBinary-gt-17', 
'hexBinary-gt-18', 
'hexBinary-gt-19', 
'hexBinary-gt-20', 
'hexBinary-gt-21', 
'hexBinary-gt-22', 
'hexBinary-gt-23', 
'hexBinary-gt-24', 
'hexBinary-gt-25', 
'hexBinary-gt-26', 
'hexBinary-ge-27', 
'hexBinary-ge-28', 
'hexBinary-ge-29', 
'hexBinary-gt-30', 
'hexBinary-gt-31', 
'hexBinary-gt-32'
].

'hexBinary-gt-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") gt  xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"6e7875626264756366\") gt  xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") gt  xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") > xs:hexBinary(\"6e7875626264756366\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") > xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") > xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"6e7875626264756366\") > xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") ge  xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") ge  xs:hexBinary(\"6e7875626264756366\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") ge  xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") >= xs:hexBinary(\"767479716c6a647663\")) and (xs:hexBinary(\"786174616d61616772\") gt  xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") >= xs:hexBinary(\"767479716c6a647663\")) or (xs:hexBinary(\"786174616d61616772\") gt  xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") >= xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:hexBinary('aa'), xs:hexBinary('bb'), xs:hexBinary('88')))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary('bb')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $i in (xs:hexBinary('aa'), xs:hexBinary('bb'), xs:hexBinary(''), xs:hexBinary('88'), xs:hexBinary('bbbb'))
         order by $i descending
         return string($i)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'BBBB', 'BB', 'AA', '88', ''") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") gt  xs:hexBinary(\"ff\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") ge  xs:hexBinary(\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") gt  xs:hexBinary(\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(xs:base64Binary(xs:hexBinary(\"03\"))) gt  xs:hexBinary(\"03\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(xs:base64Binary(xs:hexBinary(\"14\"))) ge  xs:hexBinary(\"13\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") gt  xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") gt  xs:hexBinary(\"01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"00\") gt  xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"0001\") > xs:hexBinary(\"0002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"\") gt  xs:hexBinary(\"0002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"\" gt  xs:hexBinary(\"0002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-ge-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") ge  xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-ge-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-ge-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") ge  xs:hexBinary(\"01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-ge-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-ge-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"00\") gt  xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-ge-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         local:hexBinary-value(true()) gt  local:hexBinary-value(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         not(local:hexBinary-value(true()) gt  local:hexBinary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-gt-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         not(local:hexBinary-value(true()) ge  local:hexBinary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "hexBinary-gt-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.