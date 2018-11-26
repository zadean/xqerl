-module('misc_AnnexE_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['annex-1'/1]).
-export(['annex-2'/1]).
-export(['annex-3'/1]).
-export(['annex-4'/1]).
-export(['annex-5'/1]).
-export(['annex-6'/1]).
-export(['annex-7'/1]).
-export(['annex-8'/1]).
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
   __BaseDir = filename:join(TD, "misc"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'annex-1', 
'annex-2', 
'annex-3', 
'annex-4', 
'annex-5', 
'annex-6', 
'annex-7', 
'annex-8'
].

'annex-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:if-empty ( $node as node()?, $value as xs:anyAtomicType) as xs:anyAtomicType* { if ($node and $node/child::node()) then fn:data($node) else $value }; let $arg1 := <element1>some data</element1> let $arg2 as xs:anyAtomicType := 1 return eg:if-empty($arg1,$arg2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "some data") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:if-absent ( $node as node()?, $value as xs:anyAtomicType) as xs:anyAtomicType* { if ($node) then fn:data($node) else $value }; let $arg1 := <element1>some data</element1> let $arg2 as xs:anyAtomicType := 1 return eg:if-absent($arg1,$arg2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "some data") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:value-union ( $arg1 as xs:anyAtomicType*, $arg2 as xs:anyAtomicType*) as xs:anyAtomicType* { fn:distinct-values(($arg1, $arg2)) }; let $arg1 as xs:anyAtomicType := 1 let $arg2 as xs:anyAtomicType := 2 return eg:value-union($arg1,$arg2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:value-intersect ( $arg1 as xs:anyAtomicType*, $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { fn:distinct-values($arg1[.=$arg2]) }; let $arg1 as xs:anyAtomicType := 1 let $arg2 as xs:anyAtomicType := 1 return eg:value-intersect($arg1,$arg2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:value-except ( $arg1 as xs:anyAtomicType*, $arg2 as xs:anyAtomicType*) as xs:anyAtomicType* { fn:distinct-values($arg1[not(.=$arg2)]) }; let $arg1 as xs:anyAtomicType := 1 let $arg2 as xs:anyAtomicType := 2 return eg:value-except($arg1,$arg2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:index-of-node($sequence as node()*, $srch as node()) as xs:integer* { for $n at $i in $sequence where ($n is $srch) return $i }; let $arg1 := (<element1>some data 1</element1>,<element2>some data 2</element2>) let $arg2 := $arg1[2] return eg:index-of-node($arg1, exactly-one($arg2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:string-pad ( $padString as xs:string?, $padCount as xs:integer) as xs:string { fn:string-join((for $i in 1 to $padCount return $padString), \"\") }; let $arg1 as xs:string := \"A String\" let $arg2 as xs:integer := 3 return eg:string-pad($arg1,$arg2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A StringA StringA String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'annex-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:distinct-nodes-stable ($arg as node()*) as node()* { for $a at $apos in $arg let $before_a := fn:subsequence($arg, 1, $apos - 1) where every $ba in $before_a satisfies not($ba is $a) return $a }; let $arg1 := (<element1>some data 1</element1>,<element2>some data 2</element2>) return eg:distinct-nodes-stable($arg1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "annex-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<element1>some data 1</element1><element2>some data 2</element2>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.