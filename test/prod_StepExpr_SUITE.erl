-module('prod_StepExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['K2-Steps-1'/1]).
-export(['K2-Steps-2'/1]).
-export(['K2-Steps-3'/1]).
-export(['K2-Steps-4'/1]).
-export(['K2-Steps-5'/1]).
-export(['K2-Steps-6'/1]).
-export(['K2-Steps-7'/1]).
-export(['K2-Steps-8'/1]).
-export(['K2-Steps-9'/1]).
-export(['K2-Steps-10'/1]).
-export(['K2-Steps-11'/1]).
-export(['K2-Steps-12'/1]).
-export(['K2-Steps-13'/1]).
-export(['K2-Steps-14'/1]).
-export(['K2-Steps-15'/1]).
-export(['K2-Steps-16'/1]).
-export(['K2-Steps-17'/1]).
-export(['K2-Steps-18'/1]).
-export(['K2-Steps-19'/1]).
-export(['K2-Steps-20'/1]).
-export(['K2-Steps-21'/1]).
-export(['K2-Steps-22'/1]).
-export(['K2-Steps-23'/1]).
-export(['K2-Steps-24'/1]).
-export(['K2-Steps-25'/1]).
-export(['K2-Steps-26'/1]).
-export(['K2-Steps-27'/1]).
-export(['K2-Steps-28'/1]).
-export(['K2-Steps-29'/1]).
-export(['K2-Steps-30'/1]).
-export(['K2-Steps-31'/1]).
-export(['K2-Steps-32'/1]).
-export(['K2-Steps-33'/1]).
-export(['K2-Steps-34'/1]).
-export(['K2-Steps-35'/1]).
-export(['Steps-leading-lone-slash-1'/1]).
-export(['Steps-leading-lone-slash-1a'/1]).
-export(['Steps-leading-lone-slash-2'/1]).
-export(['Steps-leading-lone-slash-2a'/1]).
-export(['Steps-leading-lone-slash-3'/1]).
-export(['Steps-leading-lone-slash-3a'/1]).
-export(['Steps-leading-lone-slash-4'/1]).
-export(['Steps-leading-lone-slash-5'/1]).
-export(['Steps-leading-lone-slash-5a'/1]).
-export(['Steps-leading-lone-slash-6'/1]).
-export(['Steps-leading-lone-slash-7'/1]).
-export(['Steps-leading-lone-slash-7a'/1]).
-export(['Steps-leading-lone-slash-8'/1]).
-export(['Steps-leading-lone-slash-8a'/1]).
-export(['Steps-leading-lone-slash-9'/1]).
-export(['Steps-leading-lone-slash-10'/1]).
-export(['Steps-leading-lone-slash-11'/1]).
-export(['Steps-leading-lone-slash-12'/1]).
-export(['Steps-leading-lone-slash-13'/1]).
-export(['Steps-leading-lone-slash-14'/1]).
-export(['Steps-leading-lone-slash-15'/1]).
-export(['Steps-leading-lone-slash-16'/1]).
-export(['Steps-leading-lone-slash-17'/1]).
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
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'K2-Steps-1', 
    'K2-Steps-2', 
    'K2-Steps-3', 
    'K2-Steps-4', 
    'K2-Steps-5', 
    'K2-Steps-6', 
    'K2-Steps-7', 
    'K2-Steps-8', 
    'K2-Steps-9', 
    'K2-Steps-10', 
    'K2-Steps-11', 
    'K2-Steps-12', 
    'K2-Steps-13', 
    'K2-Steps-14', 
    'K2-Steps-15', 
    'K2-Steps-16', 
    'K2-Steps-17', 
    'K2-Steps-18', 
    'K2-Steps-19', 
    'K2-Steps-20', 
    'K2-Steps-21', 
    'K2-Steps-22', 
    'K2-Steps-23']}, 
   {group_1, [parallel], [
    'K2-Steps-24', 
    'K2-Steps-25', 
    'K2-Steps-26', 
    'K2-Steps-27', 
    'K2-Steps-28', 
    'K2-Steps-29', 
    'K2-Steps-30', 
    'K2-Steps-31', 
    'K2-Steps-32', 
    'K2-Steps-33', 
    'K2-Steps-34', 
    'K2-Steps-35', 
    'Steps-leading-lone-slash-1', 
    'Steps-leading-lone-slash-1a', 
    'Steps-leading-lone-slash-2', 
    'Steps-leading-lone-slash-2a', 
    'Steps-leading-lone-slash-3', 
    'Steps-leading-lone-slash-3a', 
    'Steps-leading-lone-slash-4', 
    'Steps-leading-lone-slash-5', 
    'Steps-leading-lone-slash-5a', 
    'Steps-leading-lone-slash-6', 
    'Steps-leading-lone-slash-7', 
    'Steps-leading-lone-slash-7a']}, 
   {group_2, [parallel], [
    'Steps-leading-lone-slash-8', 
    'Steps-leading-lone-slash-8a', 
    'Steps-leading-lone-slash-9', 
    'Steps-leading-lone-slash-10', 
    'Steps-leading-lone-slash-11', 
    'Steps-leading-lone-slash-12', 
    'Steps-leading-lone-slash-13', 
    'Steps-leading-lone-slash-14', 
    'Steps-leading-lone-slash-15', 
    'Steps-leading-lone-slash-16', 
    'Steps-leading-lone-slash-17']}].

