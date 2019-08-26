-module('method_adaptive_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['Serialization-adaptive-01'/1]).
-export(['Serialization-adaptive-02'/1]).
-export(['Serialization-adaptive-03'/1]).
-export(['Serialization-adaptive-04'/1]).
-export(['Serialization-adaptive-05'/1]).
-export(['Serialization-adaptive-06'/1]).
-export(['Serialization-adaptive-07'/1]).
-export(['Serialization-adaptive-08'/1]).
-export(['Serialization-adaptive-09'/1]).
-export(['Serialization-adaptive-10'/1]).
-export(['Serialization-adaptive-11'/1]).
-export(['Serialization-adaptive-12'/1]).
-export(['Serialization-adaptive-13'/1]).
-export(['Serialization-adaptive-14'/1]).
-export(['Serialization-adaptive-15'/1]).
-export(['Serialization-adaptive-16'/1]).
-export(['Serialization-adaptive-17'/1]).
-export(['Serialization-adaptive-18'/1]).
-export(['Serialization-adaptive-19'/1]).
-export(['Serialization-adaptive-20'/1]).
-export(['Serialization-adaptive-21'/1]).
-export(['Serialization-adaptive-22'/1]).
-export(['Serialization-adaptive-23'/1]).
-export(['Serialization-adaptive-24'/1]).
-export(['Serialization-adaptive-25'/1]).
-export(['Serialization-adaptive-26'/1]).
-export(['Serialization-adaptive-27'/1]).
-export(['Serialization-adaptive-28'/1]).
-export(['Serialization-adaptive-29'/1]).
-export(['Serialization-adaptive-30'/1]).
-export(['Serialization-adaptive-31'/1]).
-export(['Serialization-adaptive-32'/1]).
-export(['Serialization-adaptive-33'/1]).
-export(['Serialization-adaptive-34'/1]).
-export(['Serialization-adaptive-35'/1]).
-export(['Serialization-adaptive-36'/1]).
-export(['Serialization-adaptive-37'/1]).
-export(['Serialization-adaptive-38'/1]).
-export(['Serialization-adaptive-39'/1]).
-export(['Serialization-adaptive-40'/1]).
-export(['Serialization-adaptive-41'/1]).
-export(['Serialization-adaptive-42'/1]).
-export(['Serialization-adaptive-43'/1]).
-export(['Serialization-adaptive-44'/1]).
-export(['Serialization-adaptive-45'/1]).
-export(['Serialization-adaptive-46'/1]).
-export(['Serialization-adaptive-47'/1]).
-export(['Serialization-adaptive-48'/1]).
-export(['Serialization-adaptive-49'/1]).
-export(['Serialization-adaptive-50'/1]).
-export(['Serialization-adaptive-51'/1]).
-export(['Serialization-adaptive-52'/1]).
-export(['Serialization-adaptive-53'/1]).
-export(['Serialization-adaptive-54'/1]).
-export(['Serialization-adaptive-55'/1]).
-export(['Serialization-adaptive-56'/1]).
-export(['Serialization-adaptive-57'/1]).
-export(['Serialization-adaptive-58'/1]).
-export(['Serialization-adaptive-59'/1]).
-export(['Serialization-adaptive-60'/1]).
-export(['Serialization-adaptive-61'/1]).
-export(['Serialization-adaptive-62'/1]).
-export(['Serialization-adaptive-63'/1]).
-export(['Serialization-adaptive-64'/1]).
-export(['Serialization-adaptive-65'/1]).
-export(['Serialization-adaptive-66'/1]).
-export(['Serialization-adaptive-67'/1]).
-export(['Serialization-adaptive-68'/1]).
-export(['Serialization-adaptive-69'/1]).
-export(['Serialization-adaptive-70'/1]).
-export(['Serialization-adaptive-71'/1]).
-export(['Serialization-adaptive-72'/1]).
-export(['Serialization-adaptive-73'/1]).
-export(['Serialization-adaptive-74'/1]).
-export(['Serialization-adaptive-75'/1]).
-export(['Serialization-adaptive-76'/1]).
-export(['Serialization-adaptive-77'/1]).
-export(['Serialization-adaptive-78'/1]).
-export(['Serialization-adaptive-79'/1]).
-export(['Serialization-adaptive-80'/1]).
-export(['Serialization-adaptive-81'/1]).
-export(['Serialization-adaptive-82'/1]).
-export(['Serialization-adaptive-83'/1]).
-export(['Serialization-adaptive-84'/1]).
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
   __BaseDir = filename:join(TD, "ser"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'Serialization-adaptive-01', 
    'Serialization-adaptive-02', 
    'Serialization-adaptive-03', 
    'Serialization-adaptive-04', 
    'Serialization-adaptive-05', 
    'Serialization-adaptive-06', 
    'Serialization-adaptive-07', 
    'Serialization-adaptive-08', 
    'Serialization-adaptive-09', 
    'Serialization-adaptive-10', 
    'Serialization-adaptive-11', 
    'Serialization-adaptive-12', 
    'Serialization-adaptive-13', 
    'Serialization-adaptive-14', 
    'Serialization-adaptive-15', 
    'Serialization-adaptive-16', 
    'Serialization-adaptive-17', 
    'Serialization-adaptive-18', 
    'Serialization-adaptive-19', 
    'Serialization-adaptive-20', 
    'Serialization-adaptive-21', 
    'Serialization-adaptive-22', 
    'Serialization-adaptive-23']}, 
   {group_1, [parallel], [
    'Serialization-adaptive-24', 
    'Serialization-adaptive-25', 
    'Serialization-adaptive-26', 
    'Serialization-adaptive-27', 
    'Serialization-adaptive-28', 
    'Serialization-adaptive-29', 
    'Serialization-adaptive-30', 
    'Serialization-adaptive-31', 
    'Serialization-adaptive-32', 
    'Serialization-adaptive-33', 
    'Serialization-adaptive-34', 
    'Serialization-adaptive-35', 
    'Serialization-adaptive-36', 
    'Serialization-adaptive-37', 
    'Serialization-adaptive-38', 
    'Serialization-adaptive-39', 
    'Serialization-adaptive-40', 
    'Serialization-adaptive-41', 
    'Serialization-adaptive-42', 
    'Serialization-adaptive-43', 
    'Serialization-adaptive-44', 
    'Serialization-adaptive-45', 
    'Serialization-adaptive-46', 
    'Serialization-adaptive-47']}, 
   {group_2, [parallel], [
    'Serialization-adaptive-48', 
    'Serialization-adaptive-49', 
    'Serialization-adaptive-50', 
    'Serialization-adaptive-51', 
    'Serialization-adaptive-52', 
    'Serialization-adaptive-53', 
    'Serialization-adaptive-54', 
    'Serialization-adaptive-55', 
    'Serialization-adaptive-56', 
    'Serialization-adaptive-57', 
    'Serialization-adaptive-58', 
    'Serialization-adaptive-59', 
    'Serialization-adaptive-60', 
    'Serialization-adaptive-61', 
    'Serialization-adaptive-62', 
    'Serialization-adaptive-63', 
    'Serialization-adaptive-64', 
    'Serialization-adaptive-65', 
    'Serialization-adaptive-66', 
    'Serialization-adaptive-67', 
    'Serialization-adaptive-68', 
    'Serialization-adaptive-69', 
    'Serialization-adaptive-70', 
    'Serialization-adaptive-71']}, 
   {group_3, [parallel], [
    'Serialization-adaptive-72', 
    'Serialization-adaptive-73', 
    'Serialization-adaptive-74', 
    'Serialization-adaptive-75', 
    'Serialization-adaptive-76', 
    'Serialization-adaptive-77', 
    'Serialization-adaptive-78', 
    'Serialization-adaptive-79', 
    'Serialization-adaptive-80', 
    'Serialization-adaptive-81', 
    'Serialization-adaptive-82', 
    'Serialization-adaptive-83', 
    'Serialization-adaptive-84']}].

