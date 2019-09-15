-module('prod_DirElemConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['Constr-elem-empty-1'/1]).
-export(['Constr-elem-empty-2'/1]).
-export(['Constr-elem-empty-3'/1]).
-export(['Constr-elem-empty-4'/1]).
-export(['Constr-elem-empty-5'/1]).
-export(['Constr-elem-matchtag-1'/1]).
-export(['Constr-elem-matchtag-2'/1]).
-export(['Constr-elem-matchtag-2a'/1]).
-export(['Constr-elem-curlybr-1'/1]).
-export(['Constr-elem-curlybr-2'/1]).
-export(['Constr-elem-curlybr-3'/1]).
-export(['Constr-elem-curlybr-4'/1]).
-export(['Constr-elem-curlybr-5'/1]).
-export(['Constr-elem-curlybr-6'/1]).
-export(['K2-DirectConElem-1'/1]).
-export(['K2-DirectConElem-2'/1]).
-export(['K2-DirectConElem-3'/1]).
-export(['K2-DirectConElem-4'/1]).
-export(['K2-DirectConElem-5'/1]).
-export(['K2-DirectConElem-6'/1]).
-export(['K2-DirectConElem-7'/1]).
-export(['K2-DirectConElem-8'/1]).
-export(['K2-DirectConElem-9'/1]).
-export(['K2-DirectConElem-10'/1]).
-export(['K2-DirectConElem-11'/1]).
-export(['K2-DirectConElem-12'/1]).
-export(['K2-DirectConElem-13'/1]).
-export(['K2-DirectConElem-14'/1]).
-export(['K2-DirectConElem-15'/1]).
-export(['K2-DirectConElem-16'/1]).
-export(['K2-DirectConElem-17'/1]).
-export(['K2-DirectConElem-18'/1]).
-export(['K2-DirectConElem-19'/1]).
-export(['K2-DirectConElem-20'/1]).
-export(['K2-DirectConElem-21'/1]).
-export(['K2-DirectConElem-22'/1]).
-export(['K2-DirectConElem-23'/1]).
-export(['K2-DirectConElem-24'/1]).
-export(['K2-DirectConElem-25'/1]).
-export(['K2-DirectConElem-26'/1]).
-export(['K2-DirectConElem-27'/1]).
-export(['K2-DirectConElem-28'/1]).
-export(['K2-DirectConElem-29'/1]).
-export(['K2-DirectConElem-30'/1]).
-export(['K2-DirectConElem-31'/1]).
-export(['K2-DirectConElem-32'/1]).
-export(['K2-DirectConElem-33'/1]).
-export(['K2-DirectConElem-34'/1]).
-export(['K2-DirectConElem-35'/1]).
-export(['K2-DirectConElem-36'/1]).
-export(['K2-DirectConElem-37'/1]).
-export(['K2-DirectConElem-38'/1]).
-export(['K2-DirectConElem-39'/1]).
-export(['K2-DirectConElem-40'/1]).
-export(['K2-DirectConElem-41'/1]).
-export(['K2-DirectConElem-42'/1]).
-export(['K2-DirectConElem-43'/1]).
-export(['K2-DirectConElem-44'/1]).
-export(['K2-DirectConElem-45'/1]).
-export(['K2-DirectConElem-46'/1]).
-export(['K2-DirectConElem-47'/1]).
-export(['K2-DirectConElem-48'/1]).
-export(['K2-DirectConElem-49'/1]).
-export(['K2-DirectConElem-50'/1]).
-export(['K2-DirectConElem-51'/1]).
-export(['K2-DirectConElem-52'/1]).
-export(['K2-DirectConElem-53'/1]).
-export(['K2-DirectConElem-53a'/1]).
-export(['K2-DirectConElem-54'/1]).
-export(['cbcl-directconelem-001'/1]).
-export(['cbcl-directconelem-002'/1]).
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
    'Constr-elem-empty-1', 
    'Constr-elem-empty-2', 
    'Constr-elem-empty-3', 
    'Constr-elem-empty-4', 
    'Constr-elem-empty-5', 
    'Constr-elem-matchtag-1', 
    'Constr-elem-matchtag-2', 
    'Constr-elem-matchtag-2a', 
    'Constr-elem-curlybr-1', 
    'Constr-elem-curlybr-2', 
    'Constr-elem-curlybr-3', 
    'Constr-elem-curlybr-4', 
    'Constr-elem-curlybr-5', 
    'Constr-elem-curlybr-6', 
    'K2-DirectConElem-1', 
    'K2-DirectConElem-2', 
    'K2-DirectConElem-3', 
    'K2-DirectConElem-4', 
    'K2-DirectConElem-5', 
    'K2-DirectConElem-6', 
    'K2-DirectConElem-7', 
    'K2-DirectConElem-8', 
    'K2-DirectConElem-9']}, 
   {group_1, [parallel], [
    'K2-DirectConElem-10', 
    'K2-DirectConElem-11', 
    'K2-DirectConElem-12', 
    'K2-DirectConElem-13', 
    'K2-DirectConElem-14', 
    'K2-DirectConElem-15', 
    'K2-DirectConElem-16', 
    'K2-DirectConElem-17', 
    'K2-DirectConElem-18', 
    'K2-DirectConElem-19', 
    'K2-DirectConElem-20', 
    'K2-DirectConElem-21', 
    'K2-DirectConElem-22', 
    'K2-DirectConElem-23', 
    'K2-DirectConElem-24', 
    'K2-DirectConElem-25', 
    'K2-DirectConElem-26', 
    'K2-DirectConElem-27', 
    'K2-DirectConElem-28', 
    'K2-DirectConElem-29', 
    'K2-DirectConElem-30', 
    'K2-DirectConElem-31', 
    'K2-DirectConElem-32', 
    'K2-DirectConElem-33']}, 
   {group_2, [parallel], [
    'K2-DirectConElem-34', 
    'K2-DirectConElem-35', 
    'K2-DirectConElem-36', 
    'K2-DirectConElem-37', 
    'K2-DirectConElem-38', 
    'K2-DirectConElem-39', 
    'K2-DirectConElem-40', 
    'K2-DirectConElem-41', 
    'K2-DirectConElem-42', 
    'K2-DirectConElem-43', 
    'K2-DirectConElem-44', 
    'K2-DirectConElem-45', 
    'K2-DirectConElem-46', 
    'K2-DirectConElem-47', 
    'K2-DirectConElem-48', 
    'K2-DirectConElem-49', 
    'K2-DirectConElem-50', 
    'K2-DirectConElem-51', 
    'K2-DirectConElem-52', 
    'K2-DirectConElem-53', 
    'K2-DirectConElem-53a', 
    'K2-DirectConElem-54', 
    'cbcl-directconelem-001', 
    'cbcl-directconelem-002']}].

