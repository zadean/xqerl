-module('method_xhtml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-xhtml-1'/1]).
-export(['Serialization-xhtml-1a'/1]).
-export(['Serialization-xhtml-2'/1]).
-export(['Serialization-xhtml-3'/1]).
-export(['Serialization-xhtml-4'/1]).
-export(['Serialization-xhtml-18'/1]).
-export(['Serialization-xhtml-19a'/1]).
-export(['Serialization-xhtml-19b'/1]).
-export(['Serialization-xhtml-19c'/1]).
-export(['Serialization-xhtml-20'/1]).
-export(['Serialization-xhtml-21'/1]).
-export(['Serialization-xhtml-22'/1]).
-export(['Serialization-xhtml-23'/1]).
-export(['Serialization-xhtml-24'/1]).
-export(['Serialization-xhtml-25'/1]).
-export(['Serialization-xhtml-26'/1]).
-export(['Serialization-xhtml-27'/1]).
-export(['Serialization-xhtml-27a'/1]).
-export(['Serialization-xhtml-28'/1]).
-export(['Serialization-xhtml-29'/1]).
-export(['Serialization-xhtml-30'/1]).
-export(['Serialization-xhtml-31'/1]).
-export(['Serialization-xhtml-32'/1]).
-export(['Serialization-xhtml-33'/1]).
-export(['Serialization-xhtml-34'/1]).
-export(['Serialization-xhtml-35'/1]).
-export(['Serialization-xhtml-36'/1]).
-export(['Serialization-xhtml-36a'/1]).
-export(['Serialization-xhtml-37'/1]).
-export(['Serialization-xhtml-37a'/1]).
-export(['Serialization-xhtml-38'/1]).
-export(['Serialization-xhtml-39'/1]).
-export(['Serialization-xhtml-40'/1]).
-export(['Serialization-xhtml-41'/1]).
-export(['Serialization-xhtml-42'/1]).
-export(['Serialization-xhtml-50'/1]).
-export(['Serialization-xhtml-51'/1]).
-export(['Serialization-xhtml-52'/1]).
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
'Serialization-xhtml-1', 
'Serialization-xhtml-1a', 
'Serialization-xhtml-2', 
'Serialization-xhtml-3', 
'Serialization-xhtml-4', 
'Serialization-xhtml-18', 
'Serialization-xhtml-19a', 
'Serialization-xhtml-19b', 
'Serialization-xhtml-19c', 
'Serialization-xhtml-20', 
'Serialization-xhtml-21', 
'Serialization-xhtml-22', 
'Serialization-xhtml-23', 
'Serialization-xhtml-24', 
'Serialization-xhtml-25', 
'Serialization-xhtml-26', 
'Serialization-xhtml-27', 
'Serialization-xhtml-27a', 
'Serialization-xhtml-28', 
'Serialization-xhtml-29', 
'Serialization-xhtml-30', 
'Serialization-xhtml-31', 
'Serialization-xhtml-32', 
'Serialization-xhtml-33', 
'Serialization-xhtml-34', 
'Serialization-xhtml-35', 
'Serialization-xhtml-36', 
'Serialization-xhtml-36a', 
'Serialization-xhtml-37', 
'Serialization-xhtml-37a', 
'Serialization-xhtml-38', 
'Serialization-xhtml-39', 
'Serialization-xhtml-40', 
'Serialization-xhtml-41', 
'Serialization-xhtml-42', 
'Serialization-xhtml-50', 
'Serialization-xhtml-51', 
'Serialization-xhtml-52'
].

'Serialization-xhtml-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area /><base /><br /><col /><embed /><frame /><hr /><img /><input /><isindex /><link /><meta /><param /></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-1a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";

