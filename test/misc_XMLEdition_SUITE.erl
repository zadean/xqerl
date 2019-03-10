-module('misc_XMLEdition_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['XML10-3ed-Mixed-content'/1]).
-export(['XML10-4ed-Excluded-char-1'/1]).
-export(['XML10-4ed-Excluded-char-1-new'/1]).
-export(['XML10-4ed-Excluded-char-2'/1]).
-export(['XML10-5ed-Included-char-1'/1]).
-export(['XML10-5ed-Included-char-1-new'/1]).
-export(['XML11-1ed-Included-char-1'/1]).
-export(['XML11-1ed-Included-char-1-new'/1]).
-export(['line-ending-Q001'/1]).
-export(['line-ending-Q002'/1]).
-export(['line-ending-Q003'/1]).
-export(['line-ending-Q004'/1]).
-export(['line-ending-Q005'/1]).
-export(['line-ending-Q006'/1]).
-export(['line-ending-Q007'/1]).
-export(['line-ending-Q008'/1]).
-export(['line-ending-Q009'/1]).
-export(['line-ending-P002'/1]).
-export(['XML11-c0-001'/1]).
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
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'XML10-3ed-Mixed-content', 
    'XML10-4ed-Excluded-char-1', 
    'XML10-4ed-Excluded-char-1-new', 
    'XML10-4ed-Excluded-char-2', 
    'XML10-5ed-Included-char-1', 
    'XML10-5ed-Included-char-1-new', 
    'XML11-1ed-Included-char-1', 
    'XML11-1ed-Included-char-1-new', 
    'line-ending-Q001', 
    'line-ending-Q002', 
    'line-ending-Q003', 
    'line-ending-Q004', 
    'line-ending-Q005', 
    'line-ending-Q006', 
    'line-ending-Q007', 
    'line-ending-Q008', 
    'line-ending-Q009', 
    'line-ending-P002', 
    'XML11-c0-001']}].

'XML10-3ed-Mixed-content'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo> a <![CDATA[cdata section]]> in mixed content. a <!-- comment --> in mixed content. a <?processing instruction?> in mixed content. </foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XML10-3ed-Mixed-content.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo> a cdata section in mixed content. a <!-- comment --> in mixed content. a <?processing instruction?> in mixed content. </foo>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'XML10-4ed-Excluded-char-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.0:4-"}. 
'XML10-4ed-Excluded-char-1-new'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xquery version \"1.0\" encoding \"utf-8\"; <Ϳnode/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XML10-4ed-Excluded-char-1-new.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<Ϳnode/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<Ϳnode/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'XML10-4ed-Excluded-char-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: Excluded-char-2 :)
(: Written by: Nicolae Brinza :)
(: Description: The character #x0100 is excluded from the start of a Name :)
(:              in XML 1.0 4th edition and older                          :)

xquery version \"1.0\" encoding \"utf-8\";

<��node/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XML10-4ed-Excluded-char-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'XML10-5ed-Included-char-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo></foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XML10-5ed-Included-char-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo>&#x7f;</foo>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'XML10-5ed-Included-char-1-new'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'XML11-1ed-Included-char-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.0:4-"}. 
'XML11-1ed-Included-char-1-new'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<eggſ/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XML11-1ed-Included-char-1-new.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<eggſ/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<eggſ/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-Q001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(string-to-codepoints('
'), (10))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "line-ending-Q001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-Q002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(string-to-codepoints('
'), (10))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "line-ending-Q002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-Q003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(string-to-codepoints(' 
 
'), (10, 32, 10, 32, 10, 10))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "line-ending-Q003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-Q004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'line-ending-Q005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'line-ending-Q006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'line-ending-Q007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(string-to-codepoints(''), (10, 133))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "line-ending-Q007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-Q008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(string-to-codepoints('  '), (32, 133, 32))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "line-ending-Q008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-Q009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(string-to-codepoints('   '), (32, 8232, 32))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "line-ending-Q009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'line-ending-P002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}. 
'XML11-c0-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}.