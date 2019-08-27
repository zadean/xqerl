-module('fn_id_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-id-1'/1]).
-export(['fn-id-2'/1]).
-export(['fn-id-3'/1]).
-export(['fn-id-4'/1]).
-export(['fn-id-5'/1]).
-export(['fn-id-6'/1]).
-export(['fn-id-7'/1]).
-export(['fn-id-8'/1]).
-export(['fn-id-9'/1]).
-export(['fn-id-10'/1]).
-export(['fn-id-11'/1]).
-export(['fn-id-12'/1]).
-export(['fn-id-13'/1]).
-export(['fn-id-14'/1]).
-export(['fn-id-15'/1]).
-export(['fn-id-16'/1]).
-export(['fn-id-17'/1]).
-export(['fn-id-18'/1]).
-export(['fn-id-19'/1]).
-export(['fn-id-20'/1]).
-export(['fn-id-21'/1]).
-export(['fn-id-23'/1]).
-export(['fn-id-24'/1]).
-export(['fn-id-25'/1]).
-export(['fn-id-dtd-5'/1]).
-export(['fn-id-dtd-6'/1]).
-export(['fn-id-dtd-7'/1]).
-export(['fn-id-dtd-8'/1]).
-export(['fn-id-dtd-9'/1]).
-export(['fn-id-dtd-10'/1]).
-export(['fn-id-dtd-11'/1]).
-export(['fn-id-dtd-12'/1]).
-export(['fn-id-dtd-13'/1]).
-export(['fn-id-dtd-14'/1]).
-export(['fn-id-dtd-15'/1]).
-export(['fn-id-dtd-16'/1]).
-export(['fn-id-dtd-17'/1]).
-export(['fn-id-dtd-18'/1]).
-export(['fn-id-dtd-19'/1]).
-export(['fn-id-dtd-20'/1]).
-export(['fn-id-dtd-21'/1]).
-export(['fn-id-22'/1]).
-export(['fn-id-dtd-23'/1]).
-export(['K2-SeqIDFunc-1'/1]).
-export(['K2-SeqIDFunc-2'/1]).
-export(['K2-SeqIDFunc-3'/1]).
-export(['K2-SeqIDFunc-4'/1]).
-export(['K2-SeqIDFunc-5'/1]).
-export(['K2-SeqIDFunc-6'/1]).
-export(['K2-SeqIDFunc-7'/1]).
-export(['K2-SeqIDFunc-8'/1]).
-export(['K2-SeqIDFunc-9'/1]).
-export(['K2-SeqIDFunc-10'/1]).
-export(['K2-SeqIDFunc-11'/1]).
-export(['K2-SeqIDFunc-12'/1]).
-export(['K2-SeqIDFunc-13'/1]).
-export(['K2-SeqIDFunc-14'/1]).
-export(['K2-SeqIDFunc-15'/1]).
-export(['cbcl-id-001'/1]).
-export(['cbcl-id-002'/1]).
-export(['cbcl-id-003'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-id-1', 
    'fn-id-2', 
    'fn-id-3', 
    'fn-id-4', 
    'fn-id-5', 
    'fn-id-6', 
    'fn-id-7', 
    'fn-id-8', 
    'fn-id-9', 
    'fn-id-10', 
    'fn-id-11', 
    'fn-id-12', 
    'fn-id-13', 
    'fn-id-14', 
    'fn-id-15', 
    'fn-id-16', 
    'fn-id-17', 
    'fn-id-18', 
    'fn-id-19', 
    'fn-id-20', 
    'fn-id-21', 
    'fn-id-23', 
    'fn-id-24']}, 
   {group_1, [parallel], [
    'fn-id-25', 
    'fn-id-dtd-5', 
    'fn-id-dtd-6', 
    'fn-id-dtd-7', 
    'fn-id-dtd-8', 
    'fn-id-dtd-9', 
    'fn-id-dtd-10', 
    'fn-id-dtd-11', 
    'fn-id-dtd-12', 
    'fn-id-dtd-13', 
    'fn-id-dtd-14', 
    'fn-id-dtd-15', 
    'fn-id-dtd-16', 
    'fn-id-dtd-17', 
    'fn-id-dtd-18', 
    'fn-id-dtd-19', 
    'fn-id-dtd-20', 
    'fn-id-dtd-21', 
    'fn-id-22', 
    'fn-id-dtd-23', 
    'K2-SeqIDFunc-1', 
    'K2-SeqIDFunc-2', 
    'K2-SeqIDFunc-3', 
    'K2-SeqIDFunc-4']}, 
   {group_2, [parallel], [
    'K2-SeqIDFunc-5', 
    'K2-SeqIDFunc-6', 
    'K2-SeqIDFunc-7', 
    'K2-SeqIDFunc-8', 
    'K2-SeqIDFunc-9', 
    'K2-SeqIDFunc-10', 
    'K2-SeqIDFunc-11', 
    'K2-SeqIDFunc-12', 
    'K2-SeqIDFunc-13', 
    'K2-SeqIDFunc-14', 
    'K2-SeqIDFunc-15', 
    'cbcl-id-001', 
    'cbcl-id-002', 
    'cbcl-id-003']}].
