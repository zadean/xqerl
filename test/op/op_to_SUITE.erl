-module('op_to_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['rangeExpr-1'/1]).
-export(['rangeExpr-2'/1]).
-export(['rangeExpr-3'/1]).
-export(['rangeExpr-4'/1]).
-export(['rangeExpr-5'/1]).
-export(['rangeExpr-6'/1]).
-export(['rangeExpr-7'/1]).
-export(['rangeExpr-8'/1]).
-export(['rangeExpr-9'/1]).
-export(['rangeExpr-10'/1]).
-export(['rangeExpr-11'/1]).
-export(['rangeExpr-12'/1]).
-export(['rangeExpr-13'/1]).
-export(['rangeExpr-14'/1]).
-export(['rangeExpr-15'/1]).
-export(['rangeExpr-16'/1]).
-export(['rangeExpr-17'/1]).
-export(['rangeExpr-18'/1]).
-export(['rangeExpr-19'/1]).
-export(['rangeExpr-20'/1]).
-export(['rangeExpr-21'/1]).
-export(['rangeExpr-22'/1]).
-export(['rangeExpr-23'/1]).
-export(['rangeExpr-24'/1]).
-export(['rangeExpr-25'/1]).
-export(['rangeExpr-26'/1]).
-export(['rangeExpr-27'/1]).
-export(['rangeExpr-28'/1]).
-export(['rangeExpr-29'/1]).
-export(['rangeExpr-30'/1]).
-export(['rangeExpr-31'/1]).
-export(['rangeExpr-32'/1]).
-export(['rangeExpr-33'/1]).
-export(['rangeExpr-34'/1]).
-export(['rangeExpr-35'/1]).
-export(['rangeExpr-36'/1]).
-export(['rangeExpr-37'/1]).
-export(['rangeExpr-38'/1]).
-export(['rangeExpr-39'/1]).
-export(['rangeExpr-40'/1]).
-export(['rangeExpr-41'/1]).
-export(['rangeExpr-42'/1]).
-export(['K-RangeExpr-1'/1]).
-export(['K-RangeExpr-2'/1]).
-export(['K-RangeExpr-3'/1]).
-export(['K-RangeExpr-4'/1]).
-export(['K-RangeExpr-5'/1]).
-export(['K-RangeExpr-6'/1]).
-export(['K-RangeExpr-7'/1]).
-export(['K-RangeExpr-8'/1]).
-export(['K-RangeExpr-9'/1]).
-export(['K-RangeExpr-10'/1]).
-export(['K-RangeExpr-11'/1]).
-export(['K-RangeExpr-12'/1]).
-export(['K-RangeExpr-13'/1]).
-export(['K-RangeExpr-14'/1]).
-export(['K-RangeExpr-15'/1]).
-export(['K-RangeExpr-16'/1]).
-export(['K-RangeExpr-17'/1]).
-export(['K-RangeExpr-18'/1]).
-export(['K-RangeExpr-19'/1]).
-export(['K-RangeExpr-20'/1]).
-export(['K-RangeExpr-21'/1]).
-export(['K-RangeExpr-22'/1]).
-export(['K-RangeExpr-23'/1]).
-export(['K-RangeExpr-24'/1]).
-export(['K-RangeExpr-25'/1]).
-export(['K-RangeExpr-26'/1]).
-export(['K-RangeExpr-27'/1]).
-export(['K-RangeExpr-28'/1]).
-export(['K-RangeExpr-29'/1]).
-export(['K-RangeExpr-30'/1]).
-export(['K-RangeExpr-31'/1]).
-export(['K-RangeExpr-32'/1]).
-export(['K-RangeExpr-33'/1]).
-export(['K-RangeExpr-34'/1]).
-export(['K-RangeExpr-35'/1]).
-export(['K-RangeExpr-36'/1]).
-export(['K2-RangeExpr-1'/1]).
-export(['K2-RangeExpr-2'/1]).
-export(['K2-RangeExpr-3'/1]).
-export(['K2-RangeExpr-4'/1]).
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
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'rangeExpr-1', 
    'rangeExpr-2', 
    'rangeExpr-3', 
    'rangeExpr-4', 
    'rangeExpr-5', 
    'rangeExpr-6', 
    'rangeExpr-7', 
    'rangeExpr-8', 
    'rangeExpr-9', 
    'rangeExpr-10', 
    'rangeExpr-11', 
    'rangeExpr-12', 
    'rangeExpr-13', 
    'rangeExpr-14', 
    'rangeExpr-15', 
    'rangeExpr-16', 
    'rangeExpr-17', 
    'rangeExpr-18', 
    'rangeExpr-19', 
    'rangeExpr-20', 
    'rangeExpr-21', 
    'rangeExpr-22', 
    'rangeExpr-23']}, 
   {group_1, [parallel], [
    'rangeExpr-24', 
    'rangeExpr-25', 
    'rangeExpr-26', 
    'rangeExpr-27', 
    'rangeExpr-28', 
    'rangeExpr-29', 
    'rangeExpr-30', 
    'rangeExpr-31', 
    'rangeExpr-32', 
    'rangeExpr-33', 
    'rangeExpr-34', 
    'rangeExpr-35', 
    'rangeExpr-36', 
    'rangeExpr-37', 
    'rangeExpr-38', 
    'rangeExpr-39', 
    'rangeExpr-40', 
    'rangeExpr-41', 
    'rangeExpr-42', 
    'K-RangeExpr-1', 
    'K-RangeExpr-2', 
    'K-RangeExpr-3', 
    'K-RangeExpr-4', 
    'K-RangeExpr-5']}, 
   {group_2, [parallel], [
    'K-RangeExpr-6', 
    'K-RangeExpr-7', 
    'K-RangeExpr-8', 
    'K-RangeExpr-9', 
    'K-RangeExpr-10', 
    'K-RangeExpr-11', 
    'K-RangeExpr-12', 
    'K-RangeExpr-13', 
    'K-RangeExpr-14', 
    'K-RangeExpr-15', 
    'K-RangeExpr-16', 
    'K-RangeExpr-17', 
    'K-RangeExpr-18', 
    'K-RangeExpr-19', 
    'K-RangeExpr-20', 
    'K-RangeExpr-21', 
    'K-RangeExpr-22', 
    'K-RangeExpr-23', 
    'K-RangeExpr-24', 
    'K-RangeExpr-25', 
    'K-RangeExpr-26', 
    'K-RangeExpr-27', 
    'K-RangeExpr-28', 
    'K-RangeExpr-29']}, 
   {group_3, [parallel], [
    'K-RangeExpr-30', 
    'K-RangeExpr-31', 
    'K-RangeExpr-32', 
    'K-RangeExpr-33', 
    'K-RangeExpr-34', 
    'K-RangeExpr-35', 
    'K-RangeExpr-36', 
    'K2-RangeExpr-1', 
    'K2-RangeExpr-2', 
    'K2-RangeExpr-3', 
    'K2-RangeExpr-4']}].

'rangeExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10, 1 to 4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10 to 10", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(15 to 10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:reverse(10 to 15)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "15 14 13 12 11 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((1, 2 to ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((1+2) to (2+2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(-4,-3 to 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-4 -3 -2 -1 0 1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(-4, -3 to -1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-4 -3 -2 -1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(1) to 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to xs:integer(5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(1) to xs:integer(5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:min((1,2)) to 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:max((1,2)) to 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(fn:min((1,2)) to fn:max((6,7)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:min((1 to 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((1 to 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((1 to 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((1 to 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((3*2) to 10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to (3*2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((1*2) to (3*2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3 4 5 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((3 - 2) to 10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to (3 - 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((2 - 1) to (7 - 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((6 idiv 2) to 10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to (10 idiv 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((5 idiv 5) to (8 idiv 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "18446744073709551616 to 18446744073709551620", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "18446744073709551616 18446744073709551617 18446744073709551618 18446744073709551619 18446744073709551620") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(18446744073709551616 to 18446744073709551620)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(28446744073709551616 to 28446744073709551620)!position()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((28446744073709551616 to 28446744073709551620)!last())[1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "reverse(28446744073709551616 to 28446744073709551620)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "28446744073709551620 28446744073709551619 28446744073709551618 28446744073709551617 28446744073709551616") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "11 to 11 to 12", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"it is \" || 10 to 1 || \"already\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"it is already\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3+1 to 4+1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-date(current-date()) = 1 to 5000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-date(current-date()) = 5000 to 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-date(current-date()) to 4000 = 1500 to 2500", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1000 = 1 to year-from-date(current-date())[. gt 3000]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 to 5000 = year-from-date(current-date())[. gt 3000]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 5000)[position() = 2001 to 2020]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2001 to 2020") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rangeExpr-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 5000)[position() = 2000 to round(year-from-date(current-date()), -3)]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "rangeExpr-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 to 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(30 to 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(0 to -3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(1 to ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(() to 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(-1 to -3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(1 to 4) eq 4", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(0 to 4) eq 5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(-5 to -0) eq 6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((10, 1 to 4)) eq 5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(-3 to -1, 1, 1) eq -3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(-3 to -1, 3, 1) eq -1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(reverse(4 to 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(reverse(1 to 3), 1, 1) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(reverse(1 to 3), 3, 1) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(reverse(1 to 4), 2, 1) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(reverse(1 to 4), 3, 1) eq 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(reverse(-4 to -1), 2, 1) eq -2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((-1, -2, -3, -4), reverse(-4 to -1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((), reverse(0 to -5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((0, -1, -2, -3, -4, -5), reverse(-5 to 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(reverse(-5 to -2)) eq 4", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(reverse(-5 to -0)) eq 6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(reverse(1 to 4)) eq 4", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(1 to 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(0 to -5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(-4 to -5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(reverse(1 to 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(reverse(0 to -5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(reverse(-4 to -5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(remove((2.e0, 4), 1) treat as xs:integer to 4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(4 to remove((2e0, 4), 1) treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-RangeExpr-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1.1 to 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-33.xq"), Qry1),
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
'K-RangeExpr-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 to 1.1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-34.xq"), Qry1),
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
'K-RangeExpr-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1.1 to 3.3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-35.xq"), Qry1),
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
'K-RangeExpr-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 + 1.1 to 5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-RangeExpr-36.xq"), Qry1),
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
'K2-RangeExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1e3 to 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-RangeExpr-1.xq"), Qry1),
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
'K2-RangeExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 to 1e3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-RangeExpr-2.xq"), Qry1),
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
'K2-RangeExpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 3 return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-RangeExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-RangeExpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 to <value>5</value>, 5 to <value>5</value>, <value>1</value> to 5, <value>1</value> to <value>5</value>, let $i := <e>5</e> return $i to $i, count(5 to 10), count(1000 to 2000), count(<e>5</e> to 10), count(3 to <e>10</e>), count(<e>3</e> to <e>10</e>), count(<e>5</e> to 10), count(3 to <e>10</e>), count(<e>3</e> to <e>10</e>), count(4294967295 to 4294967298)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-RangeExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 5 1 2 3 4 5 1 2 3 4 5 5 6 1001 6 8 8 6 8 8 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.