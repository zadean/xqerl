-module('prod_NamespaceDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['namespaceDecl-1'/1]).
-export(['namespaceDecl-2'/1]).
-export(['namespaceDecl-3'/1]).
-export(['namespaceDecl-4'/1]).
-export(['namespaceDecl-5'/1]).
-export(['namespaceDecl-6'/1]).
-export(['namespaceDecl-7'/1]).
-export(['namespaceDecl-8'/1]).
-export(['namespaceDecl-9'/1]).
-export(['namespaceDecl-10'/1]).
-export(['namespaceDecl-11'/1]).
-export(['namespaceDecl-12'/1]).
-export(['namespaceDecl-13'/1]).
-export(['namespaceDecl-14'/1]).
-export(['namespaceDecl-15'/1]).
-export(['namespaceDecl-16'/1]).
-export(['namespaceDecl-17'/1]).
-export(['namespaceDecl-18'/1]).
-export(['namespaceDecl-19'/1]).
-export(['namespaceDecl-20'/1]).
-export(['namespaceDecl-21'/1]).
-export(['namespaceDecl-22'/1]).
-export(['namespaceDecl-23'/1]).
-export(['namespaceDecl-24'/1]).
-export(['K-NamespaceProlog-1'/1]).
-export(['K-NamespaceProlog-2'/1]).
-export(['K-NamespaceProlog-3'/1]).
-export(['K2-NamespaceProlog-1'/1]).
-export(['K2-NamespaceProlog-2'/1]).
-export(['K2-NamespaceProlog-3'/1]).
-export(['K2-NamespaceProlog-4'/1]).
-export(['K2-NamespaceProlog-5'/1]).
-export(['K2-NamespaceProlog-6'/1]).
-export(['K2-NamespaceProlog-7'/1]).
-export(['K2-NamespaceProlog-8'/1]).
-export(['K2-NamespaceProlog-9'/1]).
-export(['K2-NamespaceProlog-10'/1]).
-export(['K2-NamespaceProlog-11'/1]).
-export(['K2-NamespaceProlog-12'/1]).
-export(['K2-NamespaceProlog-13'/1]).
-export(['K2-NamespaceProlog-14'/1]).
-export(['K2-NamespaceProlog-15'/1]).
-export(['K2-NamespaceProlog-16'/1]).
-export(['cbcl-declare-namespace-001'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'namespaceDecl-1', 
'namespaceDecl-2', 
'namespaceDecl-3', 
'namespaceDecl-4', 
'namespaceDecl-5', 
'namespaceDecl-6', 
'namespaceDecl-7', 
'namespaceDecl-8', 
'namespaceDecl-9', 
'namespaceDecl-10', 
'namespaceDecl-11', 
'namespaceDecl-12', 
'namespaceDecl-13', 
'namespaceDecl-14', 
'namespaceDecl-15', 
'namespaceDecl-16', 
'namespaceDecl-17', 
'namespaceDecl-18', 
'namespaceDecl-19', 
'namespaceDecl-20', 
'namespaceDecl-21', 
'namespaceDecl-22', 
'namespaceDecl-23', 
'namespaceDecl-24', 
'K-NamespaceProlog-1', 
'K-NamespaceProlog-2', 
'K-NamespaceProlog-3', 
'K2-NamespaceProlog-1', 
'K2-NamespaceProlog-2', 
'K2-NamespaceProlog-3', 
'K2-NamespaceProlog-4', 
'K2-NamespaceProlog-5', 
'K2-NamespaceProlog-6', 
'K2-NamespaceProlog-7', 
'K2-NamespaceProlog-8', 
'K2-NamespaceProlog-9', 
'K2-NamespaceProlog-10', 
'K2-NamespaceProlog-11', 
'K2-NamespaceProlog-12', 
'K2-NamespaceProlog-13', 
'K2-NamespaceProlog-14', 
'K2-NamespaceProlog-15', 
'K2-NamespaceProlog-16', 
'cbcl-declare-namespace-001'
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
environment('atomic-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
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
environment('staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/staff.xml"), ".",[]}]}, 
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
environment('math',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array-and-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'namespaceDecl-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace foo = \"http://www.example.com/examples\"; declare namespace foo = \"http://www.example.com/examples\"; a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "element foo:anElement {\"Element content\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xml = \"http://www.w3.org/XML/1998/namespace\"; \"a\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace foo = \"http://www.w3.org/XML/1998/namespace\"; \"a\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xmlns = \"http://example.com/examples\"; \"a\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace foo = \"http://example.org\"; <foo:bar> Lentils </foo:bar>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:bar xmlns:foo=\"http://example.org\"> Lentils </foo:bar>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xx = \"http://example.org\"; let $i := <foo:bar xmlns:foo = \"http://example.org\"> <foo:bing> Lentils </foo:bing> </foo:bar> return $i/xx:bing", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:bing xmlns:foo=\"http://example.org\"> Lentils </foo:bing>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace foo:bar = \"http://www.example.com/examples\"; \"aa\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xs = \"http://www.example.com/examples\"; let $var := <xs:someElement>some context</xs:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xs:someElement xmlns:xs=\"http://www.example.com/examples\">some context</xs:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xsi = \"http://www.example.com/examples\"; let $var := <xsi:someElement>some context</xsi:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xsi:someElement xmlns:xsi=\"http://www.example.com/examples\">some context</xsi:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace fn = \"http://www.example.com/examples\"; let $var := <fn:someElement>some context</fn:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:someElement xmlns:fn=\"http://www.example.com/examples\">some context</fn:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xdt = \"http://www.example.com/examples\"; let $var := <xdt:someElement>some context</xdt:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xdt:someElement xmlns:xdt=\"http://www.example.com/examples\">some context</xdt:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace local = \"http://www.example.com/examples\"; let $var := <local:someElement>some context</local:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<local:someElement xmlns:local=\"http://www.example.com/examples\">some context</local:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace XML = \"http://www.example.com/examples\"; let $var := <XML:someElement>some context</XML:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XML:someElement xmlns:XML=\"http://www.example.com/examples\">some context</XML:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace XMLNS = \"http://www.example.com/examples\"; let $var := <XMLNS:someElement>some context</XMLNS:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMLNS:someElement xmlns:XMLNS=\"http://www.example.com/examples\">some context</XMLNS:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace px = \"http://www.example.com/examples\"; let $var := <px:someElement xmlns:px = \"http://www.examples.com/localexamples\">some context</px:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<px:someElement xmlns:px=\"http://www.examples.com/localexamples\">some context</px:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace px = \"http://www.example.com/abc\"; let $var := <px:someElement>some context</px:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace px = \"ftp://ftp.is.co.za/rfc/somefile.txt\"; let $var := <px:someElement>some context</px:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<px:someElement xmlns:px=\"ftp://ftp.is.co.za/rfc/somefile.txt\">some context</px:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace px1 = \"http://www.example.com/examples\"; declare namespace px2 = \"http://www.example.com/examples\"; let $var := <px1:someElement>some context</px1:someElement> return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<px1:someElement xmlns:px1=\"http://www.example.com/examples\">some context</px1:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xx = \"http://www.example.com/abc123\"; let $var := <xx:someElement>some content</xx:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc123\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace abc = \"http://www.example.com/abc\"; let $var := <abc:someElement>some content</abc:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace abc = \"gopher://spinaltap.micro.umn.edu/00/Weather/California/somefile\"; <abc:someElement>some content</abc:someElement>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<abc:someElement xmlns:abc=\"gopher://spinaltap.micro.umn.edu/00/Weather/California/somefile\">some content</abc:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace abc = \"http://www.example.com/abc&amp;\"; let $var := <abc:someElement>some content</abc:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc&amp;\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'namespaceDecl-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace abc = \"mailto:someuser@someserver.com\"; <abc:someElement>some content</abc:someElement>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "namespaceDecl-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<abc:someElement xmlns:abc=\"mailto:someuser@someserver.com\">some content</abc:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NamespaceProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)namespace(::)ncname(::)=(::)'http://example.com/';(::)1(::)eq(::)1(::)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NamespaceProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NamespaceProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)namespace(::)ncname(::)=(::)\"http://example.com/\"(::);(::)1(::)eq(::)1(::)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NamespaceProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NamespaceProlog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace NCName := \"http://example.com/\";", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NamespaceProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace myPrefix = \"http://example.com/\"; declare namespace myPrefix = \"\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace myPrefix = \"\"; declare namespace myPrefix = \"http://example.com/\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace myPrefix = \"http://example.com/\"; declare namespace myPrefix = \"http://example.com/TheSecondOne\"; declare namespace myPrefix = \"\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xs = \"\"; xs:integer(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace thisPrefixIsNotBoundExampleCom = \"\"; true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xml = \"\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xmlns = \"\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xdt = \"\"; xdt:untypedAtomic(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xs = \"\"; xs:untypedAtomic(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace local = \"\"; local:untypedAtomic(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace fn = \"\"; fn:untypedAtomic(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xsi = \"\"; xsi:untypedAtomic(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/>/<e a=\"{p:asd}\" xmlns:p=\"http://example.com/asd\"/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://example.com/asd\" a=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $inputDoc := 2; declare namespace x = \"http://example.com/\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xml = \"http://example.com/\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NamespaceProlog-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/\" { 1 }", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NamespaceProlog-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-declare-namespace-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare default element namespace \"http://www.example.org\"; 
      	declare namespace test=\"\"; 
      	<test:a />
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-declare-namespace-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.