<html><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-1a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<html><body><area></area><base></base><br></br><col></col><embed></embed><frame></frame><hr></hr><img></img><input></input><isindex></isindex><link></link><meta></meta><param></param></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;        
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<html><body><area/><base/><br/><col/><embed/><hr/><img/><input/><keygen/><link/><meta/><param/><source/><track/><wbr/></body></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html><body><area\\s*/><base\\s*/><br\\s*/><col\\s*/><embed\\s*/><hr\\s*/><img\\s*/><input\\s*/><keygen\\s*/><link\\s*/><meta\\s*/><param\\s*/><source\\s*/><track\\s*/><wbr\\s*/></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE .*"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;        
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area /><base /><br /><col /><embed /><frame /><hr /><img /><input /><isindex /><link /><meta /><param /></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area></area><base></base><br></br><col></col><embed></embed><frame></frame><hr></hr><img></img><input></input><isindex></isindex><link></link><meta></meta><param></param></body></html>"/utf8>>,<<"">>) of 
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
'Serialization-xhtml-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;        
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area/><base/><br/><col/><embed
/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area\\s*/><base\\s*/><br\\s*/><col\\s*/><embed\\s*/><frame></frame><hr\\s*/><img\\s*/><input\\s*/><isindex></isindex><link\\s*/><meta\\s*/><param\\s*/></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE .*"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare namespace ex = \"http://www.example.org\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";
declare option output:cdata-section-elements  \"p em ex:isle1\";

