-module('prod_ConstructionDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['constprolog-1'/1]).
-export(['constprolog-2'/1]).
-export(['constprolog-3'/1]).
-export(['constprolog-4'/1]).
-export(['constprolog-5'/1]).
-export(['constprolog-6'/1]).
-export(['constprolog-7'/1]).
-export(['constprolog-8'/1]).
-export(['constprolog-9'/1]).
-export(['constprolog-10'/1]).
-export(['constprolog-11'/1]).
-export(['constprolog-12'/1]).
-export(['constprolog-13'/1]).
-export(['constprolog-14'/1]).
-export(['constprolog-15'/1]).
-export(['constprolog-16'/1]).
-export(['constprolog-17'/1]).
-export(['constprolog-18'/1]).
-export(['constprolog-19'/1]).
-export(['constprolog-20'/1]).
-export(['constprolog-21'/1]).
-export(['K-ConstructionProlog-1'/1]).
-export(['K-ConstructionProlog-2'/1]).
-export(['K-ConstructionProlog-3'/1]).
-export(['K-ConstructionProlog-4'/1]).
-export(['K2-ConstructionProlog-1'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'constprolog-1', 
'constprolog-2', 
'constprolog-3', 
'constprolog-4', 
'constprolog-5', 
'constprolog-6', 
'constprolog-7', 
'constprolog-8', 
'constprolog-9', 
'constprolog-10', 
'constprolog-11', 
'constprolog-12', 
'constprolog-13', 
'constprolog-14', 
'constprolog-15', 
'constprolog-16', 
'constprolog-17', 
'constprolog-18', 
'constprolog-19', 
'constprolog-20', 
'constprolog-21', 
'K-ConstructionProlog-1', 
'K-ConstructionProlog-2', 
'K-ConstructionProlog-3', 
'K-ConstructionProlog-4', 
'K2-ConstructionProlog-1'
].

'constprolog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        declare construction strip; 
        \"abc\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0067") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := <anElement>some content</anElement> 
        return $anElement instance of element(*,xs:untyped)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := element anElement {\"someContent\"} 
        return $anElement instance of element(*,xs:untyped)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := <anElement>some content</anElement> 
        return $anElement instance of element(*,xs:anyType)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := element anElement {\"someContent\"} 
        return $anElement instance of element(*,xs:anyType)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := <anElement>some content</anElement> 
        return $anElement instance of element(*,xs:anyType)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := element anElement {\"someContent\"} 
        return $anElement instance of element(*,xs:anyType)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := <someElement>some content</someElement> 
        return fn:not($anElement instance of element(*,xs:untyped))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := element someElement{\"some content\"} 
        return fn:not($anElement instance of element(*,xs:untyped))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := <someElement>some content</someElement> 
        return fn:not($anElement instance of element(*,xs:anyType))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := element someElement{\"some content\"} 
        return fn:not($anElement instance of element(*,xs:anyType))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        fn:not(<someElement>some content</someElement> instance of element(*,xs:untyped))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        fn:not(element someElement{\"some content\"} instance of element(*,xs:anyType))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $var := <anElement>Some content</anElement> 
        return ($var instance of element(*,xs:untyped)) and fn:true()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := element someElement{\"some content\"} 
        return ($anElement instance of element(*,xs:untyped)) and fn:true()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := <someElement>content</someElement> 
        return ($anElement instance of element(*,xs:anyType)) and fn:true()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := element someElement{\"some content\"} 
        return ($anElement instance of element(*,xs:anyType)) and fn:true()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $var := <anElement>Some content</anElement> 
        return ($var instance of element(*,xs:untyped)) or fn:false()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction strip; 
        let $anElement := element someElement{\"some content\"} 
        return ($anElement instance of element(*,xs:untyped)) or fn:false()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := <someElement>content</someElement> 
        return ($anElement instance of element(*,xs:anyType)) or fn:false()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constprolog-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare construction preserve; 
        let $anElement := element someElement{\"some content\"} 
        return ($anElement instance of element(*,xs:anyType)) or fn:false()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constprolog-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ConstructionProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)construction(::)preserve(::);(::)1(::)eq(::)1(::)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ConstructionProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ConstructionProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare(::)construction(::)Preserve;(::)1(::)eq(::)1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ConstructionProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ConstructionProlog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare(::)construction(::)strip;(::)1(::)eq(::)1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ConstructionProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ConstructionProlog-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare(::)construction(::)strip; declare(::)construction(::)strip;1(::)eq(::)1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ConstructionProlog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0067") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConstructionProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "construction gt construction", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConstructionProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.