environment('id-idref-dtd',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "id/iddtd.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('id-idref',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "id/id.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "id/id.xsd"),"http://www.w3.org/XQueryTest/ididrefs"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('UsingXMLId',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "id/UsingXMLId.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('XMLIdMany',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "id/XMLIDMany.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('auction-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-id-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"argument 1\", / ,\"Argument 3\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 5)[fn:id(\"argument1\")]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"argument1\", \"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        let $var := copy:copy(/*) return fn:id(\"argument1\", $var)
      ", 
   Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODC0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-id-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $data := document {
            <stuff>
               <thing xml:id=\" a123 \">once</thing>
               <thing xml:id=\" a456 \">twice</thing>
               <thing xml:id=\" 789x \">thrice</thing>
            </stuff>
          }
          return $data/id('a123')/string()  
         
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQDY0091") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQDY0091 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"once\"") of 
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
'fn-id-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $data := document {
            <stuff>
               <thing xml:id=\" a123 \">once</thing>
               <thing xml:id=\" a456 \">twice</thing>
               <thing xml:id=\"789x\">thrice</thing>
            </stuff>
          }  
          return $data/id('789x')
         
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQDY0091") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQDY0091 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id1\", /IDS[1])/string(@anId)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "id1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:id(\"nomatchingid\", /IDS[1]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id2 id2\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id1 id2\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1 elementwithid-2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id1 nomatching\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:id(\"nomatching1 nomatching2\", /IDS[1]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"\", /IDS[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(fn:substring(\"1id3\",2), /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id4\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"p1:id5\", /IDS[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id1 id1\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(\"id1 ID1\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(fn:lower-case(\"ID1\"), /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(fn:upper-case(\"id5\"), /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(fn:concat(\"i\",\"d1\"), /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(xs:string(\"id1\"), /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(fn:string-join((\"id\",\"1\"),\"\"), /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 5)[ fn:id(\"argument1\",.)]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-id-dtd-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; fn:id(\"id1 id2\", /IDS[1])/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-id-dtd-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithid-1 elementwithid-2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "id((), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3)[id(\"ncname\", .)]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3)[id(\"ncname\")]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", copy:copy((//comment())[1]))
      ", 
   Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODC0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", copy:copy((//processing-instruction())[1]))
      ", 
   Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODC0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", copy:copy(/*))
      ", 
   Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODC0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", (copy:copy(/*)//*:NegativeComments)[last()])
      ", 
   Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODC0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e><e/><e/><e/><e/><e/><e/><e/><b xml:id=\"foo\"/><e/></e>return id(\"foo\", $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODC0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := document {<e> <e/> <e/> <e/> <e/> <e/> <e/> <e/> <b xml:id=\"foo\"/> <e/> </e>} return id(\"foo\", $i)/name()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in id((\"short\", \"positiveInteger\")) return $i/@name/string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UsingXMLId',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "positiveInteger short") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "id((\"short\"), //xs:element/@name[. = \"positiveInteger\"])/@name", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UsingXMLId',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "short") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "id((\".\", \"short\", \"123\"), //xs:element/@name[. = \"positiveInteger\"])/@name", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UsingXMLId',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "short") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(//b/@ref)/data(exactly-one(@*))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('XMLIdMany',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b c d e f i") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in id((\"short positiveInteger\")) return $i/@name/string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UsingXMLId',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "positiveInteger short") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIDFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:id(string-join(reverse(//b/@ref), '	'))/data(exactly-one(@*))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('XMLIdMany',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqIDFunc-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b c d e f i") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-id-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( fn:id( local:generate(0), $doc) )
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-id-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-id-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	let $doc := document { <root /> } return fn:empty( fn:id( (), $doc) )
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-id-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
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
'cbcl-id-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( $doc/fn:id( local:generate(0)) )
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-id-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.