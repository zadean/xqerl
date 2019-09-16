-module('op_hexBinary_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['hexBinary-lt-1'/1]).
-export(['hexBinary-lt-2'/1]).
-export(['hexBinary-lt-3'/1]).
-export(['hexBinary-lt-4'/1]).
-export(['hexBinary-lt-5'/1]).
-export(['hexBinary-lt-6'/1]).
-export(['hexBinary-lt-7'/1]).
-export(['hexBinary-lt-8'/1]).
-export(['hexBinary-lt-9'/1]).
-export(['hexBinary-lt-10'/1]).
-export(['hexBinary-lt-11'/1]).
-export(['hexBinary-lt-12'/1]).
-export(['hexBinary-lt-13'/1]).
-export(['hexBinary-lt-14'/1]).
-export(['hexBinary-lt-15'/1]).
-export(['hexBinary-lt-16'/1]).
-export(['hexBinary-lt-17'/1]).
-export(['hexBinary-lt-18'/1]).
-export(['hexBinary-lt-19'/1]).
-export(['hexBinary-lt-20'/1]).
-export(['hexBinary-lt-21'/1]).
-export(['hexBinary-lt-22'/1]).
-export(['hexBinary-lt-23'/1]).
-export(['hexBinary-lt-24'/1]).
-export(['hexBinary-lt-25'/1]).
-export(['hexBinary-lt-26'/1]).
-export(['hexBinary-le-27'/1]).
-export(['hexBinary-le-28'/1]).
-export(['hexBinary-le-29'/1]).
-export(['hexBinary-lt-30'/1]).
-export(['hexBinary-lt-31'/1]).
-export(['hexBinary-lt-32'/1]).
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
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'hexBinary-lt-1', 
    'hexBinary-lt-2', 
    'hexBinary-lt-3', 
    'hexBinary-lt-4', 
    'hexBinary-lt-5', 
    'hexBinary-lt-6', 
    'hexBinary-lt-7', 
    'hexBinary-lt-8', 
    'hexBinary-lt-9', 
    'hexBinary-lt-10', 
    'hexBinary-lt-11', 
    'hexBinary-lt-12', 
    'hexBinary-lt-13', 
    'hexBinary-lt-14', 
    'hexBinary-lt-15', 
    'hexBinary-lt-16', 
    'hexBinary-lt-17', 
    'hexBinary-lt-18', 
    'hexBinary-lt-19', 
    'hexBinary-lt-20', 
    'hexBinary-lt-21', 
    'hexBinary-lt-22', 
    'hexBinary-lt-23']}, 
   {group_1, [parallel], [
    'hexBinary-lt-24', 
    'hexBinary-lt-25', 
    'hexBinary-lt-26', 
    'hexBinary-le-27', 
    'hexBinary-le-28', 
    'hexBinary-le-29', 
    'hexBinary-lt-30', 
    'hexBinary-lt-31', 
    'hexBinary-lt-32']}].

'hexBinary-lt-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") lt xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"6e7875626264756366\") lt xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") lt xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") < xs:hexBinary(\"6e7875626264756366\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") < xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") < xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"6e7875626264756366\") < xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") le xs:hexBinary(\"767479716c6a647663\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") le xs:hexBinary(\"6e7875626264756366\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"767479716c6a647663\") le xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") <= xs:hexBinary(\"767479716c6a647663\")) and (xs:hexBinary(\"786174616d61616772\") lt xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:hexBinary(\"786174616d61616772\") <= xs:hexBinary(\"767479716c6a647663\")) or (xs:hexBinary(\"786174616d61616772\") lt xs:hexBinary(\"767479716c6a647663\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"786174616d61616772\") <= xs:hexBinary(\"786174616d61616772\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "min((xs:hexBinary('aa'), xs:hexBinary('bb'), xs:hexBinary('88')))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary('88')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $i in (xs:hexBinary('aa'), xs:hexBinary('bb'), xs:hexBinary(''), xs:hexBinary('88'), xs:hexBinary('bbbb'))
         order by $i
         return string($i)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'', '88', 'AA', 'BB', 'BBBB'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") lt xs:hexBinary(\"ff\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") le xs:hexBinary(\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"FF\") lt xs:hexBinary(\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(xs:base64Binary(xs:hexBinary(\"03\"))) lt xs:hexBinary(\"03\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(xs:base64Binary(xs:hexBinary(\"03\"))) le xs:hexBinary(\"13\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") lt xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") lt xs:hexBinary(\"01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"00\") lt xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"0001\") < xs:hexBinary(\"0002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"\") lt xs:hexBinary(\"0002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-25.xq"), Qry1),
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
'hexBinary-lt-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"\" lt xs:hexBinary(\"0002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-26.xq"), Qry1),
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
'hexBinary-le-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") le xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-le-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-le-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"\") le xs:hexBinary(\"01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-le-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-le-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"00\") lt xs:hexBinary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-le-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         local:hexBinary-value(true()) lt local:hexBinary-value(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         not(local:hexBinary-value(true()) lt local:hexBinary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'hexBinary-lt-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:hexBinary-value($arg as xs:boolean) as xs:hexBinary { 
            if ($arg) then xs:hexBinary('68656c6c6f') else xs:hexBinary('676f6f64627965') 
         }; 
         not(local:hexBinary-value(true()) le local:hexBinary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hexBinary-lt-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.