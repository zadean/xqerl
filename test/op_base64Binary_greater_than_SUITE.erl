-module('op_base64Binary_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['base64Binary-gt-1'/1]).
-export(['base64Binary-gt-2'/1]).
-export(['base64Binary-gt-3'/1]).
-export(['base64Binary-gt-4'/1]).
-export(['base64Binary-gt-5'/1]).
-export(['base64Binary-gt-6'/1]).
-export(['base64Binary-gt-7'/1]).
-export(['base64Binary-gt-8'/1]).
-export(['base64Binary-gt-9'/1]).
-export(['base64Binary-gt-10'/1]).
-export(['base64Binary-gt-11'/1]).
-export(['base64Binary-gt-12'/1]).
-export(['base64Binary-gt-13'/1]).
-export(['base64Binary-gt-14'/1]).
-export(['base64Binary-gt-15'/1]).
-export(['base64Binary-gt-16'/1]).
-export(['base64Binary-gt-17'/1]).
-export(['base64Binary-gt-18'/1]).
-export(['base64Binary-gt-19'/1]).
-export(['base64Binary-gt-20'/1]).
-export(['base64Binary-gt-21'/1]).
-export(['base64Binary-gt-22'/1]).
-export(['base64Binary-gt-23'/1]).
-export(['base64Binary-gt-24'/1]).
-export(['base64Binary-gt-25'/1]).
-export(['base64Binary-gt-26'/1]).
-export(['base64Binary-ge-27'/1]).
-export(['base64Binary-ge-28'/1]).
-export(['base64Binary-ge-29'/1]).
-export(['base64Binary-gt-30'/1]).
-export(['base64Binary-gt-31'/1]).
-export(['base64Binary-gt-32'/1]).
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
'base64Binary-gt-1', 
'base64Binary-gt-2', 
'base64Binary-gt-3', 
'base64Binary-gt-4', 
'base64Binary-gt-5', 
'base64Binary-gt-6', 
'base64Binary-gt-7', 
'base64Binary-gt-8', 
'base64Binary-gt-9', 
'base64Binary-gt-10', 
'base64Binary-gt-11', 
'base64Binary-gt-12', 
'base64Binary-gt-13', 
'base64Binary-gt-14', 
'base64Binary-gt-15', 
'base64Binary-gt-16', 
'base64Binary-gt-17', 
'base64Binary-gt-18', 
'base64Binary-gt-19', 
'base64Binary-gt-20', 
'base64Binary-gt-21', 
'base64Binary-gt-22', 
'base64Binary-gt-23', 
'base64Binary-gt-24', 
'base64Binary-gt-25', 
'base64Binary-gt-26', 
'base64Binary-ge-27', 
'base64Binary-ge-28', 
'base64Binary-ge-29', 
'base64Binary-gt-30', 
'base64Binary-gt-31', 
'base64Binary-gt-32'
].

'base64Binary-gt-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") gt xs:base64Binary(\"dnR5cWxqZHZj\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"bnh1YmJkdWNm\") gt xs:base64Binary(\"dnR5cWxqZHZj\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"eGF0YW1hYWdy\") gt xs:base64Binary(\"dnR5cWxqZHZj\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") > xs:base64Binary(\"bnh1YmJkdWNm\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") > xs:base64Binary(\"eGF0YW1hYWdy\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") > xs:base64Binary(\"dnR5cWxqZHZj\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"bnh1YmJkdWNm\") > xs:base64Binary(\"dnR5cWxqZHZj\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"eGF0YW1hYWdy\") ge  xs:base64Binary(\"dnR5cWxqZHZj\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") ge  xs:base64Binary(\"bnh1YmJkdWNm\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") ge  xs:base64Binary(\"eGF0YW1hYWdy\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:base64Binary(\"eGF0YW1hYWdy\") >= xs:base64Binary(\"dnR5cWxqZHZj\")) and (xs:base64Binary(\"eGF0YW1hYWdy\") gt xs:base64Binary(\"dnR5cWxqZHZj\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:base64Binary(\"eGF0YW1hYWdy\") >= xs:base64Binary(\"dnR5cWxqZHZj\")) or (xs:base64Binary(\"eGF0YW1hYWdy\") gt xs:base64Binary(\"dnR5cWxqZHZj\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"eGF0YW1hYWdy\") >= xs:base64Binary(\"eGF0YW1hYWdy\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:base64Binary('qg=='), xs:base64Binary('uw=='), xs:base64Binary('iA==')))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:base64Binary('uw==')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $i in (xs:base64Binary('qg=='), xs:base64Binary('uw=='), xs:base64Binary(''), xs:base64Binary('iA=='), xs:base64Binary('u7s='))
         order by $i descending
         return string($i)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'u7s=', 'uw==', 'qg==', 'iA==', ''") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"/w==\") gt xs:base64Binary(\"/w==\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"/w==\") ge  xs:base64Binary(\"qg==\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"/w==\") gt xs:base64Binary(\"qg==\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(xs:base64Binary(xs:base64Binary(\"Aw==\"))) gt xs:base64Binary(\"Aw==\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(xs:base64Binary(xs:base64Binary(\"AAE=\"))) ge  xs:base64Binary(\"AAI=\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"\") gt xs:base64Binary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"\") gt xs:base64Binary(\"AAI=\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"AA==\") gt xs:base64Binary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"AAE=\") > xs:base64Binary(\"AAI=\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:hexBinary(\"00\") gt xs:base64Binary(\"AAI=\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"\" gt xs:base64Binary(\"AAI=\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-ge-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"\") ge  xs:base64Binary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-ge-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-ge-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"\") ge  xs:base64Binary(\"AAE=\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-ge-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-ge-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:base64Binary(\"AA==\") gt xs:base64Binary(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-ge-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { 
            if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') 
         }; 
         local:base64Binary-value(true()) gt local:base64Binary-value(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { 
            if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') 
         }; 
         not(local:base64Binary-value(true()) gt local:base64Binary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'base64Binary-gt-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { 
            if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') 
         }; 
         not(local:base64Binary-value(true()) ge  local:base64Binary-value(false()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "base64Binary-gt-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.