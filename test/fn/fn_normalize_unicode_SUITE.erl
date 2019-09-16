-module('fn_normalize_unicode_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-normalize-unicode1args-1'/1]).
-export(['fn-normalize-unicode1args-2'/1]).
-export(['fn-normalize-unicode1args-3'/1]).
-export(['fn-normalize-unicode1args-4'/1]).
-export(['fn-normalize-unicode1args-5'/1]).
-export(['fn-normalize-unicode1args-6'/1]).
-export(['fn-normalize-unicode1args-7'/1]).
-export(['fn-normalize-unicode1args-8'/1]).
-export(['fn-normalize-unicode2args-1'/1]).
-export(['fn-normalize-unicode2args-2'/1]).
-export(['fn-normalize-unicode2args-3'/1]).
-export(['fn-normalize-unicode2args-4'/1]).
-export(['fn-normalize-unicode2args-5'/1]).
-export(['fn-normalize-unicode2args-6'/1]).
-export(['fn-normalize-unicode-1'/1]).
-export(['fn-normalize-unicode-2'/1]).
-export(['fn-normalize-unicode-3'/1]).
-export(['fn-normalize-unicode-4'/1]).
-export(['fn-normalize-unicode-5'/1]).
-export(['fn-normalize-unicode-6'/1]).
-export(['fn-normalize-unicode-7'/1]).
-export(['fn-normalize-unicode-8'/1]).
-export(['fn-normalize-unicode-9'/1]).
-export(['fn-normalize-unicode-10'/1]).
-export(['fn-normalize-unicode-11'/1]).
-export(['fn-normalize-unicode-11-6-0'/1]).
-export(['fn-normalize-unicode-11-6-2'/1]).
-export(['K-NormalizeUnicodeFunc-1'/1]).
-export(['K-NormalizeUnicodeFunc-2'/1]).
-export(['K-NormalizeUnicodeFunc-3'/1]).
-export(['K-NormalizeUnicodeFunc-4'/1]).
-export(['K-NormalizeUnicodeFunc-5'/1]).
-export(['K-NormalizeUnicodeFunc-6'/1]).
-export(['K-NormalizeUnicodeFunc-7'/1]).
-export(['K-NormalizeUnicodeFunc-8'/1]).
-export(['K-NormalizeUnicodeFunc-9'/1]).
-export(['K-NormalizeUnicodeFunc-10'/1]).
-export(['K-NormalizeUnicodeFunc-11'/1]).
-export(['K-NormalizeUnicodeFunc-12'/1]).
-export(['K-NormalizeUnicodeFunc-13'/1]).
-export(['cbcl-fn-normalize-unicode-001'/1]).
-export(['cbcl-fn-normalize-unicode-001a'/1]).
-export(['cbcl-fn-normalize-unicode-002'/1]).
-export(['cbcl-fn-normalize-unicode-003'/1]).
-export(['cbcl-fn-normalize-unicode-004'/1]).
-export(['cbcl-fn-normalize-unicode-005'/1]).
-export(['cbcl-fn-normalize-unicode-006'/1]).
-export(['cbcl-fn-normalize-unicode-006a'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-normalize-unicode1args-1', 
    'fn-normalize-unicode1args-2', 
    'fn-normalize-unicode1args-3', 
    'fn-normalize-unicode1args-4', 
    'fn-normalize-unicode1args-5', 
    'fn-normalize-unicode1args-6', 
    'fn-normalize-unicode1args-7', 
    'fn-normalize-unicode1args-8', 
    'fn-normalize-unicode2args-1', 
    'fn-normalize-unicode2args-2', 
    'fn-normalize-unicode2args-3', 
    'fn-normalize-unicode2args-4', 
    'fn-normalize-unicode2args-5', 
    'fn-normalize-unicode2args-6', 
    'fn-normalize-unicode-1', 
    'fn-normalize-unicode-2', 
    'fn-normalize-unicode-3', 
    'fn-normalize-unicode-4', 
    'fn-normalize-unicode-5', 
    'fn-normalize-unicode-6', 
    'fn-normalize-unicode-7', 
    'fn-normalize-unicode-8', 
    'fn-normalize-unicode-9']}, 
   {group_1, [parallel], [
    'fn-normalize-unicode-10', 
    'fn-normalize-unicode-11', 
    'fn-normalize-unicode-11-6-0', 
    'fn-normalize-unicode-11-6-2', 
    'K-NormalizeUnicodeFunc-1', 
    'K-NormalizeUnicodeFunc-2', 
    'K-NormalizeUnicodeFunc-3', 
    'K-NormalizeUnicodeFunc-4', 
    'K-NormalizeUnicodeFunc-5', 
    'K-NormalizeUnicodeFunc-6', 
    'K-NormalizeUnicodeFunc-7', 
    'K-NormalizeUnicodeFunc-8', 
    'K-NormalizeUnicodeFunc-9', 
    'K-NormalizeUnicodeFunc-10', 
    'K-NormalizeUnicodeFunc-11', 
    'K-NormalizeUnicodeFunc-12', 
    'K-NormalizeUnicodeFunc-13', 
    'cbcl-fn-normalize-unicode-001', 
    'cbcl-fn-normalize-unicode-001a', 
    'cbcl-fn-normalize-unicode-002', 
    'cbcl-fn-normalize-unicode-003', 
    'cbcl-fn-normalize-unicode-004', 
    'cbcl-fn-normalize-unicode-005', 
    'cbcl-fn-normalize-unicode-006']}, 
   {group_2, [parallel], [
    'cbcl-fn-normalize-unicode-006a']}].

