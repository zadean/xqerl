-module('prod_NamespaceDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
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
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
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
   'cbcl-declare-namespace-001'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
].
'namespaceDecl-1'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.com/examples\"; declare namespace foo = \"http://www.example.com/examples\"; a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-2'(_Config) ->
   Qry = "element foo:anElement {\"Element content\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-3'(_Config) ->
   Qry = "declare namespace xml = \"http://www.w3.org/XML/1998/namespace\"; \"a\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-4'(_Config) ->
   Qry = "declare namespace foo = \"http://www.w3.org/XML/1998/namespace\"; \"a\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-5'(_Config) ->
   Qry = "declare namespace xmlns = \"http://example.com/examples\"; \"a\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-6'(_Config) ->
   Qry = "declare namespace foo = \"http://example.org\"; <foo:bar> Lentils </foo:bar>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:bar xmlns:foo=\"http://example.org\"> Lentils </foo:bar>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-7'(_Config) ->
   Qry = "declare namespace xx = \"http://example.org\"; let $i := <foo:bar xmlns:foo = \"http://example.org\"> <foo:bing> Lentils </foo:bing> </foo:bar> return $i/xx:bing",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:bing xmlns:foo=\"http://example.org\"> Lentils </foo:bing>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-8'(_Config) ->
   Qry = "declare namespace foo:bar = \"http://www.example.com/examples\"; \"aa\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-9'(_Config) ->
   Qry = "declare namespace xs = \"http://www.example.com/examples\"; let $var := <xs:someElement>some context</xs:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xs:someElement xmlns:xs=\"http://www.example.com/examples\">some context</xs:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-10'(_Config) ->
   Qry = "declare namespace xsi = \"http://www.example.com/examples\"; let $var := <xsi:someElement>some context</xsi:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xsi:someElement xmlns:xsi=\"http://www.example.com/examples\">some context</xsi:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-11'(_Config) ->
   Qry = "declare namespace fn = \"http://www.example.com/examples\"; let $var := <fn:someElement>some context</fn:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:someElement xmlns:fn=\"http://www.example.com/examples\">some context</fn:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-12'(_Config) ->
   Qry = "declare namespace xdt = \"http://www.example.com/examples\"; let $var := <xdt:someElement>some context</xdt:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xdt:someElement xmlns:xdt=\"http://www.example.com/examples\">some context</xdt:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-13'(_Config) ->
   Qry = "declare namespace local = \"http://www.example.com/examples\"; let $var := <local:someElement>some context</local:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<local:someElement xmlns:local=\"http://www.example.com/examples\">some context</local:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-14'(_Config) ->
   Qry = "declare namespace XML = \"http://www.example.com/examples\"; let $var := <XML:someElement>some context</XML:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XML:someElement xmlns:XML=\"http://www.example.com/examples\">some context</XML:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-15'(_Config) ->
   Qry = "declare namespace XMLNS = \"http://www.example.com/examples\"; let $var := <XMLNS:someElement>some context</XMLNS:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMLNS:someElement xmlns:XMLNS=\"http://www.example.com/examples\">some context</XMLNS:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-16'(_Config) ->
   Qry = "declare namespace px = \"http://www.example.com/examples\"; let $var := <px:someElement xmlns:px = \"http://www.examples.com/localexamples\">some context</px:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<px:someElement xmlns:px=\"http://www.examples.com/localexamples\">some context</px:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-17'(_Config) ->
   Qry = "declare namespace px = \"http://www.example.com/abc\"; let $var := <px:someElement>some context</px:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-18'(_Config) ->
   Qry = "declare namespace px = \"ftp://ftp.is.co.za/rfc/somefile.txt\"; let $var := <px:someElement>some context</px:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<px:someElement xmlns:px=\"ftp://ftp.is.co.za/rfc/somefile.txt\">some context</px:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-19'(_Config) ->
   Qry = "declare namespace px1 = \"http://www.example.com/examples\"; declare namespace px2 = \"http://www.example.com/examples\"; let $var := <px1:someElement>some context</px1:someElement> return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<px1:someElement xmlns:px1=\"http://www.example.com/examples\">some context</px1:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-20'(_Config) ->
   Qry = "declare namespace xx = \"http://www.example.com/abc123\"; let $var := <xx:someElement>some content</xx:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc123\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-21'(_Config) ->
   Qry = "declare namespace abc = \"http://www.example.com/abc\"; let $var := <abc:someElement>some content</abc:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-22'(_Config) ->
   Qry = "declare namespace abc = \"gopher://spinaltap.micro.umn.edu/00/Weather/California/somefile\"; <abc:someElement>some content</abc:someElement>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<abc:someElement xmlns:abc=\"gopher://spinaltap.micro.umn.edu/00/Weather/California/somefile\">some content</abc:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-23'(_Config) ->
   Qry = "declare namespace abc = \"http://www.example.com/abc&amp;\"; let $var := <abc:someElement>some content</abc:someElement> return namespace-uri-from-QName(node-name($var)) eq xs:anyURI(\"http://www.example.com/abc&amp;\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'namespaceDecl-24'(_Config) ->
   Qry = "declare namespace abc = \"mailto:someuser@someserver.com\"; <abc:someElement>some content</abc:someElement>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<abc:someElement xmlns:abc=\"mailto:someuser@someserver.com\">some content</abc:someElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceProlog-1'(_Config) ->
   Qry = "(::)declare(::)namespace(::)ncname(::)=(::)'http://example.com/';(::)1(::)eq(::)1(::)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceProlog-2'(_Config) ->
   Qry = "(::)declare(::)namespace(::)ncname(::)=(::)\"http://example.com/\"(::);(::)1(::)eq(::)1(::)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceProlog-3'(_Config) ->
   Qry = "declare namespace NCName := \"http://example.com/\";",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-1'(_Config) ->
   Qry = "declare namespace myPrefix = \"http://example.com/\"; declare namespace myPrefix = \"\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-2'(_Config) ->
   Qry = "declare namespace myPrefix = \"\"; declare namespace myPrefix = \"http://example.com/\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-3'(_Config) ->
   Qry = "declare namespace myPrefix = \"http://example.com/\"; declare namespace myPrefix = \"http://example.com/TheSecondOne\"; declare namespace myPrefix = \"\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-4'(_Config) ->
   Qry = "declare namespace xs = \"\"; xs:integer(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-5'(_Config) ->
   Qry = "declare namespace thisPrefixIsNotBoundExampleCom = \"\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-6'(_Config) ->
   Qry = "declare namespace xml = \"\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-7'(_Config) ->
   Qry = "declare namespace xmlns = \"\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-8'(_Config) ->
   Qry = "declare namespace xdt = \"\"; xdt:untypedAtomic(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-9'(_Config) ->
   Qry = "declare namespace xs = \"\"; xs:untypedAtomic(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-10'(_Config) ->
   Qry = "declare namespace local = \"\"; local:untypedAtomic(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-11'(_Config) ->
   Qry = "declare namespace fn = \"\"; fn:untypedAtomic(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-12'(_Config) ->
   Qry = "declare namespace xsi = \"\"; xsi:untypedAtomic(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-13'(_Config) ->
   Qry = "<e/>/<e a=\"{p:asd}\" xmlns:p=\"http://example.com/asd\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://example.com/asd\" a=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-14'(_Config) ->
   Qry = "declare variable $inputDoc := 2; declare namespace x = \"http://example.com/\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-15'(_Config) ->
   Qry = "declare namespace xml = \"http://example.com/\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceProlog-16'(_Config) ->
   Qry = "declare namespace prefix = \"http://example.com/\" { 1 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-declare-namespace-001'(_Config) ->
   Qry = "
      	declare default element namespace \"http://www.example.org\"; 
      	declare namespace test=\"\"; 
      	<test:a />
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
