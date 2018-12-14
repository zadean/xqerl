-module('method_text_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-text-1'/1]).
-export(['Serialization-text-2'/1]).
-export(['Serialization-text-3'/1]).
-export(['Serialization-text-4'/1]).
-export(['Serialization-text-5'/1]).
-export(['Serialization-text-6'/1]).
-export(['Serialization-text-7'/1]).
-export(['Serialization-text-7a'/1]).
-export(['Serialization-text-8'/1]).
-export(['Serialization-text-8a'/1]).
-export(['Serialization-text-9'/1]).
-export(['Serialization-text-10'/1]).
-export(['Serialization-text-11'/1]).
-export(['Serialization-text-13'/1]).
-export(['Serialization-text-14'/1]).
-export(['Serialization-text-15'/1]).
-export(['Serialization-text-16'/1]).
-export(['Serialization-text-17'/1]).
-export(['Serialization-text-18'/1]).
-export(['Serialization-text-19'/1]).
-export(['Serialization-text-20'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "ser"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Serialization-text-1', 
'Serialization-text-2', 
'Serialization-text-3', 
'Serialization-text-4', 
'Serialization-text-5', 
'Serialization-text-6', 
'Serialization-text-7', 
'Serialization-text-7a', 
'Serialization-text-8', 
'Serialization-text-8a', 
'Serialization-text-9', 
'Serialization-text-10', 
'Serialization-text-11', 
'Serialization-text-13', 
'Serialization-text-14', 
'Serialization-text-15', 
'Serialization-text-16', 
'Serialization-text-17', 
'Serialization-text-18', 
'Serialization-text-19', 
'Serialization-text-20'
].

'Serialization-text-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        attribute name {<anElement/>}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <e/>, attribute name {<anElement/>}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        attribute name {<anElement/>}, <e/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <e/>, attribute name {<anElement/>}, <e/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <a>&#xD;&#x85;&#x2028;</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<" "/utf8>>,<<"">>) of 
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
'Serialization-text-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <a attr=\"&#xD;&#xA;&#x9;&#x85;&#x2028;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^$"/utf8>>,<<"">>) of 
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
'Serialization-text-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'Serialization-text-7a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <a>{codepoints-to-string(1 to 31)}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-7a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'Serialization-text-8a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <a attr=\"{codepoints-to-string(1 to 31)}\"></a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-8a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <a attr=\"{codepoints-to-string(127 to 159)}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        <a>{codepoints-to-string(127 to 159)}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}method  \"text\";
        \"a&#xD;aa&#xD;&#xA;a&#xD;&#xA;\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^a\\raa\\r\\na\\r\\n$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^a\\raa\\r\\r\\na\\r\\r\\n$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^a\\raa\\r\\ra\\r\\r$"/utf8>>,<<"">>) of 
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
'Serialization-text-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        declare option output:item-separator \"|\";
        1 to 10
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|10"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        declare option output:item-separator \"|\";
        <a>{1,2,3}</a>,<b>{4,5,6}</b>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1 2 3\\|4 5 6"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        declare option output:item-separator \"|\";
        document { 1 to 5 }
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1 2 3 4 5"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        declare option output:item-separator \"==\";
        (1 to 4)!text{.}
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1==2==3==4"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        <a>&lt;&amp;&gt;</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^<&>$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        <a>The <?quick brown?>fox<!--jumped--> down</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^The fox down$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"text\";
        [1, 2, 3, 4, 5] 

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1 2 3 4 5"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-text-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"html\";
        map { } 

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-text-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.