'fn-normalize-unicode1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode('Nothing to normalize.')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Nothing to normalize.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "matches('Ǻ', normalize-unicode('Ǻ'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode1args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "matches('Å', normalize-unicode('Å'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode1args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "matches('Å', normalize-unicode('Å'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode1args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(normalize-unicode('Å') eq normalize-unicode('Å'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode1args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(12)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-7.xq"), Qry1),
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
'fn-normalize-unicode1args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode('','','')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode1args-8.xq"), Qry1),
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
'fn-normalize-unicode2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode('Nothing to normalize.', 'NFC')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Nothing to normalize.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode('Nothing to normalize.', 'nFc')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Nothing to normalize.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode((), 'NFC')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(normalize-unicode('Å', '') eq normalize-unicode('Å', ''))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode('',())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode2args-5.xq"), Qry1),
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
'fn-normalize-unicode2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode('',12)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode2args-6.xq"), Qry1),
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
'fn-normalize-unicode-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:concat(fn:normalize-unicode(\"Å\",\" NFC \"),fn:normalize-unicode(\"Å\",\"NFC\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ÅÅ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:normalize-unicode(\"è\",\"chancesareyoudonotsupportthis123ifyoudowaoo\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:upper-case(fn:normalize-unicode(\"normalizedstring\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NORMALIZEDSTRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lower-case(fn:normalize-unicode(\"NORMALIZEDSTRING\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "normalizedstring") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-length(fn:normalize-unicode(\"NORMALIZEDSTRING\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "16") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:concat(fn:normalize-unicode(\"NORMALIZEDSTRING\"),\"another string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NORMALIZEDSTRINGanother string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring(fn:normalize-unicode(\"NORMALIZEDSTRING\"),5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ALIZEDSTRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(normalize-unicode('﷐'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "64976") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(fn:normalize-unicode('ê﷐ê﷐ê'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"234, 64976, 234, 64976, 234") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(fn:normalize-unicode('e﷐̂'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-normalize-unicode-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"101, 64976, 770") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-normalize-unicode-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"unicode-version:5.2"}. 
'fn-normalize-unicode-11-6-0'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"unicode-version:6.0"}. 
'fn-normalize-unicode-11-6-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"unicode-version:6.2"}. 
'K-NormalizeUnicodeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-1.xq"), Qry1),
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
'K-NormalizeUnicodeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"a string\", \"NFC\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-2.xq"), Qry1),
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
'K-NormalizeUnicodeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"a string\", \"example.com/notSupported/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"foo\") eq \"foo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"foo\", \"NFC\") eq \"foo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"foo\", \"NFD\") eq \"foo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"foo\", \"NFKD\") eq \"foo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"foo\", \"NFKC\") eq \"foo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"f oo\", \"\") eq \"f oo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"foo\", \"\") eq \"foo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"f oo\") eq \"f oo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"f oo\", \"NFC\") eq \"f oo\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NormalizeUnicodeFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode((\"a string\", error()), \"NFC\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NormalizeUnicodeFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOER0000 " ++ binary_to_list(F)};
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
'cbcl-fn-normalize-unicode-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"unicode-normalization-form:FULLY-NORMALIZED"}. 
'cbcl-fn-normalize-unicode-001a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"blah\",\"FULLY-NORMALIZED\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-normalize-unicode-001a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-normalize-unicode-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean(normalize-unicode(\"blah\",\"NFC\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-normalize-unicode-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-normalize-unicode-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean(normalize-unicode(\"blah\",\"ZZZ\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-normalize-unicode-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-normalize-unicode-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode((),\"NFC\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-normalize-unicode-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-normalize-unicode-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(\"\",\"NFC\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-normalize-unicode-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-normalize-unicode-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"unicode-normalization-form:FULLY-NORMALIZED"}. 
'cbcl-fn-normalize-unicode-006a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-unicode(codepoints-to-string(2494),\"FULLY-NORMALIZED\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-normalize-unicode-006a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.