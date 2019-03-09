-module('fn_in_scope_prefixes_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-in-scope-prefixes-1'/1]).
-export(['fn-in-scope-prefixes-2'/1]).
-export(['fn-in-scope-prefixes-3'/1]).
-export(['fn-in-scope-prefixes-4'/1]).
-export(['fn-in-scope-prefixes-5'/1]).
-export(['fn-in-scope-prefixes-6'/1]).
-export(['fn-in-scope-prefixes-7'/1]).
-export(['fn-in-scope-prefixes-8'/1]).
-export(['fn-in-scope-prefixes-9'/1]).
-export(['fn-in-scope-prefixes-10'/1]).
-export(['fn-in-scope-prefixes-11'/1]).
-export(['fn-in-scope-prefixes-12'/1]).
-export(['fn-in-scope-prefixes-13'/1]).
-export(['fn-in-scope-prefixes-14'/1]).
-export(['fn-in-scope-prefixes-15'/1]).
-export(['fn-in-scope-prefixes-16'/1]).
-export(['fn-in-scope-prefixes-17'/1]).
-export(['fn-in-scope-prefixes-18'/1]).
-export(['fn-in-scope-prefixes-19'/1]).
-export(['fn-in-scope-prefixes-20'/1]).
-export(['fn-in-scope-prefixes-21'/1]).
-export(['fn-in-scope-prefixes-22'/1]).
-export(['fn-in-scope-prefixes-23'/1]).
-export(['fn-in-scope-prefixes-24'/1]).
-export(['fn-in-scope-prefixes-25'/1]).
-export(['fn-in-scope-prefixes-26'/1]).
-export(['fn-in-scope-prefixes-27'/1]).
-export(['fn-in-scope-prefixes-28'/1]).
-export(['fn-in-scope-prefixes-29'/1]).
-export(['fn-in-scope-prefixes-30'/1]).
-export(['K-InScopePrefixesFunc-1'/1]).
-export(['K-InScopePrefixesFunc-2'/1]).
-export(['K2-InScopePrefixesFunc-1'/1]).
-export(['K2-InScopePrefixesFunc-2'/1]).
-export(['K2-InScopePrefixesFunc-3'/1]).
-export(['K2-InScopePrefixesFunc-4'/1]).
-export(['K2-InScopePrefixesFunc-5'/1]).
-export(['K2-InScopePrefixesFunc-6'/1]).
-export(['K2-InScopePrefixesFunc-7'/1]).
-export(['K2-InScopePrefixesFunc-8'/1]).
-export(['K2-InScopePrefixesFunc-9'/1]).
-export(['K2-InScopePrefixesFunc-10'/1]).
-export(['K2-InScopePrefixesFunc-11'/1]).
-export(['K2-InScopePrefixesFunc-12'/1]).
-export(['K2-InScopePrefixesFunc-13'/1]).
-export(['K2-InScopePrefixesFunc-14'/1]).
-export(['K2-InScopePrefixesFunc-15'/1]).
-export(['K2-InScopePrefixesFunc-16'/1]).
-export(['K2-InScopePrefixesFunc-17'/1]).
-export(['K2-InScopePrefixesFunc-18'/1]).
-export(['K2-InScopePrefixesFunc-19'/1]).
-export(['K2-InScopePrefixesFunc-20'/1]).
-export(['K2-InScopePrefixesFunc-21'/1]).
-export(['K2-InScopePrefixesFunc-22'/1]).
-export(['K2-InScopePrefixesFunc-23'/1]).
-export(['K2-InScopePrefixesFunc-24'/1]).
-export(['K2-InScopePrefixesFunc-25'/1]).
-export(['K2-InScopePrefixesFunc-26'/1]).
-export(['K2-InScopePrefixesFunc-27'/1]).
-export(['K2-InScopePrefixesFunc-28'/1]).
-export(['K2-InScopePrefixesFunc-29'/1]).
-export(['K2-InScopePrefixesFunc-30'/1]).
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
    'fn-in-scope-prefixes-1', 
    'fn-in-scope-prefixes-2', 
    'fn-in-scope-prefixes-3', 
    'fn-in-scope-prefixes-4', 
    'fn-in-scope-prefixes-5', 
    'fn-in-scope-prefixes-6', 
    'fn-in-scope-prefixes-7', 
    'fn-in-scope-prefixes-8', 
    'fn-in-scope-prefixes-9', 
    'fn-in-scope-prefixes-10', 
    'fn-in-scope-prefixes-11', 
    'fn-in-scope-prefixes-12', 
    'fn-in-scope-prefixes-13', 
    'fn-in-scope-prefixes-14', 
    'fn-in-scope-prefixes-15', 
    'fn-in-scope-prefixes-16', 
    'fn-in-scope-prefixes-17', 
    'fn-in-scope-prefixes-18', 
    'fn-in-scope-prefixes-19', 
    'fn-in-scope-prefixes-20', 
    'fn-in-scope-prefixes-21', 
    'fn-in-scope-prefixes-22', 
    'fn-in-scope-prefixes-23']}, 
   {group_1, [parallel], [
    'fn-in-scope-prefixes-24', 
    'fn-in-scope-prefixes-25', 
    'fn-in-scope-prefixes-26', 
    'fn-in-scope-prefixes-27', 
    'fn-in-scope-prefixes-28', 
    'fn-in-scope-prefixes-29', 
    'fn-in-scope-prefixes-30', 
    'K-InScopePrefixesFunc-1', 
    'K-InScopePrefixesFunc-2', 
    'K2-InScopePrefixesFunc-1', 
    'K2-InScopePrefixesFunc-2', 
    'K2-InScopePrefixesFunc-3', 
    'K2-InScopePrefixesFunc-4', 
    'K2-InScopePrefixesFunc-5', 
    'K2-InScopePrefixesFunc-6', 
    'K2-InScopePrefixesFunc-7', 
    'K2-InScopePrefixesFunc-8', 
    'K2-InScopePrefixesFunc-9', 
    'K2-InScopePrefixesFunc-10', 
    'K2-InScopePrefixesFunc-11', 
    'K2-InScopePrefixesFunc-12', 
    'K2-InScopePrefixesFunc-13', 
    'K2-InScopePrefixesFunc-14', 
    'K2-InScopePrefixesFunc-15']}, 
   {group_2, [parallel], [
    'K2-InScopePrefixesFunc-16', 
    'K2-InScopePrefixesFunc-17', 
    'K2-InScopePrefixesFunc-18', 
    'K2-InScopePrefixesFunc-19', 
    'K2-InScopePrefixesFunc-20', 
    'K2-InScopePrefixesFunc-21', 
    'K2-InScopePrefixesFunc-22', 
    'K2-InScopePrefixesFunc-23', 
    'K2-InScopePrefixesFunc-24', 
    'K2-InScopePrefixesFunc-25', 
    'K2-InScopePrefixesFunc-26', 
    'K2-InScopePrefixesFunc-27', 
    'K2-InScopePrefixesFunc-28', 
    'K2-InScopePrefixesFunc-29', 
    'K2-InScopePrefixesFunc-30']}].