'Serialization-adaptive-01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        [ ] 

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-01.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-02'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        map { } 

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-02.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^map\\{\\}$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-03'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        ()

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-03.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-04'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        5

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-04.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^5$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-05'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        \"simple string\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-05.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\"simple string\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-06'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        document { element test {\"content\"}}

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-06.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^<test>content</test>$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-07'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        element test {\"content\"}

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-07.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^<test>content</test>$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-08'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        <test>content</test>/text()

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-08.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^content$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-09'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        <!--comment-->

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-09.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^<!--comment-->$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        <?target instruction ?>

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^<\\?target instruction \\?>$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        attribute att-name { \"att-value\" }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^att-name\\s*=\\s*['\"]att-value['\"]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        fn:exists#1

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^fn:exists#1$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        function($a) { $a }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\(anonymous-function\\)#1$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        (1,2,3)

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1\\r?\\n2\\r?\\n3"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \"-\";
        
        (1,2,3)

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1-2-3"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [1, true(), not(true()), (), \"string\"]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[1,true\\(\\),false\\(\\),\\(\\),\"string\"\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [(1,2,3),(4,5,6)]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[\\(1,2,3\\),\\(4,5,6\\)\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \"-\";
        
        [(1,2,3),(4,5,6)]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[\\(1,2,3\\),\\(4,5,6\\)\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
  
        map { \"one\" : 1, xs:QName(\"one\") : 1 }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"map\\{\"one\":1,Q\\{\\}one:1\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"map\\{Q\\{\\}one:1,\"one\":1\\}"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [<element>content</element>, attribute att-name { \"att-value\" }]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[[(]?<element>content</element>[)]?,[(]?att-name=\"att-value\"[)]?\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";

        map { \"key\": attribute att-name { \"att-value\" }}

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^map\\{\"key\":att-name=\"att-value\"\\}$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [ xs:float(\"INF\"), xs:double(\"-INF\") ]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[xs:float\\(\"INF\"\\),-INF\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map { \"infinity\": xs:float(\"INF\") }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"map\\{\"infinity\":xs:float\\(\"INF\"\\)\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [ xs:float(\"NaN\") ]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[xs:float\\(\"NaN\"\\)\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map { \"not-a-number\": xs:double(\"NaN\") }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^map\\{\"not-a-number\":NaN\\}$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [fn:exists#1, function($a) { $a }]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[fn:exists#1,\\(anonymous-function\\)#1\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [fn:exists#1, 1, <element>content</element>, (), function($a) { $a }, map { \"infinity\":xs:double(\"INF\") }, \"json-string\"]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\\[[(]?fn:exists#1[)]?,[(]?1[)]?,[(]?<element>content</element>[)]?,\\(\\),[(]?\\(anonymous-function\\)#1[)]?,[(]?map\\{\"infinity\":INF[)]?\\},[(]?\"json-string\"[)]?\\]$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        ()

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \" \";
        
        1 to 5

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1 2 3 4 5"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \" \";
        
        \"the quick\", \"brown fox\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\"the quick\" \"brown fox\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map{ \"2015\":1, 2015:2, xs:gYear('2015'):3 }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\"2015\":1"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"2015:2"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"xs:gYear\\(\"2015\"\\):3"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map{ \"O'Neil says \"\"no\"\"\": 1 }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"map\\{\"O'Neil says \"\"no\"\"\":1\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"map\\{'O''Neil says \"no\"':1\\}"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map{ 1:\"O'Neil says \"\"no\"\"\" }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"map\\{1:\"O'Neil says \"\"no\"\"\"\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"map\\{1:'O''Neil says \"no\"'\\}"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \"~\";
        
        map{ \"a\":(\"quotes (\"\")\", \"apos (')\") }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^map\\{\"a\":\\(\"quotes \\(\"\"\\)\",\"apos \\('\\)\"\\)\\}$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:untypedAtomic(\"untypedAtomic\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"untypedAtomic\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:dateTime('1999-05-31T13:20:00-05:00')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:dateTime\\(\"1999-05-31T13:20:00-05:00\"\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"xsd-version:1.1"}. 
'Serialization-adaptive-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:date(\"1999-05-31\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:date\\(\"1999-05-31\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:time(\"12:00:00\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:time\\(\"12:00:00\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:duration(\"P1Y2M3DT10H30M23S\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:duration\\(\"P1Y2M3DT10H30M23S\"\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:yearMonthDuration(\"P1Y2M\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:duration\\(\"P1Y2M\"\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:dayTimeDuration(\"P3DT10H30M\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:duration\\(\"P3DT10H30M\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:float(\"1e0\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:float\\(\"1\"\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:double(1e0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1\\.0e0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:decimal(1.2)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1.2"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:integer(1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:nonPositiveInteger(\"0\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:negativeInteger(-1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"-1"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:long(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:int(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:short(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:byte(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:nonNegativeInteger(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedLong(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedInt(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedShort(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedByte(0)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:positiveInteger(1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gYearMonth(\"2000-01\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:gYearMonth\\(\"2000-01\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gYear(\"2000\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:gYear\\(\"2000\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gMonthDay(\"--01-01\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:gMonthDay\\(\"--01-01\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gDay(\"---01\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:gDay\\(\"---01\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gMonth(\"--01\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:gMonth\\(\"--01\"\\)"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:string(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:normalizedString(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:token(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-67'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:language(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-68'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:NMTOKEN(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-69'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:Name(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-70'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:NCName(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-71'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:ID(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-72'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:IDREF(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-73'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:ENTITY(\"en\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'en'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"en\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-74'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:boolean(true())
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^true\\(\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-75'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:base64Binary(\"01001010\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:base64Binary\\(\"01001010\"\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-76'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:hexBinary(\"D74D35D35D35\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^xs:hexBinary\\(\"D74D35D35D35\"\\)$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-77'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:anyURI(\"http://www.example.org/\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^\"http://www.example.org/\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-78'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:QName(\"xs:integer\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"^Q\\{http://www.w3.org/2001/XMLSchema\\}integer$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-adaptive-79'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        \"'\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^\"'\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^''''$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-80'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        '\"'
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'\"'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"\"\"\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-81'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:untypedAtomic(\"'\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^\"'\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^''''$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-82'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:untypedAtomic('\"')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'\"'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"\"\"\"$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-83'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:anyURI(\"'\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^\"'\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^''''$"/utf8>>,<<"">>) of 
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
'Serialization-adaptive-84'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:anyURI('\"')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-adaptive-84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"^'\"'$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"^\"\"\"\"$"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FORG0001") of 
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