'Constr-elem-empty-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-empty-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-empty-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem></elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-empty-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-empty-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((<elem/>)/node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-empty-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-empty-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((<elem></elem>)/node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-empty-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
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
'Constr-elem-empty-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-empty-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-matchtag-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem></elemother>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-matchtag-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0118 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-matchtag-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10"}. 
'Constr-elem-matchtag-2a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo:elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" xmlns:bar=\"http://www.w3.org/XQueryTest/Construct\"></bar:elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-matchtag-2a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0118 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-curlybr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>{{</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-curlybr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>{</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-curlybr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>}}</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-curlybr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>}</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-curlybr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>&#x7b;</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-curlybr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>{</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-curlybr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>&#x7d;</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-curlybr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>}</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-elem-curlybr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>{</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-curlybr-5.xq"), Qry1),
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
'Constr-elem-curlybr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>}</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-elem-curlybr-6.xq"), Qry1),
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
'K2-DirectConElem-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<pi>{<?pi x?>}</pi>) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<a attr=\"content\"><!-- NOTINC -->1<b>2<c><!-- NOTINC -->34</c><!-- NOTINC --><d/>56</b>7</a>) eq \"1234567\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-3.xq"), Qry1),
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
'K2-DirectConElem-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "< foo/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-4.xq"), Qry1),
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
'K2-DirectConElem-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo/ >", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-5.xq"), Qry1),
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
'K2-DirectConElem-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "< foo></foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-6.xq"), Qry1),
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
'K2-DirectConElem-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo>< /foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-7.xq"), Qry1),
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
'K2-DirectConElem-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo /", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-8.xq"), Qry1),
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
'K2-DirectConElem-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-9.xq"), Qry1),
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
'K2-DirectConElem-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<prefix:foo", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<prefix: foo/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-11.xq"), Qry1),
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
'K2-DirectConElem-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{'a string'}><<<\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-12.xq"), Qry1),
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
'K2-DirectConElem-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "</>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-13.xq"), Qry1),
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
'K2-DirectConElem-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> content}</e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-14.xq"), Qry1),
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
'K2-DirectConElem-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<f><c></f></c>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0118 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a><b><c/><d/><a/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-16.xq"), Qry1),
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
'K2-DirectConElem-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a><b><c/><b/><d/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-17.xq"), Qry1),
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
'K2-DirectConElem-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-18.xq"), Qry1),
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
'K2-DirectConElem-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-19.xq"), Qry1),
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
'K2-DirectConElem-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem><", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-20.xq"), Qry1),
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
'K2-DirectConElem-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem><[", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-21.xq"), Qry1),
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
'K2-DirectConElem-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem><![", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-22.xq"), Qry1),
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
'K2-DirectConElem-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem><!-", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-23.xq"), Qry1),
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
'K2-DirectConElem-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>&</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-24.xq"), Qry1),
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
'K2-DirectConElem-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem {\"attribute-name\"} = \"attribute value\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-25.xq"), Qry1),
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
'K2-DirectConElem-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attributename = {\"attribute value\"} />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-26.xq"), Qry1),
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
'K2-DirectConElem-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attributename = {\"attribute value\"}></elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-27.xq"), Qry1),
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
'K2-DirectConElem-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a></a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e>a</e>, <e>b</e>, <e>c</e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>a</e><e>b</e><e>c</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>some text<node/>some text</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>some text<node/>some text</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo > <doo/> </foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo><doo/></foo>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo><doo/></foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo><doo/></foo>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo><doo/> </foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo><doo/></foo>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo > {attribute name {\"content\"}} <doo/> </foo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo name=\"content\"><doo/></foo>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:aPrefixOtherThanXml=\"http://www.w3.org/XML/1998/namespace\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns=\"http://www.w3.org/XML/1998/namespace\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:XML=\"http://www.w3.org/XML/1998/namespace\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:xml=\"http://www.w3.org/XML/1998/namespace\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:xmlns=\"http://www.w3.org/XML/1998/namespace\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:xmlns=\"http://www.w3.org/2000/xmlns/\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:xmlns=\"http://www.example.com/\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> { document{()}/(/) } </e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> { document{()} } </e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<e>text</e>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "text") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "data(<e>text</e>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "text") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace p = \"http://www.example.com/\"; <p:e/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<p:e xmlns:p=\"http://www.example.com/\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $in := <r> <e xmlns=\"http://example.com/&lt;&gt;&quot;&apos;\"\"\"/> <e xmlns='http://example.com/&lt;&gt;&quot;&apos;'''/> <p:e xmlns:p=\"http://example.com/&lt;&gt;&quot;&apos;\"\"\"/> <p:e xmlns:p='http://example.com/&lt;&gt;&quot;&apos;'''/> </r> return <r>{for $n in $in/*/namespace-uri(.) return <e ns=\"{$n}\"/>}</r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<r><e ns=\"http://example.com/&lt;&gt;&quot;'&quot;\"/><e ns=\"http://example.com/&lt;&gt;&quot;''\"/><e ns=\"http://example.com/&lt;&gt;&quot;'&quot;\"/><e ns=\"http://example.com/&lt;&gt;&quot;''\"/></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0046 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e>]]></e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "]]>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"]]>\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"]]>\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"<\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-50.xq"), Qry1),
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
'K2-DirectConElem-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xml:id=\" fo\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:id=\"fo\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>&#223;</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>&#223;</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10"}. 
'K2-DirectConElem-53a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "namespace {\"p\"} {\"abc\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-53a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"namespace-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElem-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "namespace-node {\"p\"} {\"abc\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElem-54.xq"), Qry1),
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
'cbcl-directconelem-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

