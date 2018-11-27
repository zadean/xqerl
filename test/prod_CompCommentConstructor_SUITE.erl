-module('prod_CompCommentConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Constr-compcomment-enclexpr-1'/1]).
-export(['Constr-compcomment-enclexpr-2'/1]).
-export(['Constr-compcomment-enclexpr-3'/1]).
-export(['Constr-compcomment-enclexpr-4'/1]).
-export(['Constr-compcomment-enclexpr-5'/1]).
-export(['Constr-compcomment-doc-1'/1]).
-export(['Constr-compcomment-parent-1'/1]).
-export(['Constr-compcomment-string-1'/1]).
-export(['Constr-compcomment-data-1'/1]).
-export(['Constr-compcomment-nested-1'/1]).
-export(['Constr-compcomment-nested-2'/1]).
-export(['Constr-compcomment-nested-3'/1]).
-export(['Constr-compcomment-dash-1'/1]).
-export(['Constr-compcomment-dash-2'/1]).
-export(['Constr-compcomment-dash-3'/1]).
-export(['Constr-compcomment-dash-4'/1]).
-export(['Constr-compcomment-doubledash-1'/1]).
-export(['Constr-compcomment-doubledash-2'/1]).
-export(['Constr-compcomment-doubledash-3'/1]).
-export(['Constr-compcomment-doubledash-4'/1]).
-export(['Constr-compcomment-doubledash-5'/1]).
-export(['K2-ComputeConComment-1'/1]).
-export(['K2-ComputeConComment-2'/1]).
-export(['K2-ComputeConComment-3'/1]).
-export(['K2-ComputeConComment-4'/1]).
-export(['K2-ComputeConComment-4a'/1]).
-export(['K2-ComputeConComment-5'/1]).
-export(['cbcl-constr-compcomment-001'/1]).
-export(['cbcl-constr-compcomment-002'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Constr-compcomment-enclexpr-1', 
'Constr-compcomment-enclexpr-2', 
'Constr-compcomment-enclexpr-3', 
'Constr-compcomment-enclexpr-4', 
'Constr-compcomment-enclexpr-5', 
'Constr-compcomment-doc-1', 
'Constr-compcomment-parent-1', 
'Constr-compcomment-string-1', 
'Constr-compcomment-data-1', 
'Constr-compcomment-nested-1', 
'Constr-compcomment-nested-2', 
'Constr-compcomment-nested-3', 
'Constr-compcomment-dash-1', 
'Constr-compcomment-dash-2', 
'Constr-compcomment-dash-3', 
'Constr-compcomment-dash-4', 
'Constr-compcomment-doubledash-1', 
'Constr-compcomment-doubledash-2', 
'Constr-compcomment-doubledash-3', 
'Constr-compcomment-doubledash-4', 
'Constr-compcomment-doubledash-5', 
'K2-ComputeConComment-1', 
'K2-ComputeConComment-2', 
'K2-ComputeConComment-3', 
'K2-ComputeConComment-4', 
'K2-ComputeConComment-4a', 
'K2-ComputeConComment-5', 
'cbcl-constr-compcomment-001', 
'cbcl-constr-compcomment-002'
].
environment('DupNode',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "CompAttrConstructor/DupNode.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'Constr-compcomment-enclexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {1,'string',3.14,xs:float('1.2345e-2'),xs:dateTime('2002-04-02T12:00:00-01:00')}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-enclexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--1 string 3.14 0.012345 2002-04-02T12:00:00-01:00-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-enclexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {<elem>123</elem>, (<elem attr='456'/>)/@attr, (<elem>789</elem>)/text()}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-enclexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--123 456 789-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-enclexpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {1,'',2}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-enclexpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--1  2-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-enclexpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {1,<a/>,2}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-enclexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--1  2-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-enclexpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {/root}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-enclexpr-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--texttext-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-doc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {., .}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-doc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--texttext texttext-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-parent-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((comment {'comment'})/..)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-parent-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-string-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(comment {'a', element a {}, 'b'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-string-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a  b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-data-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:data(comment {'a', element a {}, 'b'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-data-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a  b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-nested-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {comment {'one', comment {'two'}}, 'three', comment {'four'}}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-nested-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--one two three four-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-nested-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<elem>{comment {'one'}}<a>{comment {'two'}}</a>{comment {'three'}}</elem>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-nested-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><!--one--><a><!--two--></a><!--three--></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-nested-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {comment {'one'}, <a/>, comment {'two'}, <b/>, comment {'three'}}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-nested-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--one--><a/><!--two--><b/><!--three-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-dash-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'-'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-dash-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-dash-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'comment-'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-dash-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-dash-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'comment&#x2D;'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-dash-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-dash-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {//*:test-case[@name=\"Constr-compcomment-dash-4\"]/*:description}", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "CompCommentConstructor.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-dash-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-doubledash-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'--'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-doubledash-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-doubledash-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'com--ment'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-doubledash-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-doubledash-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'com&#x2D;&#x2D;ment'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-doubledash-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-doubledash-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {//*:test-case[@name=\"Constr-compcomment-doubledash-4\"]/*:description}", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "CompCommentConstructor.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-doubledash-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-compcomment-doubledash-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {'com','-','-','ment'}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-compcomment-doubledash-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--com - - ment-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ComputeConComment-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {\"name\"} {\"content\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ComputeConComment-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ComputeConComment-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment name {\"content\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ComputeConComment-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ComputeConComment-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment {()}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ComputeConComment-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!---->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ComputeConComment-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'K2-ComputeConComment-4a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "comment{}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ComputeConComment-4a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"count($result) = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"comment()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "") of 
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
'K2-ComputeConComment-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "data(comment {\"content\"}) instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ComputeConComment-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-constr-compcomment-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<element> { comment { '-', '-' } } </element>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-constr-compcomment-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-constr-compcomment-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:tag($arg) as element() { element { 'tag' } { $arg } }; 
      	<element> { comment { 'comment', local:tag('--') } } </element>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-constr-compcomment-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.