-module('fn_codepoint_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-codepoint-equal-1'/1]).
-export(['fn-codepoint-equal-2'/1]).
-export(['fn-codepoint-equal-2a'/1]).
-export(['fn-codepoint-equal-2b'/1]).
-export(['fn-codepoint-equal-3'/1]).
-export(['fn-codepoint-equal-4'/1]).
-export(['fn-codepoint-equal-5'/1]).
-export(['fn-codepoint-equal-6'/1]).
-export(['fn-codepoint-equal-7'/1]).
-export(['fn-codepoint-equal-8'/1]).
-export(['fn-codepoint-equal-9'/1]).
-export(['fn-codepoint-equal-10'/1]).
-export(['fn-codepoint-equal-11'/1]).
-export(['fn-codepoint-equal-12'/1]).
-export(['fn-codepoint-equal-13'/1]).
-export(['fn-codepoint-equal-14'/1]).
-export(['fn-codepoint-equal-15'/1]).
-export(['fn-codepoint-equal-16'/1]).
-export(['fn-codepoint-equal-17'/1]).
-export(['fn-codepoint-equal-18'/1]).
-export(['fn-codepoint-equal-19'/1]).
-export(['fn-codepoint-equal-20'/1]).
-export(['fn-codepoint-equal-21'/1]).
-export(['fn-codepoint-equal-22'/1]).
-export(['K2-CodepointEqual-1'/1]).
-export(['K2-CodepointEqual-2'/1]).
-export(['K2-CodepointEqual-3'/1]).
-export(['K2-CodepointEqual-4'/1]).
-export(['K2-CodepointEqual-5'/1]).
-export(['K2-CodepointEqual-6'/1]).
-export(['cbcl-codepoint-equal-001'/1]).
-export(['cbcl-codepoint-equal-002'/1]).
-export(['cbcl-codepoint-equal-003'/1]).
-export(['cbcl-codepoint-equal-004'/1]).
-export(['cbcl-codepoint-equal-005'/1]).
-export(['cbcl-codepoint-equal-006'/1]).
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
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-codepoint-equal-1', 
    'fn-codepoint-equal-2', 
    'fn-codepoint-equal-2a', 
    'fn-codepoint-equal-2b', 
    'fn-codepoint-equal-3', 
    'fn-codepoint-equal-4', 
    'fn-codepoint-equal-5', 
    'fn-codepoint-equal-6', 
    'fn-codepoint-equal-7', 
    'fn-codepoint-equal-8', 
    'fn-codepoint-equal-9', 
    'fn-codepoint-equal-10', 
    'fn-codepoint-equal-11', 
    'fn-codepoint-equal-12', 
    'fn-codepoint-equal-13', 
    'fn-codepoint-equal-14', 
    'fn-codepoint-equal-15', 
    'fn-codepoint-equal-16', 
    'fn-codepoint-equal-17', 
    'fn-codepoint-equal-18', 
    'fn-codepoint-equal-19', 
    'fn-codepoint-equal-20', 
    'fn-codepoint-equal-21']}, 
   {group_1, [parallel], [
    'fn-codepoint-equal-22', 
    'K2-CodepointEqual-1', 
    'K2-CodepointEqual-2', 
    'K2-CodepointEqual-3', 
    'K2-CodepointEqual-4', 
    'K2-CodepointEqual-5', 
    'K2-CodepointEqual-6', 
    'cbcl-codepoint-equal-001', 
    'cbcl-codepoint-equal-002', 
    'cbcl-codepoint-equal-003', 
    'cbcl-codepoint-equal-004', 
    'cbcl-codepoint-equal-005', 
    'cbcl-codepoint-equal-006']}].

'fn-codepoint-equal-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal((),())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-2a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"abc\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-2a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-2b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal((), \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-2b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"a\",\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"a\",\"b\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:codepoint-equal(\"a\",\"b\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:codepoint-equal(\"a\",\"a\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(fn:string(1),fn:string(1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(fn:string(\"aa\"),fn:string(\"aa\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(xs:integer(1),xs:integer(1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",xs:integer(1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"AA\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",fn:lower-case(\"AA\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",fn:upper-case(\"aa\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(fn:codepoint-equal(\"aa\",\"aa\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") and fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") or fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") and fn:codepoint-equal(\"aa\",\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") or fn:codepoint-equal(\"aa\",\"aa\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-codepoint-equal-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoint-equal(normalize-unicode(\"garçon\", \"NFC\"), normalize-unicode(\"garçon\", \"NFD\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-codepoint-equal-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CodepointEqual-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(lower-case(concat(\"B STRING\", current-time())), 
                            lower-case(concat(\"b string\", current-time())))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CodepointEqual-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CodepointEqual-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(upper-case(concat(\"B STRING\", current-time())), 
                            upper-case(concat(\"b string\", current-time())))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CodepointEqual-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CodepointEqual-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(lower-case(concat(\"B STRING\", current-time())), 
                            lower-case(concat(\"no match\", current-time())))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CodepointEqual-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CodepointEqual-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(upper-case(concat(\"B STRING\", current-time())), 
                            upper-case(concat(\"no match\", current-time())))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CodepointEqual-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CodepointEqual-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(upper-case(concat(\"B STRING\", current-time())), 
                            lower-case(concat(\"no match\", current-time())))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CodepointEqual-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CodepointEqual-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(lower-case(concat(\"B STRING\", current-time())), 
                            upper-case(concat(\"no match\", current-time())))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CodepointEqual-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-codepoint-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      empty(fn:codepoint-equal( local:yes-empty(fn:false()), local:yes-empty(fn:true()) ) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-codepoint-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-codepoint-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      empty(fn:codepoint-equal( local:yes-empty(fn:true()), local:yes-empty(fn:false()) ) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-codepoint-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-codepoint-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:yes-no($arg as xs:boolean) as xs:string { if ($arg) then 'yes' else 'no' }; 
      fn:codepoint-equal( local:yes-no(fn:true()), local:yes-no(fn:false()) ) = false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-codepoint-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-codepoint-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      boolean(fn:codepoint-equal( local:yes-empty(fn:true()), local:yes-empty(fn:false()) ) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-codepoint-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-codepoint-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      boolean(fn:codepoint-equal( local:yes-empty(fn:false()), local:yes-empty(fn:true()) ) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-codepoint-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-codepoint-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:yes-no($arg as xs:boolean) as xs:string { if ($arg) then 'yes' else 'no' }; 
      fn:index-of( (fn:true(), fn:false()), fn:codepoint-equal( local:yes-no(fn:false()), local:yes-no(fn:true()) ) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-codepoint-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.