environment('auction',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/AuctionWatch","ma"}, 
{"http://www.w3.org/1999/xlink","xlink"}, 
{"http://www.example.com/auctioneers#anyzone","anyzone"}, 
{"http://www.example.com/auctioneers#eachbay","eachbay"}, 
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('NamespaceSuppliedInternally',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "in-scope-prefixes/NamespaceSuppliedInternally.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('pathdata',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "path/pathdata.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('namespaces11',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "in-scope-prefixes/namespaces11.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-in-scope-prefixes-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:in-scope-prefixes(<a1 xmlns:p1=\"http://www.exampole.com\"></a1>,\"Second Argument\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:in-scope-prefixes(200)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:in-scope-prefixes(<anElement>some content</anElement>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:in-scope-prefixes(<anElement xmlns:p1 = \"http://www.example.com\">some content</anElement>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "xml p1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "p1 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:in-scope-prefixes(element anElement {\"Some content\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com\"; let $seq := fn:in-scope-prefixes(element anElement {\"Some content\"}) return (count($seq),$seq=(\"xml\",\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com\"; let $seq := fn:in-scope-prefixes(<anElement>Some content</anElement>) return (count($seq),$seq=(\"xml\",\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace p1 = \"http://www.example.com\"; fn:in-scope-prefixes(<anElement xmlns:p1=\"http://www.somenamespace.com\">Some content</anElement>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "xml p1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "p1 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace p1 = \"http://www.example.com\"; fn:in-scope-prefixes(<anElement>Some content</anElement>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-length(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:upper-case(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "XML") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lower-case(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-to-codepoints(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "120 109 108") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-before(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],\"m\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "x") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],\"m\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "l") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:concat(fn:in-scope-prefixes(<anElement>Some content</anElement>),\"m\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmlm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((fn:in-scope-prefixes(<anElement>Some content</anElement>),\"xml\"),\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmlxml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:contains(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],\"l\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"ma\", \"xlink\", \"anyzone\", \"eachbay\", \"yabadoo\", \"xml\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes((//*)[19])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"ma\", \"xlink\", \"anyzone\", \"eachbay\", \"yabadoo\", \"xml\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(/)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-in-scope-prefixes-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('NamespaceSuppliedInternally',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"\", \"xml\", \"xlink\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(/*/p)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-in-scope-prefixes-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-in-scope-prefixes-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'fn-in-scope-prefixes-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'fn-in-scope-prefixes-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'fn-in-scope-prefixes-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'K-InScopePrefixesFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-InScopePrefixesFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-InScopePrefixesFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(\"string\", \"nodetest\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-InScopePrefixesFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(<e/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(element name {7}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(text {\"some text\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(comment {\"content\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "in-scope-prefixes(<?target data?>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(<a xmlns=\"http://www.example.com\" xmlns:p=\"http://ns.example.com/asd\" xmlns:b=\"http://ns.example.com/asd\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(<a xmlns=\"\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/A\"; count(in-scope-prefixes(<anElement xmlns=\"http://www.example.com/B\"/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in fn:in-scope-prefixes(<e xmlns:p=\"http://example.com\" xmlns:a=\"http://example.com\"> <b/> </e>/b) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a p xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com\"; count(fn:in-scope-prefixes(<e/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default element namespace \"http://www.example.com/\"; 
         let $i := <e> <a xmlns=\"\"/> <b xmlns=\"http://www.example.com/\"/> <c xmlns=\"http://www.example.com/Second\"/> </e> 
         return (count(in-scope-prefixes($i)), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"\"]))), 
                 count(in-scope-prefixes(exactly-one($i/b))), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"http://www.example.com/Second\"])))
                )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 1, 2, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default element namespace \"http://www.example.com/\"; 
         let $i := element e { element {QName(\"\", \"a\")} {}, element {QName(\"http://www.example.com/\", \"b\")} {}, element {QName(\"http://www.example.com/Second\", \"c\")} {} } 
         return (count(in-scope-prefixes($i)), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"\"]))), 
                 count(in-scope-prefixes(exactly-one($i/b))), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"http://www.example.com/Second\"])))
                )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 1, 2, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/\"; let $i := element e { element b {()} } return (count(in-scope-prefixes($i/b)), count(in-scope-prefixes($i)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(element e{()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := element e { element b {()} } return (count(in-scope-prefixes($i/b)), count(in-scope-prefixes($i)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $i := <e xmlns=\"http://example.com/\"> 
                    {element a {()}} 
                  </e> 
        return (count(in-scope-prefixes($i)), count(in-scope-prefixes(exactly-one($i/*))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace p = \"http://example.com/\"; count(in-scope-prefixes(<p:e/>)), count(in-scope-prefixes(element p:e {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://example.com/\"; <e xmlns:p=\"http://example.com/\"> { count(in-scope-prefixes(<e/>)), count(in-scope-prefixes(element e {()})) } </e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://example.com/\" xmlns:p=\"http://example.com/\">3 3</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(element xml:space {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(element fn:space {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(element xs:space {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(<fn:space/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(in-scope-prefixes(<xs:space/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace p = \"http://example.com/\"; count(in-scope-prefixes(<element/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace a = \"http://example.com/1\"; 
        declare namespace b = \"http://example.com/2\"; 
        declare namespace unused = \"http://example.com/3\"; 
        declare namespace unused2 = \"http://example.com/4\"; 
        <unused:e/>[2], 
        <e a:n1=\"content\" b:n1=\"content\"> <a:n1/> </e>/
            (for $i in in-scope-prefixes(.) order by $i return $i, 
             '|', 
             for $i in a:n1/in-scope-prefixes(.) order by $i return $i)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b xml | a xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $i := <e> { attribute {QName(\"http://example.com/\", \"prefix:attributeName\")} {()} } </e> 
         return document {$i, for $ps in in-scope-prefixes($i) order by $ps return $ps}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:prefix=\"http://example.com/\" prefix:attributeName=\"\"/>prefix xml") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace a = \"http://example.com/1\"; declare namespace b = \"http://example.com/2\"; <e a:n1=\"content\" b:n1=\"content\"/>/(for $i in in-scope-prefixes(.) order by $i return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default element namespace \"http://www.example.com/\"; 
         let $i := <e> <a xmlns=\"\"/> <b xmlns=\"http://www.example.com/\"/> <c xmlns=\"http://www.example.com/Second\"/> </e> 
         return document{
                (count(in-scope-prefixes($i)), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"\"]))), 
                 count(in-scope-prefixes(exactly-one($i/b))), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"http://www.example.com/Second\"]))), 
                $i)}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"2 1 2 2<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/><b/><c xmlns=\"http://www.example.com/Second\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/\"; <a2/>/element e { element {QName(\"\", \"a\")} {} }", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-InScopePrefixesFunc-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/\"; <a2 xmlns:p=\"http://ns.example.com/foo\"/>/element e { element {QName(\"http://example.com/2\", \"p:a\")} {} }", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-InScopePrefixesFunc-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\"><p:a xmlns:p=\"http://example.com/2\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.