-module('op_except_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-except-node-args-001'/1]).
-export(['fn-except-node-args-002'/1]).
-export(['fn-except-node-args-003'/1]).
-export(['fn-except-node-args-004'/1]).
-export(['fn-except-node-args-005'/1]).
-export(['fn-except-node-args-006'/1]).
-export(['fn-except-node-args-007'/1]).
-export(['fn-except-node-args-008'/1]).
-export(['fn-except-node-args-009'/1]).
-export(['fn-except-node-args-010'/1]).
-export(['fn-except-node-args-011'/1]).
-export(['fn-except-node-args-012'/1]).
-export(['fn-except-node-args-013'/1]).
-export(['fn-except-node-args-014'/1]).
-export(['fn-except-node-args-015'/1]).
-export(['fn-except-node-args-016'/1]).
-export(['fn-except-node-args-017'/1]).
-export(['fn-except-node-args-018'/1]).
-export(['fn-except-node-args-019'/1]).
-export(['fn-except-node-args-020'/1]).
-export(['fn-except-node-args-021'/1]).
-export(['fn-except-node-args-022'/1]).
-export(['fn-except-node-args-023'/1]).
-export(['K2-SeqExcept-1'/1]).
-export(['K2-SeqExcept-2'/1]).
-export(['K2-SeqExcept-3'/1]).
-export(['K2-SeqExcept-4'/1]).
-export(['K2-SeqExcept-5'/1]).
-export(['K2-SeqExcept-6'/1]).
-export(['K2-SeqExcept-7'/1]).
-export(['K2-SeqExcept-8'/1]).
-export(['K2-SeqExcept-9'/1]).
-export(['K2-SeqExcept-10'/1]).
-export(['K2-SeqExcept-11'/1]).
-export(['K2-SeqExcept-12'/1]).
-export(['K2-SeqExcept-13'/1]).
-export(['K2-SeqExcept-14'/1]).
-export(['K2-SeqExcept-15'/1]).
-export(['K2-SeqExcept-16'/1]).
-export(['K2-SeqExcept-17'/1]).
-export(['K2-SeqExcept-18'/1]).
-export(['K2-SeqExcept-19'/1]).
-export(['K2-SeqExcept-20'/1]).
-export(['K2-SeqExcept-21'/1]).
-export(['K2-SeqExcept-22'/1]).
-export(['K2-SeqExcept-23'/1]).
-export(['K2-SeqExcept-24'/1]).
-export(['K2-SeqExcept-25'/1]).
-export(['K2-SeqExcept-26'/1]).
-export(['K2-SeqExcept-27'/1]).
-export(['K2-SeqExcept-28'/1]).
-export(['K2-SeqExcept-29'/1]).
-export(['K2-SeqExcept-30'/1]).
-export(['K2-SeqExcept-31'/1]).
-export(['K2-SeqExcept-32'/1]).
-export(['K2-SeqExcept-33'/1]).
-export(['K2-SeqExcept-34'/1]).
-export(['K2-SeqExcept-35'/1]).
-export(['K2-SeqExcept-36'/1]).
-export(['K2-SeqExcept-37'/1]).
-export(['K2-SeqExcept-38'/1]).
-export(['K2-SeqExcept-39'/1]).
-export(['K2-SeqExcept-40'/1]).
-export(['K2-SeqExcept-41'/1]).
-export(['K2-SeqExcept-42'/1]).
-export(['combiningnodeseqexcepthc1'/1]).
-export(['combiningnodeseqexcepthc2'/1]).
-export(['combiningnodeseqexcepthc3'/1]).
-export(['combiningnodeseqexcepthc4'/1]).
-export(['combiningnodeseqexcepthc5'/1]).
-export(['combiningnodeseqexcepthc6'/1]).
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
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-except-node-args-001', 
    'fn-except-node-args-002', 
    'fn-except-node-args-003', 
    'fn-except-node-args-004', 
    'fn-except-node-args-005', 
    'fn-except-node-args-006', 
    'fn-except-node-args-007', 
    'fn-except-node-args-008', 
    'fn-except-node-args-009', 
    'fn-except-node-args-010', 
    'fn-except-node-args-011', 
    'fn-except-node-args-012', 
    'fn-except-node-args-013', 
    'fn-except-node-args-014', 
    'fn-except-node-args-015', 
    'fn-except-node-args-016', 
    'fn-except-node-args-017', 
    'fn-except-node-args-018', 
    'fn-except-node-args-019', 
    'fn-except-node-args-020', 
    'fn-except-node-args-021', 
    'fn-except-node-args-022', 
    'fn-except-node-args-023']}, 
   {group_1, [parallel], [
    'K2-SeqExcept-1', 
    'K2-SeqExcept-2', 
    'K2-SeqExcept-3', 
    'K2-SeqExcept-4', 
    'K2-SeqExcept-5', 
    'K2-SeqExcept-6', 
    'K2-SeqExcept-7', 
    'K2-SeqExcept-8', 
    'K2-SeqExcept-9', 
    'K2-SeqExcept-10', 
    'K2-SeqExcept-11', 
    'K2-SeqExcept-12', 
    'K2-SeqExcept-13', 
    'K2-SeqExcept-14', 
    'K2-SeqExcept-15', 
    'K2-SeqExcept-16', 
    'K2-SeqExcept-17', 
    'K2-SeqExcept-18', 
    'K2-SeqExcept-19', 
    'K2-SeqExcept-20', 
    'K2-SeqExcept-21', 
    'K2-SeqExcept-22', 
    'K2-SeqExcept-23', 
    'K2-SeqExcept-24']}, 
   {group_2, [parallel], [
    'K2-SeqExcept-25', 
    'K2-SeqExcept-26', 
    'K2-SeqExcept-27', 
    'K2-SeqExcept-28', 
    'K2-SeqExcept-29', 
    'K2-SeqExcept-30', 
    'K2-SeqExcept-31', 
    'K2-SeqExcept-32', 
    'K2-SeqExcept-33', 
    'K2-SeqExcept-34', 
    'K2-SeqExcept-35', 
    'K2-SeqExcept-36', 
    'K2-SeqExcept-37', 
    'K2-SeqExcept-38', 
    'K2-SeqExcept-39', 
    'K2-SeqExcept-40', 
    'K2-SeqExcept-41', 
    'K2-SeqExcept-42', 
    'combiningnodeseqexcepthc1', 
    'combiningnodeseqexcepthc2', 
    'combiningnodeseqexcepthc3', 
    'combiningnodeseqexcepthc4', 
    'combiningnodeseqexcepthc5', 
    'combiningnodeseqexcepthc6']}].
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('acme_corp',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "union/acme_corp.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('bib2',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "union/bib2.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-except-node-args-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book[1]/title except /bib/book[1]/title", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book/title except /bib/book[1]/title", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/bib/book[3] except root(exactly-one(/bib/book[3]/title)))/string(@year)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book[3]/title/text() except /bib/book/title/text()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/processing-instruction() except /processing-instruction()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/processing-instruction() except /processing-instruction(PI1))/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PI2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/comment() except /comment()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join((for $node in /bib/book/title/text() except /bib/book[3]/title/text() return $node/string()), \"|\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "TCP/IP Illustrated|Advanced Programming in the Unix environment|The Economics of Technology and Content for Digital TV") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/processing-instruction() except /bib/book[2]/title)/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PI1 PI2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/processing-instruction(PI1) except /bib/book)/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PI1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book except /bib/book", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'fn-except-node-args-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//author except //nonexisting", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//author except ()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() except ()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'fn-except-node-args-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-except-node-args-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join((for $node in ((//price/text()) , (//price/text())) except (//price) return $node)/string(), \"|\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " 65.95|65.95| 39.95|129.95") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-except-node-args-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((//price/text()) , (//price/text())) except (//price/text())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-except-node-args-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3) except (1, 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except text))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except node))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except element))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except attribute))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except document-node))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except comment))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except processing-instruction))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except item))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except document))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except if))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except then))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except mod))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except div))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except empty-sequence))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except schema-attribute))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author except schema-element))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except attribute {\"name\"} {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except attribute name {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except element {\"name\"} {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K2-SeqExcept-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except element name {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K2-SeqExcept-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except processing-instruction {\"name\"} {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except processing-instruction name {}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except comment {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(a except text {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except descendant))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except attribute))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except self))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except descendant-or-self))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except following-sibling))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except following))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except preceding-sibling))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except preceding))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except parent))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except ancestor))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except ancestor))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except ancestor-or-self))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a except declare))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean(//employee[location = \"Denver\"] except //employee[last()])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('acme_corp',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-39.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { //(employee[location = \"Denver\"] except //employee[last()])/./location } </r>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('acme_corp',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-40.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><location>Denver</location><location>Denver</location><location>Denver</location></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a/> except <b/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExcept-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { let $i := <e> <a/> <b/> <c/> </e>/a , $t := $i/following-sibling::b return (($i except ($i, $i)), (($t, $t) except $t)) } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExcept-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqexcepthc1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>0</a>,<a>1</a>) except (<a>3</a>,<a>4</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "combiningnodeseqexcepthc1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a>0</a><a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<a>1</a><a>0</a>") of 
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
'combiningnodeseqexcepthc2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>0</a>,<a>1</a>) except (<a>3</a>,<a>4</a>,<a>0</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "combiningnodeseqexcepthc2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a>0</a><a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<a>1</a><a>0</a>") of 
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
'combiningnodeseqexcepthc3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(() except (<a>3</a>,<a>4</a>,<a>0</a>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "combiningnodeseqexcepthc3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'combiningnodeseqexcepthc4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in ( count((//hours) except (//hours))) order by number($h) return $h", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "combiningnodeseqexcepthc4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqexcepthc5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in ( count(($works//hours) except ($staff//grade,$works//hours))) order by number($h) return $h", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "combiningnodeseqexcepthc5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqexcepthc6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in ( ($works//hours) except ($staff//grade)) order by number($h) return $h", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "combiningnodeseqexcepthc6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.