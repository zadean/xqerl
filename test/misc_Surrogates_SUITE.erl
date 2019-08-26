-module('misc_Surrogates_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['surrogates01'/1]).
-export(['surrogates02'/1]).
-export(['surrogates03'/1]).
-export(['surrogates04'/1]).
-export(['surrogates05'/1]).
-export(['surrogates06'/1]).
-export(['surrogates07'/1]).
-export(['surrogates08'/1]).
-export(['surrogates09'/1]).
-export(['surrogates10'/1]).
-export(['surrogates11'/1]).
-export(['surrogates12'/1]).
-export(['surrogates13'/1]).
-export(['surrogates14'/1]).
-export(['surrogates15'/1]).
-export(['surrogates16'/1]).
-export(['surrogates01a'/1]).
-export(['surrogates02a'/1]).
-export(['surrogates03a'/1]).
-export(['surrogates04a'/1]).
-export(['surrogates05a'/1]).
-export(['surrogates06a'/1]).
-export(['surrogates07a'/1]).
-export(['surrogates08a'/1]).
-export(['surrogates09a'/1]).
-export(['surrogates10a'/1]).
-export(['surrogates11a'/1]).
-export(['surrogates12a'/1]).
-export(['surrogates13a'/1]).
-export(['surrogates14a'/1]).
-export(['surrogates15a'/1]).
-export(['surrogates16a'/1]).
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
   __BaseDir = filename:join(TD, "misc"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'surrogates01', 
    'surrogates02', 
    'surrogates03', 
    'surrogates04', 
    'surrogates05', 
    'surrogates06', 
    'surrogates07', 
    'surrogates08', 
    'surrogates09', 
    'surrogates10', 
    'surrogates11', 
    'surrogates12', 
    'surrogates13', 
    'surrogates14', 
    'surrogates15', 
    'surrogates16', 
    'surrogates01a', 
    'surrogates02a', 
    'surrogates03a', 
    'surrogates04a', 
    'surrogates05a', 
    'surrogates06a', 
    'surrogates07a']}, 
   {group_1, [parallel], [
    'surrogates08a', 
    'surrogates09a', 
    'surrogates10a', 
    'surrogates11a', 
    'surrogates12a', 
    'surrogates13a', 
    'surrogates14a', 
    'surrogates15a', 
    'surrogates16a']}].

'surrogates01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-length(\"abc&#x1D156;def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates01.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates02'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring(\"abc&#x1D156;def\", 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates02.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates03'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring(\"abc&#x1D156;def\", 4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates03.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "𝅖def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates04'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "translate(\"abc&#x1D156;def\", \"&#x1D156;\", \"#\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates04.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc#def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates05'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "translate(\"abc&#x1D156;def\", \"&#x1D156;de\", \"#DE\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates05.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc#DEf") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates06'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "translate(\"abc&#x1D156;def\", \"def\", \"&#x1D156;EF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates06.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖𝅖EF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates07'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(\"abc&#x1D156;def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates07.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "97 98 99 119126 100 101 102") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates08'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string((97, 98, 99, 119126, 100, 101, 102))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates08.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates09'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-before(\"abc&#x1D156;def\", \"&#x1D156;\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates09.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-before(\"abc&#x1D156;def\", \"f\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖de") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"abc&#x1D156;def\", \"&#x1D156;\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "matches(\"abc&#x1D157;def\", \"abc[&#x1D156;-&#x1D158;]def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "matches(\"abc&#x1D157;def\", \"abc.def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "replace(\"abc&#119130;def\", \"[&#119120;-&#119135;]\", \"&#119135;\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅘𝅥def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "replace(\"abc&#x1D157;def\", \"[^a-f]\", \"###\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc###def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(substring(\"&#x10FC00;A\", 2, 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates01a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates02a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates03a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates04a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates05a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates06a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates07a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates08a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string((97, 98, 99, 119126, 100, 101, 102))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "surrogates08a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'surrogates09a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates10a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates11a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates12a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates13a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates14a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates15a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}. 
'surrogates16a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20+"}.