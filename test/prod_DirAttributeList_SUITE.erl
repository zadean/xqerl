-module('prod_DirAttributeList_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Constr-attr-syntax-1'/1]).
-export(['Constr-attr-syntax-2'/1]).
-export(['Constr-attr-syntax-3'/1]).
-export(['Constr-attr-syntax-4'/1]).
-export(['Constr-attr-syntax-5'/1]).
-export(['Constr-attr-syntax-6'/1]).
-export(['Constr-attr-syntax-7'/1]).
-export(['Constr-attr-syntax-8'/1]).
-export(['Constr-attr-syntax-9'/1]).
-export(['Constr-attr-syntax-10'/1]).
-export(['Constr-attr-parent-1'/1]).
-export(['Constr-attr-nsdecl-1'/1]).
-export(['Constr-attr-nsdecl-2'/1]).
-export(['Constr-attr-nspre-1'/1]).
-export(['Constr-attr-nspre-2'/1]).
-export(['Constr-attr-nsprein-1'/1]).
-export(['Constr-attr-nsprein-2'/1]).
-export(['Constr-attr-nsprein-3'/1]).
-export(['Constr-attr-nsprein-4'/1]).
-export(['Constr-attr-distnames-1'/1]).
-export(['Constr-attr-distnames-2'/1]).
-export(['Constr-attr-distnames-3'/1]).
-export(['Constr-attr-distnames-4'/1]).
-export(['Constr-attr-content-1'/1]).
-export(['Constr-attr-content-2'/1]).
-export(['Constr-attr-content-3'/1]).
-export(['Constr-attr-content-4'/1]).
-export(['Constr-attr-content-5'/1]).
-export(['Constr-attr-ws-1'/1]).
-export(['Constr-attr-ws-2'/1]).
-export(['Constr-attr-ws-3'/1]).
-export(['Constr-attr-ws-4'/1]).
-export(['Constr-attr-ws-5'/1]).
-export(['Constr-attr-entref-1'/1]).
-export(['Constr-attr-entref-2'/1]).
-export(['Constr-attr-charref-1'/1]).
-export(['Constr-attr-enclexpr-1'/1]).
-export(['Constr-attr-enclexpr-2'/1]).
-export(['Constr-attr-enclexpr-3'/1]).
-export(['Constr-attr-enclexpr-4'/1]).
-export(['Constr-attr-enclexpr-5'/1]).
-export(['Constr-attr-enclexpr-6'/1]).
-export(['Constr-attr-enclexpr-7'/1]).
-export(['Constr-attr-enclexpr-8'/1]).
-export(['Constr-attr-enclexpr-9'/1]).
-export(['Constr-attr-enclexpr-10'/1]).
-export(['Constr-attr-enclexpr-11'/1]).
-export(['Constr-attr-enclexpr-12'/1]).
-export(['Constr-attr-enclexpr-13'/1]).
-export(['Constr-attr-enclexpr-14'/1]).
-export(['Constr-attr-enclexpr-15'/1]).
-export(['Constr-attr-enclexpr-16'/1]).
-export(['Constr-attr-id-1'/1]).
-export(['Constr-attr-id-2'/1]).
-export(['K2-DirectConElemAttr-1'/1]).
-export(['K2-DirectConElemAttr-2'/1]).
-export(['K2-DirectConElemAttr-3'/1]).
-export(['K2-DirectConElemAttr-4'/1]).
-export(['K2-DirectConElemAttr-4a'/1]).
-export(['K2-DirectConElemAttr-5'/1]).
-export(['K2-DirectConElemAttr-6'/1]).
-export(['K2-DirectConElemAttr-6a'/1]).
-export(['K2-DirectConElemAttr-7'/1]).
-export(['K2-DirectConElemAttr-8'/1]).
-export(['K2-DirectConElemAttr-9'/1]).
-export(['K2-DirectConElemAttr-10'/1]).
-export(['K2-DirectConElemAttr-11'/1]).
-export(['K2-DirectConElemAttr-12'/1]).
-export(['K2-DirectConElemAttr-13'/1]).
-export(['K2-DirectConElemAttr-14'/1]).
-export(['K2-DirectConElemAttr-15'/1]).
-export(['K2-DirectConElemAttr-16'/1]).
-export(['K2-DirectConElemAttr-17'/1]).
-export(['K2-DirectConElemAttr-18'/1]).
-export(['K2-DirectConElemAttr-19'/1]).
-export(['K2-DirectConElemAttr-20'/1]).
-export(['K2-DirectConElemAttr-21'/1]).
-export(['K2-DirectConElemAttr-22'/1]).
-export(['K2-DirectConElemAttr-23'/1]).
-export(['K2-DirectConElemAttr-24'/1]).
-export(['K2-DirectConElemAttr-25'/1]).
-export(['K2-DirectConElemAttr-26'/1]).
-export(['K2-DirectConElemAttr-27'/1]).
-export(['K2-DirectConElemAttr-28'/1]).
-export(['K2-DirectConElemAttr-29'/1]).
-export(['K2-DirectConElemAttr-30'/1]).
-export(['K2-DirectConElemAttr-31'/1]).
-export(['K2-DirectConElemAttr-32'/1]).
-export(['K2-DirectConElemAttr-33'/1]).
-export(['K2-DirectConElemAttr-34'/1]).
-export(['K2-DirectConElemAttr-35'/1]).
-export(['K2-DirectConElemAttr-36'/1]).
-export(['K2-DirectConElemAttr-37'/1]).
-export(['K2-DirectConElemAttr-38'/1]).
-export(['K2-DirectConElemAttr-39'/1]).
-export(['K2-DirectConElemAttr-40'/1]).
-export(['K2-DirectConElemAttr-41'/1]).
-export(['K2-DirectConElemAttr-42'/1]).
-export(['K2-DirectConElemAttr-43'/1]).
-export(['K2-DirectConElemAttr-44'/1]).
-export(['K2-DirectConElemAttr-45'/1]).
-export(['K2-DirectConElemAttr-46'/1]).
-export(['K2-DirectConElemAttr-47'/1]).
-export(['K2-DirectConElemAttr-48'/1]).
-export(['K2-DirectConElemAttr-49'/1]).
-export(['K2-DirectConElemAttr-50'/1]).
-export(['K2-DirectConElemAttr-51'/1]).
-export(['K2-DirectConElemAttr-52'/1]).
-export(['K2-DirectConElemAttr-53'/1]).
-export(['K2-DirectConElemAttr-54'/1]).
-export(['K2-DirectConElemAttr-55'/1]).
-export(['K2-DirectConElemAttr-56'/1]).
-export(['K2-DirectConElemAttr-57'/1]).
-export(['K2-DirectConElemAttr-58'/1]).
-export(['K2-DirectConElemAttr-59'/1]).
-export(['K2-DirectConElemAttr-60'/1]).
-export(['K2-DirectConElemAttr-61'/1]).
-export(['K2-DirectConElemAttr-62'/1]).
-export(['K2-DirectConElemAttr-63'/1]).
-export(['K2-DirectConElemAttr-64'/1]).
-export(['K2-DirectConElemAttr-65'/1]).
-export(['K2-DirectConElemAttr-66'/1]).
-export(['K2-DirectConElemAttr-67'/1]).
-export(['K2-DirectConElemAttr-68'/1]).
-export(['K2-DirectConElemAttr-69'/1]).
-export(['K2-DirectConElemAttr-70'/1]).
-export(['K2-DirectConElemAttr-71'/1]).
-export(['K2-DirectConElemAttr-72'/1]).
-export(['K2-DirectConElemAttr-73'/1]).
-export(['K2-DirectConElemAttr-74'/1]).
-export(['K2-DirectConElemAttr-75'/1]).
-export(['K2-DirectConElemAttr-76'/1]).
-export(['DirectConElemAttr-1'/1]).
-export(['DirectConElemAttr-2'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'Constr-attr-syntax-1', 
'Constr-attr-syntax-2', 
'Constr-attr-syntax-3', 
'Constr-attr-syntax-4', 
'Constr-attr-syntax-5', 
'Constr-attr-syntax-6', 
'Constr-attr-syntax-7', 
'Constr-attr-syntax-8', 
'Constr-attr-syntax-9', 
'Constr-attr-syntax-10', 
'Constr-attr-parent-1', 
'Constr-attr-nsdecl-1', 
'Constr-attr-nsdecl-2', 
'Constr-attr-nspre-1', 
'Constr-attr-nspre-2', 
'Constr-attr-nsprein-1', 
'Constr-attr-nsprein-2', 
'Constr-attr-nsprein-3', 
'Constr-attr-nsprein-4', 
'Constr-attr-distnames-1', 
'Constr-attr-distnames-2', 
'Constr-attr-distnames-3', 
'Constr-attr-distnames-4', 
'Constr-attr-content-1', 
'Constr-attr-content-2', 
'Constr-attr-content-3', 
'Constr-attr-content-4', 
'Constr-attr-content-5', 
'Constr-attr-ws-1', 
'Constr-attr-ws-2', 
'Constr-attr-ws-3', 
'Constr-attr-ws-4', 
'Constr-attr-ws-5', 
'Constr-attr-entref-1', 
'Constr-attr-entref-2', 
'Constr-attr-charref-1', 
'Constr-attr-enclexpr-1', 
'Constr-attr-enclexpr-2', 
'Constr-attr-enclexpr-3', 
'Constr-attr-enclexpr-4', 
'Constr-attr-enclexpr-5', 
'Constr-attr-enclexpr-6', 
'Constr-attr-enclexpr-7', 
'Constr-attr-enclexpr-8', 
'Constr-attr-enclexpr-9', 
'Constr-attr-enclexpr-10', 
'Constr-attr-enclexpr-11', 
'Constr-attr-enclexpr-12', 
'Constr-attr-enclexpr-13', 
'Constr-attr-enclexpr-14', 
'Constr-attr-enclexpr-15', 
'Constr-attr-enclexpr-16', 
'Constr-attr-id-1', 
'Constr-attr-id-2', 
'K2-DirectConElemAttr-1', 
'K2-DirectConElemAttr-2', 
'K2-DirectConElemAttr-3', 
'K2-DirectConElemAttr-4', 
'K2-DirectConElemAttr-4a', 
'K2-DirectConElemAttr-5', 
'K2-DirectConElemAttr-6', 
'K2-DirectConElemAttr-6a', 
'K2-DirectConElemAttr-7', 
'K2-DirectConElemAttr-8', 
'K2-DirectConElemAttr-9', 
'K2-DirectConElemAttr-10', 
'K2-DirectConElemAttr-11', 
'K2-DirectConElemAttr-12', 
'K2-DirectConElemAttr-13', 
'K2-DirectConElemAttr-14', 
'K2-DirectConElemAttr-15', 
'K2-DirectConElemAttr-16', 
'K2-DirectConElemAttr-17', 
'K2-DirectConElemAttr-18', 
'K2-DirectConElemAttr-19', 
'K2-DirectConElemAttr-20', 
'K2-DirectConElemAttr-21', 
'K2-DirectConElemAttr-22', 
'K2-DirectConElemAttr-23', 
'K2-DirectConElemAttr-24', 
'K2-DirectConElemAttr-25', 
'K2-DirectConElemAttr-26', 
'K2-DirectConElemAttr-27', 
'K2-DirectConElemAttr-28', 
'K2-DirectConElemAttr-29', 
'K2-DirectConElemAttr-30', 
'K2-DirectConElemAttr-31', 
'K2-DirectConElemAttr-32', 
'K2-DirectConElemAttr-33', 
'K2-DirectConElemAttr-34', 
'K2-DirectConElemAttr-35', 
'K2-DirectConElemAttr-36', 
'K2-DirectConElemAttr-37', 
'K2-DirectConElemAttr-38', 
'K2-DirectConElemAttr-39', 
'K2-DirectConElemAttr-40', 
'K2-DirectConElemAttr-41', 
'K2-DirectConElemAttr-42', 
'K2-DirectConElemAttr-43', 
'K2-DirectConElemAttr-44', 
'K2-DirectConElemAttr-45', 
'K2-DirectConElemAttr-46', 
'K2-DirectConElemAttr-47', 
'K2-DirectConElemAttr-48', 
'K2-DirectConElemAttr-49', 
'K2-DirectConElemAttr-50', 
'K2-DirectConElemAttr-51', 
'K2-DirectConElemAttr-52', 
'K2-DirectConElemAttr-53', 
'K2-DirectConElemAttr-54', 
'K2-DirectConElemAttr-55', 
'K2-DirectConElemAttr-56', 
'K2-DirectConElemAttr-57', 
'K2-DirectConElemAttr-58', 
'K2-DirectConElemAttr-59', 
'K2-DirectConElemAttr-60', 
'K2-DirectConElemAttr-61', 
'K2-DirectConElemAttr-62', 
'K2-DirectConElemAttr-63', 
'K2-DirectConElemAttr-64', 
'K2-DirectConElemAttr-65', 
'K2-DirectConElemAttr-66', 
'K2-DirectConElemAttr-67', 
'K2-DirectConElemAttr-68', 
'K2-DirectConElemAttr-69', 
'K2-DirectConElemAttr-70', 
'K2-DirectConElemAttr-71', 
'K2-DirectConElemAttr-72', 
'K2-DirectConElemAttr-73', 
'K2-DirectConElemAttr-74', 
'K2-DirectConElemAttr-75', 
'K2-DirectConElemAttr-76', 
'DirectConElemAttr-1', 
'DirectConElemAttr-2'
].

'Constr-attr-syntax-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"value\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr1=\"val1\" attr2=\"val2\" attr3=\"val3\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr1=\"val1\" attr2=\"val2\" attr3=\"val3\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr='value'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=''''/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"'\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"\"\"\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&quot;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr='value\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"value'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr1=\"val1\" attr2=\"val2\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr1=\"val1\" attr2=\"val2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr = \"value\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-syntax-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"value\" />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-syntax-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-parent-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in <elem attr=\"value\"/> return $x is $x/@attr/..", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-parent-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nsdecl-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((<elem xmlns:foo=\"http://ns.example.com/uri\"/>)/@*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nsdecl-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nsdecl-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((<elem xmlns=\"http://ns.example.com/uri\"/>)/@*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nsdecl-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nspre-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace foo=\"http://www.w3.org/XQueryTest/Construct\"; <elem foo:attr=\"value\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nspre-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nspre-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\"><child foo:attr=\"value\"/></elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nspre-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\"><child foo:attr=\"value\"/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nsprein-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nsprein-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nsprein-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem foo:attr=\"value\" xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nsprein-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nsprein-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem att=\"{<p:e/>/namespace-uri()}\" xmlns:p=\"http://ns.example.com/uri\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nsprein-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem att=\"http://ns.example.com/uri\" xmlns:p=\"http://ns.example.com/uri\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-nsprein-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem att=\"{<e2 a2=\"{<e3 a3=\"{<p:e/>/namespace-uri()}\"></e3>/@a3}\"></e2>/@a2}\" 
                                     xmlns:p=\"http://ns.example.com/uri\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-nsprein-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem att=\"http://ns.example.com/uri\" xmlns:p=\"http://ns.example.com/uri\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-distnames-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"val1\" attr=\"val2\" attr2=\"val3\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-distnames-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-distnames-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"val1\" attr2=\"val2\" attr=\"val3\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-distnames-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-distnames-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr1=\"val1\" attr=\"val2\" attr2=\"val3\" attr=\"val4\" attr3=\"val5\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-distnames-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-distnames-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" xmlns:bar=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"val1\" bar:attr=\"val2\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-distnames-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-content-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"abxxyz123890!@#$%^*()[]\\|?/>:;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-content-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<elem attr=\"abxxyz123890!@#$%^*()[]\\|?/&gt;:;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<elem attr=\"abxxyz123890!@#$%^*()[]\\|?/>:;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-content-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-content-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-content-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-content-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-content-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"<\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-content-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-content-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"&\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-content-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-ws-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\" \"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-ws-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\" \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-ws-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\" \"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-ws-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\" \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-ws-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"&#xd;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-ws-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&#xD;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-ws-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"&#xa;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-ws-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&#xA;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-ws-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"&#x9;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-ws-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&#x9;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-entref-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"&amp;&lt;&gt;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-entref-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&amp;&lt;&gt;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-entref-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-length(string((<elem attr=\"&amp;&lt;&gt;\"/>)/@attr))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-entref-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-charref-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"&#x30;&#x31;&#x32;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-charref-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"012\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{1,'string',3.14,xs:float('1.2345e-2'),xs:dateTime('2002-04-02T12:00:00-01:00')}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1 string 3.14 0.012345 2002-04-02T12:00:00-01:00\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{<elem>123</elem>, (<elem attr='456'/>)/@attr, (<elem>789</elem>)/text()}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"123 456 789\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{1,'',2}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1  2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{1,<a/>,2}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1  2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"123{456}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"123456\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{123}456\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"123456\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"1{2,3}{4,5}6{<a>7</a>}{<a>8</a>}9\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"12 34 56789\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"{(1,2)}{3}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1 23\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'Constr-attr-enclexpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"z{}z\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"zz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"z{ }z\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"zz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"z{ (:comment:) }z\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"zz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"abc{ 23 (:\":) }xyz\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"abc23xyz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"abc{ 23 (:{:) }xyz\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"abc23xyz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"abc{ 23 (:}:) }xyz\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"abc23xyz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-enclexpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"abc{ (# }xyz\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-enclexpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-id-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem xml:id=\"ncname\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-id-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xml:id=\"ncname\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-attr-id-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem xml:id=\" a{'b c d',' '}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Constr-attr-id-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<elem xml:id=\"ab c d\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQDY0091") of 
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
'K2-DirectConElemAttr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<ncname (:a misplaced comment:)/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<(:a misplaced comment:)ncname/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<ncname></ ncname>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'K2-DirectConElemAttr-4a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<ncname></ncname (:a misplaced comment:)>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-4a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0118") of 
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
'K2-DirectConElemAttr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<ncname>content</ncname > = 'content'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'K2-DirectConElemAttr-6a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<ncname></ncnameNOTBALANCED>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-6a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<![CDATA[a string]]>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"\"\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr='''/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"content<content\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"content}content\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"content{1\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{{{\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"content}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"<foo/>\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"<?target content?>\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"<!-- a comment-->\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"<![CDATA[content]]>\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr=\"content'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr='content\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo (:comment :)/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=(:comment:)\"value\" />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr(:comment:)=\"value\" />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"value\" (:comment:) attr2=\"value\" />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<foo attr=\"\"\"\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<foo attr='\"\"'/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<foo attr=\"''\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "''") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<foo attr=''''/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "'") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"x{<e>a</e>, <e>b</e>, <e>c</e>, 1, 2, 3}y\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"xa b c 1 2 3y\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<elem attr=\"{comment {\" content \"}}\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name(<elem attr=\"{comment {\" content \"}}\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attr") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<elem attr=\"{processing-instruction name {\" content \"}}\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name(<elem attr=\"{processing-instruction name {\" content \"}}\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attr") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name(<elem attr=\"{attribute name {\" content \"}}\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attr") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(<elem attr=\"{attribute name {\" content \"}}\"/>/@attr)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem attr1=\"\"\"\" attr2='''' attr3=\"''\" attr4='\"\"' attr5=\"'\" attr6='\"'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr1=\"&quot;\" attr2=\"'\" attr3=\"''\" attr4=\"&quot;&quot;\" attr5=\"'\" attr6=\"&quot;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{<foo attr=\"foo\"/>}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo attr=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{<!-- comment -->}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo attr=\" comment \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo attr=\"{<?target dat a ?>}\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo attr=\"dat a \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.com/level/file.ext\"; <e xml:base=\"../\">{ static-base-uri()}</e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:base=\"../\">http://example.com/level/file.ext</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://example.com/level/file.ext\"; <e xml:base=\"http://example.com/2/2\">{ static-base-uri()}</e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:base=\"http://example.com/2/2\">http://example.com/level/file.ext</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> { <b attr=\"fo\" a=\"bo\"/>/@* } </e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"fo\" a=\"bo\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "data(<e foo=\"content\"/>/@*) instance of xs:untypedAtomic", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a foo=\"1\"fb=\"1\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b=\"1\" c=\"1\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"1\" c=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b=\"1\" c=\"1\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"1\" c=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a foo='1'fb='1'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b='1' c='1'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"1\" c=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b=\"1\"/a=\"1\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b='1'/a='1'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b=\"1\">a=\"1\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b='1'>a='1'/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr=\"content\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr='content'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr=\"content\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr='content'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr='con", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr=\"con", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr=", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr=", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a attr", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b='1'/", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-67'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a b='1'/", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-68'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns=\"\" xmlns=\"\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-69'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e xmlns:xml=\"http://www.w3.org/XML/1998/namespace\" xmlns:xml=\"http://www.w3.org/XML/1998/namespace\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-70'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://typedecl\"; namespace-uri-from-QName(node-name(exactly-one(<e attr=\"foo\"/>/@attr))) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-71'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://typedecl\"; namespace-uri-from-QName(node-name(exactly-one(<e>{attribute attr {()} }/</e>/@attr))) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-72'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "namespace-uri-from-QName(node-name(exactly-one(<e xmlns=\"http://example.com/\">{attribute attr {()} }/</e>/@attr))) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-73'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://example.com/\"; namespace-uri-from-QName(node-name(attribute e {()})) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-74'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"{1}&#86;{1}&#86;\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"1V1V\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-75'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K2-DirectConElemAttr-75                         :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Mix several ways for creating text for various kinds of nodes. This test is useful if an implementation is performing normalization of such constructors. :)
(:*******************************************************:)
<e attribute=\"{
\"abc\",
\"def\",
\"ghi\",
1,
2,
3,
xs:untypedAtomic(\"abc\"),
text {\"a text node\"},
text {\"a text node\"},
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\")
}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
text {\"a text node\"},
{\"xs:string\"}
{\"xs:string\"}textnode\">
{ 

attribute name
{
text {\"a text node\"},
text {\"a text node\"},
\"abc\",
\"def\",
text {\"a text node\"},
\"ghi\",
1,
2,
text {\"a text node\"},
3,
xs:untypedAtomic(\"abc\"),
xs:untypedAtomic(\"def\"),
text {\"a text node\"},
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\")
}
}
{
text {\"a text node\"},
text {\"a text node\"},
\"abc\",
\"def\",
text {\"a text node\"},
\"ghi\",
1,
2,
text {\"a text node\"},
3,
xs:untypedAtomic(\"abc\"),
text {\"a text node\"},
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\")
}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
{\"xs:string\"}
{\"xs:string\"}
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},

{
comment
{
\"abc\",
\"def\",
\"ghi\",
1,
2,
3,
xs:untypedAtomic(\"abc\"),
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
text {\"a text node\"},
text {\"a text node\"},
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\"
},
processing-instruction target
{
\"abc\",
\"def\",
\"ghi\",
1,
2,
3,
xs:untypedAtomic(\"abc\"),
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
text {\"a text node\"},
text {\"a text node\"},
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
text {\"a text node\"},
\"xs:string\"
},
text
{
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},
\"abc\",
\"def\",
\"ghi\",
1,
2,
text {\"a text node\"},
3,
xs:untypedAtomic(\"abc\"),
text {\"a text node\"},
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
text {\"a text node\"}
}

}
</e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(__BaseDir, "DirAttributeList/K2-DirectConElemAttr-75.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DirectConElemAttr-76'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:t() { text{\"\"}, text{\"[\"}, text{\"3\"}, text{\"]\"}, text{\"\"} }; 
        declare variable $var := (text{\"\"}, text{\"[\"}, text{\"3\"}, text{\"]\"}, text{\"\"}); 
        <out fromFunction=\"{local:t()}\" fromVariable=\"{$var}\"/>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DirectConElemAttr-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out fromFunction=\" [ 3 ] \" fromVariable=\" [ 3 ] \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'DirectConElemAttr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<shoe name=\" \"\"\"\" \"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "DirectConElemAttr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<shoe name=\" &#34;&#34; \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'DirectConElemAttr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<shoe name=\" '''''''' \"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "DirectConElemAttr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<shoe name=\" '''''''' \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.