'K2-Steps-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc() { e[1] }; local:myFunc()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc() { e[928] }; local:myFunc()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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
'K2-Steps-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc() { e[true()] }; local:myFunc()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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
'K2-Steps-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc() { e[last()] }; local:myFunc()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<a/>/a)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a/>/.", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((<a/>, <!--comment-->)/3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/)/(//)/foo", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "child::local:b(:ada", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-9.xq"), Qry1),
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
'K2-Steps-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := <e>text</e>; $myVar/text()/(<e/>, (), 1, <e/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0018") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0018 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "///", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-11.xq"), Qry1),
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
'K2-Steps-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $e := ()/.; declare variable $b := <b/>/.; $e, <b/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-Steps-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(for $i in e return $i))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return ()/$b } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<r/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-Steps-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return <e/>/$b } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><a/><b/></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return <e/>/./$b } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><a/><b/></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return $b/. } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><a/><b/></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> <a/> </e>/*/(., .)/.", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> <a/> </e>/(., .)/.", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><a/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> <a/> <b/> </e>/((b, a)/., (.), (*, *))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><a/><b/></e><a/><b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <a> <b e=\"B\"/> <c e=\"B\"/> </a>; declare function local:function($arg) { $root[\"B\" eq $arg/@e] }; $root/local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b e=\"B\"/><c e=\"B\"/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <a> <b e=\"B\"/> <c e=\"B\"/> </a>; declare function local:function($arg) { $root[exactly-one($arg/@e)] }; $root/local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b e=\"B\"/><c e=\"B\"/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <a><c e=\"\"/></a>; declare function local:function($arg) { $root[$arg/@e] }; $root/local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><c e=\"\"/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; declare function local:function($object) { $root/b[@d = $object/@d] }; $root/c/c/local:function(.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b d=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; 
        declare function local:function($object) { $root/b[@d = $object/@d] }; 
        $root//local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b d=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; declare function local:function($object) { $root/b[$object/@d] }; $root//local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b d=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; declare function local:function($object) { $root[$object/@d] }; $root//local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><b d=\"\"/><c><c d=\"\"/><c/></c></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root> <b d=\"\"/> <c d=\"\"/> </root>; declare function local:function($object) { $root[$object/@d] }; $root//local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><b d=\"\"/><c d=\"\"/></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root> <c d=\"\"/> </root>; declare function local:function($object) { $root[$object/@d] }; $root//local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><c d=\"\"/></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root> <c d=\"\"/> </root>; declare function local:function($object) { $root[$object] }; $root//local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><c d=\"\"/></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root><c/></root>; declare function local:function($arg) { $root[$arg] }; $root//local:function(.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><c/></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := <root/>; declare function local:function($arg, $count as xs:integer) { $arg, $root, if($count eq 2) then $root else local:function($arg, $count + 1) }; $root/local:function(., 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $root := ( <b d=\"\"/>, <c> <c d=\"\"/> </c> ); declare function local:function($object) { $root[@d eq $object/@d] }; $root/local:function(c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b d=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $root := ( <b d=\"\"/>, <c d=\"\"> <c d=\"\"/> </c> ); 
        declare function local:function($object) { $root[@d eq $object/@d] }; 
        $root!local:function(c)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b d=\"\"/><c d=\"\"><c d=\"\"/></c>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-Steps-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/>[1]/text{string-join(., \" \")}, 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Steps-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"string($result[1]) eq \"\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[2] eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[/*5]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-1.xq"), Qry1),
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
'Steps-leading-lone-slash-1a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[(/)*5]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-1a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[/<a]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-2.xq"), Qry1),
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
'Steps-leading-lone-slash-2a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[(/)<a]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-2a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[/<5]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-3.xq"), Qry1),
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
'Steps-leading-lone-slash-3a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[(/)<5]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-3a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[/</b]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-4.xq"), Qry1),
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
'Steps-leading-lone-slash-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[/<a div 3]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-5.xq"), Qry1),
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
'Steps-leading-lone-slash-5a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[(/)<a div 3]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-5a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; $var[/if ($doclevel) then / else /*]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-6.xq"), Qry1),
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
'Steps-leading-lone-slash-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        declare variable $a := document {<a>123</a>}; $var[/ is $a]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-7.xq"), Qry1),
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
'Steps-leading-lone-slash-7a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        declare variable $a := document {<a>123</a>}; $var[(/) is $a]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-7a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/ instance of document-node(element(x))]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-8.xq"), Qry1),
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
'Steps-leading-lone-slash-8a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[(/) instance of document-node(element(x))]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-8a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        let $doc := / return $doc/*
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-9.xq"), Qry1),
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
'Steps-leading-lone-slash-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/*]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>123</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/<a/>]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>123</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/<a div=\"3\"/>]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>123</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/unordered{a}]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>123</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/max(a)]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        $var[/-5]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        declare variable $a := document {<a>123</a>}; 
        $var[/=$a]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>123</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Steps-leading-lone-slash-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $var := document {<a>123</a>}; 
        declare variable $a := document {<a>123</a>}; 
        $var[5*/]
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Steps-leading-lone-slash-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.