declare default element namespace \"http://example.com/0\"; 
declare namespace a = \"http://example.com/1\"; 
declare namespace b = \"http://example.com/2\"; 
declare copy-namespaces preserve,no-inherit;

declare function local:in-scope-namespace-bindings($arg)
{
  for $i in in-scope-prefixes($arg) 
  order by $i 
  return 
  concat(\"xmlns\",
         if (string-length($i) = 0)
         then \"\"
         else \":\",
         $i,
         '=\"', namespace-uri-for-prefix($i, $arg), '\"')
};

<a:outer b:outer=\"attr\" xmlns:c=\"http://example.com/3\" c:outer=\"attr\">
  <inner a=\"a:attr\" b=\"b:attr\" />
</a:outer>/(local:in-scope-namespace-bindings(.),
            '|', 
            local:in-scope-namespace-bindings((./*)[1]))

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-directconelem-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmlns:a=\"http://example.com/1\" xmlns:b=\"http://example.com/2\" xmlns:c=\"http://example.com/3\" xmlns:xml=\"http://www.w3.org/XML/1998/namespace\" | xmlns=\"http://example.com/0\" xmlns:c=\"http://example.com/3\" xmlns:xml=\"http://www.w3.org/XML/1998/namespace\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-directconelem-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

declare default element namespace \"http://example.com/0\"; 
declare namespace a = \"http://example.com/1\"; 
declare namespace b = \"http://example.com/2\"; 
declare copy-namespaces preserve,inherit;

declare function local:in-scope-namespace-bindings($arg)
{
  for $i in in-scope-prefixes($arg) 
  order by $i 
  return 
  concat(\"xmlns\",
         if (string-length($i) = 0)
         then \"\"
         else \":\",
         $i,
         '=\"', namespace-uri-for-prefix($i, $arg), '\"')
};

<a:outer b:outer=\"attr\" xmlns:c=\"http://example.com/3\" c:outer=\"attr\">
  <inner a=\"a:attr\" b=\"b:attr\" />
</a:outer>/(local:in-scope-namespace-bindings(.),
            '|', 
            local:in-scope-namespace-bindings((./*)[1]))

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-directconelem-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmlns:a=\"http://example.com/1\" xmlns:b=\"http://example.com/2\" xmlns:c=\"http://example.com/3\" xmlns:xml=\"http://www.w3.org/XML/1998/namespace\" | xmlns=\"http://example.com/0\" xmlns:c=\"http://example.com/3\" xmlns:xml=\"http://www.w3.org/XML/1998/namespace\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.