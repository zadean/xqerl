-module('fn_base_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-base-uri-1'/1]).
-export(['fn-base-uri-2'/1]).
-export(['fn-base-uri-3'/1]).
-export(['fn-base-uri-4'/1]).
-export(['fn-base-uri-5'/1]).
-export(['fn-base-uri-6'/1]).
-export(['fn-base-uri-7'/1]).
-export(['fn-base-uri-8'/1]).
-export(['fn-base-uri-9'/1]).
-export(['fn-base-uri-10'/1]).
-export(['fn-base-uri-11'/1]).
-export(['fn-base-uri-12'/1]).
-export(['fn-base-uri-13'/1]).
-export(['fn-base-uri-14'/1]).
-export(['fn-base-uri-15'/1]).
-export(['fn-base-uri-16'/1]).
-export(['fn-base-uri-17'/1]).
-export(['fn-base-uri-18'/1]).
-export(['fn-base-uri-19'/1]).
-export(['fn-base-uri-20'/1]).
-export(['fn-base-uri-21'/1]).
-export(['fn-base-uri-22'/1]).
-export(['fn-base-uri-23'/1]).
-export(['fn-base-uri-24'/1]).
-export(['fn-base-uri-25'/1]).
-export(['fn-base-uri-26'/1]).
-export(['fn-base-uri-27'/1]).
-export(['fn-base-uri-28'/1]).
-export(['fn-base-uri-29'/1]).
-export(['fn-base-uri-30'/1]).
-export(['fn-base-uri-31'/1]).
-export(['fn-base-uri-32'/1]).
-export(['fn-base-uri-33'/1]).
-export(['fn-base-uri-34'/1]).
-export(['fn-base-uri-35'/1]).
-export(['fn-base-uri-36'/1]).
-export(['fn-base-uri-37'/1]).
-export(['fn-base-uri-38'/1]).
-export(['fn-base-uri-39'/1]).
-export(['fn-base-uri-40'/1]).
-export(['fn-base-uri-41'/1]).
-export(['fn-base-uri-42'/1]).
-export(['fn-base-uri-43'/1]).
-export(['K-BaseURIFunc-1'/1]).
-export(['K-BaseURIFunc-2'/1]).
-export(['K2-BaseURIFunc-1'/1]).
-export(['K2-BaseURIFunc-2'/1]).
-export(['K2-BaseURIFunc-3'/1]).
-export(['K2-BaseURIFunc-4'/1]).
-export(['K2-BaseURIFunc-5'/1]).
-export(['K2-BaseURIFunc-6'/1]).
-export(['K2-BaseURIFunc-7'/1]).
-export(['K2-BaseURIFunc-8'/1]).
-export(['K2-BaseURIFunc-9'/1]).
-export(['K2-BaseURIFunc-10'/1]).
-export(['K2-BaseURIFunc-11'/1]).
-export(['K2-BaseURIFunc-12'/1]).
-export(['K2-BaseURIFunc-13'/1]).
-export(['K2-BaseURIFunc-14'/1]).
-export(['K2-BaseURIFunc-15'/1]).
-export(['K2-BaseURIFunc-16'/1]).
-export(['K2-BaseURIFunc-17'/1]).
-export(['K2-BaseURIFunc-18'/1]).
-export(['K2-BaseURIFunc-19'/1]).
-export(['K2-BaseURIFunc-20'/1]).
-export(['K2-BaseURIFunc-21'/1]).
-export(['K2-BaseURIFunc-22'/1]).
-export(['K2-BaseURIFunc-23'/1]).
-export(['K2-BaseURIFunc-24'/1]).
-export(['K2-BaseURIFunc-25'/1]).
-export(['K2-BaseURIFunc-26'/1]).
-export(['K2-BaseURIFunc-27'/1]).
-export(['K2-BaseURIFunc-28'/1]).
-export(['K2-BaseURIFunc-29'/1]).
-export(['K2-BaseURIFunc-30'/1]).
-export(['K2-BaseURIFunc-31'/1]).
-export(['K2-BaseURIFunc-32'/1]).
-export(['K2-BaseURIFunc-33'/1]).
-export(['cbcl-base-uri-001'/1]).
-export(['cbcl-base-uri-002'/1]).
-export(['cbcl-base-uri-003'/1]).
-export(['cbcl-base-uri-004'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'fn-base-uri-1', 
'fn-base-uri-2', 
'fn-base-uri-3', 
'fn-base-uri-4', 
'fn-base-uri-5', 
'fn-base-uri-6', 
'fn-base-uri-7', 
'fn-base-uri-8', 
'fn-base-uri-9', 
'fn-base-uri-10', 
'fn-base-uri-11', 
'fn-base-uri-12', 
'fn-base-uri-13', 
'fn-base-uri-14', 
'fn-base-uri-15', 
'fn-base-uri-16', 
'fn-base-uri-17', 
'fn-base-uri-18', 
'fn-base-uri-19', 
'fn-base-uri-20', 
'fn-base-uri-21', 
'fn-base-uri-22', 
'fn-base-uri-23', 
'fn-base-uri-24', 
'fn-base-uri-25', 
'fn-base-uri-26', 
'fn-base-uri-27', 
'fn-base-uri-28', 
'fn-base-uri-29', 
'fn-base-uri-30', 
'fn-base-uri-31', 
'fn-base-uri-32', 
'fn-base-uri-33', 
'fn-base-uri-34', 
'fn-base-uri-35', 
'fn-base-uri-36', 
'fn-base-uri-37', 
'fn-base-uri-38', 
'fn-base-uri-39', 
'fn-base-uri-40', 
'fn-base-uri-41', 
'fn-base-uri-42', 
'fn-base-uri-43', 
'K-BaseURIFunc-1', 
'K-BaseURIFunc-2', 
'K2-BaseURIFunc-1', 
'K2-BaseURIFunc-2', 
'K2-BaseURIFunc-3', 
'K2-BaseURIFunc-4', 
'K2-BaseURIFunc-5', 
'K2-BaseURIFunc-6', 
'K2-BaseURIFunc-7', 
'K2-BaseURIFunc-8', 
'K2-BaseURIFunc-9', 
'K2-BaseURIFunc-10', 
'K2-BaseURIFunc-11', 
'K2-BaseURIFunc-12', 
'K2-BaseURIFunc-13', 
'K2-BaseURIFunc-14', 
'K2-BaseURIFunc-15', 
'K2-BaseURIFunc-16', 
'K2-BaseURIFunc-17', 
'K2-BaseURIFunc-18', 
'K2-BaseURIFunc-19', 
'K2-BaseURIFunc-20', 
'K2-BaseURIFunc-21', 
'K2-BaseURIFunc-22', 
'K2-BaseURIFunc-23', 
'K2-BaseURIFunc-24', 
'K2-BaseURIFunc-25', 
'K2-BaseURIFunc-26', 
'K2-BaseURIFunc-27', 
'K2-BaseURIFunc-28', 
'K2-BaseURIFunc-29', 
'K2-BaseURIFunc-30', 
'K2-BaseURIFunc-31', 
'K2-BaseURIFunc-32', 
'K2-BaseURIFunc-33', 
'cbcl-base-uri-001', 
'cbcl-base-uri-002', 
'cbcl-base-uri-003', 
'cbcl-base-uri-004'
].
environment('TopMany',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../prod/AxisStep/TopMany.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-base-uri-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:noContextFunction() { fn:base-uri() }; declare variable $input-context1 external; eg:noContextFunction()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 100)[fn:base-uri()]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:base-uri(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(<!-- A comment -->)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(comment {\"A Comment Node \"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(text {\"A Text Node\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:base-uri(element anElement {\"An Element Node\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:base-uri(<anElement>Element content</anElement>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:base-uri(<anElement xml:base=\"http://example.com/examples\">Element content</anElement>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:base-uri(<anElement xml:base=\"http://www.example.com\">Element content</anElement>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:base-uri(document {<aDocument>some content</aDocument>}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
            fn:string(fn:base-uri(document {<aDocument>some content</aDocument>}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; fn:string(fn:base-uri(<anElement>some content</anElement>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(attribute anAttribute{\"attribute value\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(<?format role=\"output\" ?>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(processing-instruction {\"PItarget\"} {\"PIcontent\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare base-uri \"http://example.org\"; 
         fn:base-uri(processing-instruction {\"PItarget\"} {\"PIcontent\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement>With some contexnt</anElement> 
        return fn:string(fn:base-uri($var))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(fn:base-uri($var))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(fn:base-uri($var))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <!-- A Comment --> return fn:base-uri($var)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { fn:base-uri(.) }; 
        eg:noContextFunction()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:base-uri(<anElement xml:base=\"http://example.com/examples\">Element content</anElement>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<!-- A comment -->)/base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(comment {\"A Comment Node \"})/fn:base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(text {\"A Text Node\"})/fn:base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((element anElement {\"An Element Node\"})/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((<anElement>Element content</anElement>)/fn:base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((<anElement xml:base=\"http://example.com/examples\">Element content</anElement>)/fn:base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((<anElement xml:base=\"http://www.example.com\">Element content</anElement>)/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((document {<aDocument>some content</aDocument>})/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
            fn:string((document {<aDocument>some content</aDocument>})/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; fn:string((<anElement>some content</anElement>)/fn:base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(attribute anAttribute{\"attribute value\"})/fn:base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<?format role=\"output\" ?>)/fn:base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(processing-instruction {\"PItarget\"} {\"PIcontent\"})/base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare base-uri \"http://example.org\"; 
         (processing-instruction {\"PItarget\"} {\"PIcontent\"})/base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement>With some contexnt</anElement> 
        return fn:string(($var)/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(($var)/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(($var)/base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.examples.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <!-- A Comment --> return ($var)/base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { fn:base-uri() }; 
        eg:noContextFunction()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-base-uri-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((<anElement xml:base=\"http://example.com/examples\">Element content</anElement>)/fn:base-uri())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-base-uri-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-BaseURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "base-uri((), \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BaseURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-BaseURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(base-uri(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BaseURIFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<!-- comment -->))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(attribute name {\"content\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<?target data?>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(processing-instruction name {123}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(text {123}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<elem/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<elem attr=\"f\"/>/@attr))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(document {1}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e xml:base=\"http://www.example.com/\"><?target data?></e> 
        return base-uri($i/processing-instruction()[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e xml:base=\"http://www.example.com/\">{processing-instruction target {\"data\"}}</e> return base-uri($i/processing-instruction()[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e xml:base=\"http://www.example.com/\"><!-- content --></e> return base-uri($i/comment()[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e xml:base=\"http://www.example.com/\">{comment {\"content\"}}</e> return base-uri($i/comment()[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(comment {\"content\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(<!-- comment -->))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(processing-instruction target {\"data\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(<?target data?>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(attribute name {\"data\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; let $i := <e attr=\"foo\"></e> return base-uri($i/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com/\"; let $i := <e xml:base = \"foo/../xml\" attr=\"foo\"> </e> return base-uri($i/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com/\"; let $i := <e xml:base = \"foo/../xml\" attr=\"foo\"> </e> return base-uri($i/@xml:base)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, base-uri(.), 3) return 
        typeswitch($i) 
        case xs:anyURI return \"xs:anyURI\" 
        case xs:integer return \"xs:integer\" 
        default return \"FAILURE\"", 
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:integer xs:anyURI xs:integer") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.com/baseURI\"; empty(base-uri(<?target data?>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.com/baseURI\"; empty(base-uri(processing-instruction target {\"data\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(base-uri(<?target data?>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(base-uri(processing-instruction target {\"data\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(base-uri(attribute name {\"value\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.com/BASEURI\"; base-uri(document {()})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/BASEURI") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.com/\"; let $i := document {()} return (\"Base URI:\", base-uri($i), \"Document URI:\", document-uri($i))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Base URI: http://example.com/ Document URI:") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := fn:base-uri(<anElement xml:base=\"http:\\\\example.com\\\\examples\">Element content</anElement>) return $i eq \"http:\\\\example.com\\\\examples\" or empty($i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(<anElement xml:base=\"http://example.com/examples\"><b xml:base=\"\"/>Element content</anElement>/b)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(exactly-one(<anElement xml:base=\"http://example.com/examples\"><?target data?></anElement>/processing-instruction()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:base-uri(exactly-one(<anElement xml:base=\"http://example.com/examples\"><!-- a comment --></anElement>/comment()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BaseURIFunc-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xml:base=\"http://example.com/ABC/\"> <a xml:base=\"../\"> <b xml:base=\"DEF/file.test\"/> </a> </e>/a/b/base-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BaseURIFunc-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/DEF/file.test") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-base-uri-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	let $d := document { <root xml:base=\"http://www.w3.org/\"><implicit-base><child /></implicit-base><explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base></root> } 
      	return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/explicit-base } </copy> return fn:base-uri(($y/explicit-base)[1])
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-base-uri-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/TR/xquery") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-base-uri-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $d := document { <root xml:base=\"http://www.w3.org/\"> <implicit-base><child /></implicit-base> <explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base> </root> } 
      return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/explicit-base } </copy> 
      return fn:base-uri(($y/explicit-base/child)[1])
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-base-uri-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/TR/xquery") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-base-uri-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $d := document { <root xml:base=\"http://www.w3.org/\"> <implicit-base><child /></implicit-base> <explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base> </root> } 
      return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/implicit-base } </copy> 
      return fn:base-uri(($y/implicit-base)[1])
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-base-uri-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-base-uri-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $d := document { <root xml:base=\"http://www.w3.org/\"> <implicit-base><child /></implicit-base> <explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base> </root> } 
      return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/implicit-base } </copy> 
      return fn:base-uri(($y/implicit-base/child)[1])
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-base-uri-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.