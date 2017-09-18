-module('fn_escape_html_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-escape-html-uri1args-1'/1]).
-export(['fn-escape-html-uri1args-2'/1]).
-export(['fn-escape-html-uri1args-3'/1]).
-export(['fn-escape-html-uri1args-4'/1]).
-export(['fn-escape-html-uri1args-5'/1]).
-export(['fn-escape-html-uri1args-6'/1]).
-export(['fn-escape-html-uri-1'/1]).
-export(['fn-escape-html-uri-2'/1]).
-export(['fn-escape-html-uri-3'/1]).
-export(['fn-escape-html-uri-4'/1]).
-export(['fn-escape-html-uri-5'/1]).
-export(['fn-escape-html-uri-6'/1]).
-export(['fn-escape-html-uri-7'/1]).
-export(['fn-escape-html-uri-8'/1]).
-export(['fn-escape-html-uri-9'/1]).
-export(['fn-escape-html-uri-10'/1]).
-export(['fn-escape-html-uri-11'/1]).
-export(['fn-escape-html-uri-12'/1]).
-export(['fn-escape-html-uri-13'/1]).
-export(['fn-escape-html-uri-14'/1]).
-export(['fn-escape-html-uri-15'/1]).
-export(['fn-escape-html-uri-16'/1]).
-export(['fn-escape-html-uri-17'/1]).
-export(['fn-escape-html-uri-18'/1]).
-export(['fn-escape-html-uri-19'/1]).
-export(['fn-escape-html-uri-20'/1]).
-export(['fn-escape-html-uri-21'/1]).
-export(['K-EscapeHTMLURIFunc-1'/1]).
-export(['K-EscapeHTMLURIFunc-2'/1]).
-export(['K-EscapeHTMLURIFunc-3'/1]).
-export(['K-EscapeHTMLURIFunc-4'/1]).
-export(['K-EscapeHTMLURIFunc-5'/1]).
-export(['K-EscapeHTMLURIFunc-6'/1]).
-export(['cbcl-escape-html-uri-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-escape-html-uri1args-1',
   'fn-escape-html-uri1args-2',
   'fn-escape-html-uri1args-3',
   'fn-escape-html-uri1args-4',
   'fn-escape-html-uri1args-5',
   'fn-escape-html-uri1args-6',
   'fn-escape-html-uri-1',
   'fn-escape-html-uri-2',
   'fn-escape-html-uri-3',
   'fn-escape-html-uri-4',
   'fn-escape-html-uri-5',
   'fn-escape-html-uri-6',
   'fn-escape-html-uri-7',
   'fn-escape-html-uri-8',
   'fn-escape-html-uri-9',
   'fn-escape-html-uri-10',
   'fn-escape-html-uri-11',
   'fn-escape-html-uri-12',
   'fn-escape-html-uri-13',
   'fn-escape-html-uri-14',
   'fn-escape-html-uri-15',
   'fn-escape-html-uri-16',
   'fn-escape-html-uri-17',
   'fn-escape-html-uri-18',
   'fn-escape-html-uri-19',
   'fn-escape-html-uri-20',
   'fn-escape-html-uri-21',
   'K-EscapeHTMLURIFunc-1',
   'K-EscapeHTMLURIFunc-2',
   'K-EscapeHTMLURIFunc-3',
   'K-EscapeHTMLURIFunc-4',
   'K-EscapeHTMLURIFunc-5',
   'K-EscapeHTMLURIFunc-6',
   'cbcl-escape-html-uri-001'].
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
'fn-escape-html-uri1args-1'(_Config) ->
   Qry = "escape-html-uri(\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/00/Weather/CA/Los Angeles#ocean\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/00/Weather/CA/Los Angeles#ocean" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri1args-2'(_Config) ->
   Qry = "escape-html-uri(\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~bébé');\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');\n      ",
   case xqerl_test:string_value(Res) of
             "javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri1args-3'(_Config) ->
   Qry = "escape-html-uri('')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri1args-4'(_Config) ->
   Qry = "escape-html-uri(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri1args-5'(_Config) ->
   Qry = "escape-html-uri(12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-escape-html-uri1args-6'(_Config) ->
   Qry = "escape-html-uri('',())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-escape-html-uri-1'(_Config) ->
   Qry = "fn:escape-html-uri(\"abcdedfghijklmnopqrstuvwxyz\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abcdedfghijklmnopqrstuvwxyz\n      ",
   case xqerl_test:string_value(Res) of
             "abcdedfghijklmnopqrstuvwxyz" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-2'(_Config) ->
   Qry = "fn:escape-html-uri(\"ABCDEFGHIJKLMNOPQRSTUVWXYZ\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ABCDEFGHIJKLMNOPQRSTUVWXYZ\n      ",
   case xqerl_test:string_value(Res) of
             "ABCDEFGHIJKLMNOPQRSTUVWXYZ" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-3'(_Config) ->
   Qry = "fn:escape-html-uri(\"a0123456789\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         a0123456789\n      ",
   case xqerl_test:string_value(Res) of
             "a0123456789" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-4'(_Config) ->
   Qry = "fn:escape-html-uri(\"example example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example example\n      ",
   case xqerl_test:string_value(Res) of
             "example example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-5'(_Config) ->
   Qry = "fn:escape-html-uri(\"example!example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example!example\n      ",
   case xqerl_test:string_value(Res) of
             "example!example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-6'(_Config) ->
   Qry = "fn:escape-html-uri(\"example#example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example#example\n      ",
   case xqerl_test:string_value(Res) of
             "example#example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-7'(_Config) ->
   Qry = "fn:escape-html-uri(\"example$example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example$example\n      ",
   case xqerl_test:string_value(Res) of
             "example$example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-8'(_Config) ->
   Qry = "fn:escape-html-uri(\"example'example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example'example\n      ",
   case xqerl_test:string_value(Res) of
             "example'example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-9'(_Config) ->
   Qry = "fn:escape-html-uri(\"example(example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example(example\n      ",
   case xqerl_test:string_value(Res) of
             "example(example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-10'(_Config) ->
   Qry = "fn:escape-html-uri(\"example)example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example)example\n      ",
   case xqerl_test:string_value(Res) of
             "example)example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-11'(_Config) ->
   Qry = "fn:escape-html-uri(\"example*example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example*example\n      ",
   case xqerl_test:string_value(Res) of
             "example*example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-12'(_Config) ->
   Qry = "fn:escape-html-uri(\"example+example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example+example\n      ",
   case xqerl_test:string_value(Res) of
             "example+example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-13'(_Config) ->
   Qry = "fn:escape-html-uri(\"example,example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example,example\n      ",
   case xqerl_test:string_value(Res) of
             "example,example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-14'(_Config) ->
   Qry = "fn:escape-html-uri(\"example-example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example-example\n      ",
   case xqerl_test:string_value(Res) of
             "example-example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-15'(_Config) ->
   Qry = "fn:escape-html-uri(\"example.example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example.example\n      ",
   case xqerl_test:string_value(Res) of
             "example.example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-16'(_Config) ->
   Qry = "fn:escape-html-uri(\"example/example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example/example\n      ",
   case xqerl_test:string_value(Res) of
             "example/example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-17'(_Config) ->
   Qry = "fn:escape-html-uri(\"example;example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example;example\n      ",
   case xqerl_test:string_value(Res) of
             "example;example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-18'(_Config) ->
   Qry = "fn:escape-html-uri(\"example:example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example:example\n      ",
   case xqerl_test:string_value(Res) of
             "example:example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-19'(_Config) ->
   Qry = "fn:escape-html-uri(\"example@example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example@example\n      ",
   case xqerl_test:string_value(Res) of
             "example@example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-20'(_Config) ->
   Qry = [102,110,58,101,115,99,97,112,101,45,104,116,109,108,45,117,114,105,40,34,101,120,97,109,112,108,101,233,8364,101,120,97,109,112,108,101,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example%C3%A9%E2%82%ACexample\n      ",
   case xqerl_test:string_value(Res) of
             "example%C3%A9%E2%82%ACexample" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-escape-html-uri-21'(_Config) ->
   Qry = [102,110,58,101,115,99,97,112,101,45,104,116,109,108,45,117,114,105,40,34,101,120,97,109,112,108,101,8364,101,120,97,109,112,108,101,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example%E2%82%ACexample\n      ",
   case xqerl_test:string_value(Res) of
             "example%E2%82%ACexample" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-EscapeHTMLURIFunc-1'(_Config) ->
   Qry = "escape-html-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-EscapeHTMLURIFunc-2'(_Config) ->
   Qry = "escape-html-uri(\"http://example.com/\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-EscapeHTMLURIFunc-3'(_Config) ->
   Qry = "escape-html-uri(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EscapeHTMLURIFunc-4'(_Config) ->
   Qry = "escape-html-uri(\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\") eq \"http://www.example.com/00/Weather/CA/Los Angeles#ocean\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EscapeHTMLURIFunc-5'(_Config) ->
   Qry = "escape-html-uri(\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~bébé');\") eq \"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EscapeHTMLURIFunc-6'(_Config) ->
   Qry = "normalize-space(iri-to-uri((\"example.com\", current-time())[1] treat as xs:string))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         example.com\n      ",
   case xqerl_test:string_value(Res) of
             "example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-escape-html-uri-001'(_Config) ->
   Qry = "fn:escape-html-uri(codepoints-to-string((9, 65, 128)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         %09A%C2%80\n      ",
   case xqerl_test:string_value(Res) of
             "%09A%C2%80" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