<html><body><p>YES<em>YES</em>YES<ex:isle1>YES<ex:isle2>NO</ex:isle2>YES</ex:isle1></p></body></html>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"!\\[CDATA\\[YES\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"isle2>NO</"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<">YES<"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"<!\\[CDATA\\[NO\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-19a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare namespace ex = \"http://www.example.org\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:cdata-section-elements  \"p em ex:isle1\";

<html><body><p>YES<em>YES</em>YES<ex:isle1>YES<ex:isle2>NO</ex:isle2>YES</ex:isle1></p></body></html>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-19a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"!\\[CDATA\\[YES\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"isle2>NO</"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<">YES<"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"<!\\[CDATA\\[NO\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-19b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare namespace html = \"http://www.w3.org/1999/xhtml\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";
declare option output:cdata-section-elements  \"b html:em\";

<html><body><p><b>YES</b><em>NO</em><html:b>NO</html:b><html:em>YES</html:em></p></body></html>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-19b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"!\\[CDATA\\[YES\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<">NO</"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<">YES<"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"<!\\[CDATA\\[NO\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-19c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare namespace html = \"http://www.w3.org/1999/xhtml\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:cdata-section-elements  \"b html:em\";

<html><body><p><b>YES</b><em>NO</em><html:b>NO</html:b><html:em>YES</html:em></p></body></html>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-19c.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"!\\[CDATA\\[YES\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<">NO</"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<">YES<"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"<!\\[CDATA\\[NO\\]\\]>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<html></html>"/utf8>>,<<"">>) of 
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
'Serialization-xhtml-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<html></html>"/utf8>>,<<"">>) of 
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
'Serialization-xhtml-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<html></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE .*"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";

<foo/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<foo></foo>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<foo/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<foo></foo>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";
declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case (   case xqerl_test:assert_serialization_match(Res,<<"DOCTYPE"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";
declare option output:doctype-system  \"http://www.w3.org/TR/REC-html40/strict.dtd\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s+SYSTEM\\s+(['\"])http://www.w3.org/TR/REC-html40/strict.dtd\\1\\s*>\\s*<html"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"html.+<html"/utf8>>,<<"s">>) of 
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
'Serialization-xhtml-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s*>\\s*<html"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"PUBLIC"/utf8>>,<<"s">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-27a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-27a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s*>\\s*<html"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"PUBLIC"/utf8>>,<<"s">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:doctype-system  \"about:legacy-compat\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!.......\\s+html\\s+......\\s+(['\"])about:legacy-compat\\1\\s*>\\s*<html"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+....\\s+SYSTEM"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";
declare option output:doctype-system  \"http://www.w3.org/TR/REC-html40/strict.dtd\";
declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!.......\\s+html\\s+......\\s+(['\"])\\-//W3C//DTD HTML 4.0//EN\\1\\s*(['\"])http://www.w3.org/TR/REC\\-html40/strict.dtd\\2\\s*>\\s*<html"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+....\\s+PUBLIC"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:doctype-system  \"http://www.w3.org/TR/REC-html40/strict.dtd\";
declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!.......\\s+html\\s+......\\s+(['\"])\\-//W3C//DTD HTML 4.0//EN\\1\\s*(['\"])http://www.w3.org/TR/REC\\-html40/strict.dtd\\2\\s*>\\s*<html"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+....\\s+PUBLIC"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " () ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " () ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"4.0\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"><head/></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<head><meta "/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"http-equiv=['\"]content-type['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"content=['\"]text/html; *charset=UTF-8['\"]"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"4.0\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta http-equiv=\"Content-Type\" content=\"text/html;version='3.0'\"/></head></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<head><meta "/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"http-equiv=['\"]content-type['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"content=['\"]text/html; *charset=UTF-8['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"meta.*meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"4.0\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<html></html>"/utf8>>,<<"">>) of 
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
'Serialization-xhtml-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"5.0\";

<html><head/></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s*>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"http-equiv=['\"]content-type['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"content=['\"]text/html; *charset=UTF-8['\"]"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-36a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"5.0\";

<html xmlns=\"http://www.w3.org/1999/xhtml\"><head/></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-36a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s*>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"http-equiv=['\"]content-type['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"content=['\"]text/html; *charset=UTF-8['\"]"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"5.0\";

<html><head><meta http-equiv=\"Content-Type\" content=\"text/html;version='3.0'\"/></head></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s*>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"http-equiv=['\"]content-type['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"content=['\"]text/html; *charset=UTF-8['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"meta.*meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-37a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"5.0\";

<html><head><meta http-equiv=\"Content-Type\" content=\"text/html;version='3.0'\"/></head></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-37a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE\\s+html\\s*>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"http-equiv=['\"]content-type['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"content=['\"]text/html; *charset=UTF-8['\"]"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"meta.*meta"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"yes\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"5.0\";

<html/>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE +html *>\\s*<html></html>"/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!....... +(html|HTML) *>\\s*<html></html>"/utf8>>,<<"">>) of 
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
'Serialization-xhtml-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"no\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"4.0\";

<html><head/></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<html><head></head></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:include-content-type  \"no\";
declare option output:media-type  \"text/html\";
declare option output:encoding  \"UTF-8\";
declare option output:html-version  \"5.0\";

<html><head/></html>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<!....... +(html|HTML) *>\\s*<html><head></head></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"<!DOCTYPE .*"/utf8>>,<<"i">>) of 
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
'Serialization-xhtml-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"4.0\";

let $html := <html><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>
return [ $html ]
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<html><body><area></area><base></base><br></br><col></col><embed></embed><frame></frame><hr></hr><img></img><input></input><isindex></isindex><link></link><meta></meta><param></param></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"xhtml\";
        map { } 

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";
declare option output:include-content-type  \"yes\";

<h:html xmlns:h=\"http://www.w3.org/1999/xhtml\">
  <h:head><h:title>Test doc</h:title></h:head>
  <h:body><h:h1>Header</h:h1><h:p>Content</h:p></h:body>
</h:html>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta.*?/><title>Test doc</title></head><body><h1>Header</h1><p>Content</p></body></html>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<h:html xmlns:h=\"http://www.w3.org/1999/xhtml\">
  <h:body><h:h1>Header</h:h1><h:p>Content</h:p><svg:svg xmlns:svg=\"http://www.w3.org/2000/svg\"><svg:rectangle/></svg:svg></h:body>
</h:html>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<svg xmlns=\"http://www.w3.org/2000/svg\"><rectangle></rectangle></svg>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-xhtml-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"xhtml\";
declare option output:indent  \"no\";
declare option output:html-version  \"5.0\";

<h:html xmlns:h=\"http://www.w3.org/1999/xhtml\">
  <h:body><h:h1>Pythagoras</h:h1><h:p><m:math xmlns:m=\"http://www.w3.org/1998/Math/MathML\"> <m:mrow> <m:msup><m:mi> a </m:mi><m:mn>2</m:mn></m:msup> <m:mo> + </m:mo> <m:msup><m:mi> b </m:mi><m:mn>2</m:mn></m:msup> <m:mo> = </m:mo> <m:msup><m:mi> c </m:mi><m:mn>2</m:mn></m:msup> </m:mrow> </m:math></h:p></h:body>
</h:html>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Serialization-xhtml-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mrow><msup><mi> a </mi>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.