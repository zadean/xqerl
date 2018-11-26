-module('fn_nilled_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-nilled-1'/1]).
-export(['fn-nilled-2'/1]).
-export(['fn-nilled-3'/1]).
-export(['fn-nilled-4'/1]).
-export(['fn-nilled-5'/1]).
-export(['fn-nilled-6'/1]).
-export(['fn-nilled-7'/1]).
-export(['fn-nilled-8'/1]).
-export(['fn-nilled-9'/1]).
-export(['fn-nilled-10'/1]).
-export(['fn-nilled-11'/1]).
-export(['fn-nilled-12'/1]).
-export(['fn-nilled-13'/1]).
-export(['fn-nilled-14'/1]).
-export(['fn-nilled-15'/1]).
-export(['fn-nilled-16'/1]).
-export(['fn-nilled-17'/1]).
-export(['fn-nilled-18'/1]).
-export(['fn-nilled-19'/1]).
-export(['fn-nilled-20'/1]).
-export(['fn-nilled-21'/1]).
-export(['fn-nilled-22'/1]).
-export(['fn-nilled-23'/1]).
-export(['fn-nilled-24'/1]).
-export(['fn-nilled-25'/1]).
-export(['fn-nilled-26'/1]).
-export(['fn-nilled-27'/1]).
-export(['fn-nilled-28'/1]).
-export(['fn-nilled-29'/1]).
-export(['fn-nilled-30'/1]).
-export(['fn-nilled-31'/1]).
-export(['fn-nilled-32'/1]).
-export(['fn-nilled-33'/1]).
-export(['fn-nilled-34'/1]).
-export(['fn-nilled-35'/1]).
-export(['fn-nilled-36'/1]).
-export(['fn-nilled-37'/1]).
-export(['fn-nilled-38'/1]).
-export(['fn-nilled-39'/1]).
-export(['fn-nilled-40'/1]).
-export(['fn-nilled-41'/1]).
-export(['fn-nilled-42'/1]).
-export(['fn-nilled-43'/1]).
-export(['fn-nilled-44'/1]).
-export(['fn-nilled-45'/1]).
-export(['fn-nilled-46'/1]).
-export(['fn-nilled-47'/1]).
-export(['fn-nilled-48'/1]).
-export(['fn-nilled-49'/1]).
-export(['fn-nilled-50'/1]).
-export(['fn-nilled-51'/1]).
-export(['fn-nilled-52'/1]).
-export(['fn-nilled-53'/1]).
-export(['K-NilledFunc-1'/1]).
-export(['K-NilledFunc-2'/1]).
-export(['K-NilledFunc-3'/1]).
-export(['K-NilledFunc-4'/1]).
-export(['cbcl-nilled-001'/1]).
-export(['cbcl-nilled-002'/1]).
-export(['cbcl-nilled-003'/1]).
-export(['cbcl-nilled-004'/1]).
-export(['cbcl-nilled-005'/1]).
-export(['cbcl-nilled-006'/1]).
-export(['cbcl-nilled-007'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-nilled-1', 
'fn-nilled-2', 
'fn-nilled-3', 
'fn-nilled-4', 
'fn-nilled-5', 
'fn-nilled-6', 
'fn-nilled-7', 
'fn-nilled-8', 
'fn-nilled-9', 
'fn-nilled-10', 
'fn-nilled-11', 
'fn-nilled-12', 
'fn-nilled-13', 
'fn-nilled-14', 
'fn-nilled-15', 
'fn-nilled-16', 
'fn-nilled-17', 
'fn-nilled-18', 
'fn-nilled-19', 
'fn-nilled-20', 
'fn-nilled-21', 
'fn-nilled-22', 
'fn-nilled-23', 
'fn-nilled-24', 
'fn-nilled-25', 
'fn-nilled-26', 
'fn-nilled-27', 
'fn-nilled-28', 
'fn-nilled-29', 
'fn-nilled-30', 
'fn-nilled-31', 
'fn-nilled-32', 
'fn-nilled-33', 
'fn-nilled-34', 
'fn-nilled-35', 
'fn-nilled-36', 
'fn-nilled-37', 
'fn-nilled-38', 
'fn-nilled-39', 
'fn-nilled-40', 
'fn-nilled-41', 
'fn-nilled-42', 
'fn-nilled-43', 
'fn-nilled-44', 
'fn-nilled-45', 
'fn-nilled-46', 
'fn-nilled-47', 
'fn-nilled-48', 
'fn-nilled-49', 
'fn-nilled-50', 
'fn-nilled-51', 
'fn-nilled-52', 
'fn-nilled-53', 
'K-NilledFunc-1', 
'K-NilledFunc-2', 
'K-NilledFunc-3', 
'K-NilledFunc-4', 
'cbcl-nilled-001', 
'cbcl-nilled-002', 
'cbcl-nilled-003', 
'cbcl-nilled-004', 
'cbcl-nilled-005', 
'cbcl-nilled-006', 
'cbcl-nilled-007'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('nillable',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "nilled/nillable.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest/nillable",""}]},
{schemas, [{filename:join(__BaseDir, "nilled/nillable.xsd"),"http://www.w3.org/XQueryTest/nillable"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('nillable-Q',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "nilled/nillable.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "nilled/nillable.xsd"),"http://www.w3.org/XQueryTest/nillable"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('validate',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "nilled/validate.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "nilled/validate.xsd"),"http://www.w3.org/XQueryTest/testcases"}]}, 
{resources, []}, 
{modules, []}
].
'fn-nilled-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:nilled(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:count(fn:nilled(/works[1]/employee[2]/child::text()[last()]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(/works[1]/employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe size = \"5\"/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"true\"/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"false\"/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:false()}\"/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>,\"A Second Argument\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:not(fn:nilled(<shoe xsi:nil=\"{fn:false()}\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:not(fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) and fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) or fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:boolean(fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:boolean(fn:nilled(<shoe xsi:nil=\"{fn:false()}\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(document {<aList><anElement>data</anElement></aList>})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(attribute size {1})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<!-- This is a comment node -->)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " fn:nilled(<?format role=\"output\" ?>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "nilled()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/*/nilled()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/works/employee[1]/@gender/nilled()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/works/employee[1]/empnum/text()/nilled()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (<shoe xsi:nil=\"true\"/>)/fn:nilled()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "23[nilled()]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "nilled#0[nilled()]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "current-date() gt current-date()+xs:dayTimeDuration('P1D') or nilled()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-nilled-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-nilled-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-nilled-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'K-NilledFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20 XQ10"}. 
'K-NilledFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "nilled((), \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NilledFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NilledFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(nilled( () ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NilledFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NilledFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "nilled(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NilledFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-nilled-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-nilled-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-nilled-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-nilled-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-nilled-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-nilled-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-nilled-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	empty(nilled( <?foo ?> ))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-nilled-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.