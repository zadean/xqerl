-module('fn_string_join_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-string-join2args-1'/1]).
-export(['fn-string-join2args-2'/1]).
-export(['fn-string-join2args-3'/1]).
-export(['fn-string-join2args-4'/1]).
-export(['fn-string-join2args-5'/1]).
-export(['fn-string-join-1'/1]).
-export(['fn-string-join-2'/1]).
-export(['fn-string-join-3'/1]).
-export(['fn-string-join-4'/1]).
-export(['fn-string-join-5'/1]).
-export(['fn-string-join-6'/1]).
-export(['fn-string-join-7'/1]).
-export(['fn-string-join-8'/1]).
-export(['fn-string-join-9'/1]).
-export(['fn-string-join-10'/1]).
-export(['fn-string-join-11'/1]).
-export(['fn-string-join-12'/1]).
-export(['fn-string-join-13'/1]).
-export(['fn-string-join-14'/1]).
-export(['fn-string-join-15'/1]).
-export(['fn-string-join-16'/1]).
-export(['fn-string-join-17'/1]).
-export(['fn-string-join-18'/1]).
-export(['fn-string-join-19'/1]).
-export(['fn-string-join-20'/1]).
-export(['fn-string-join-21'/1]).
-export(['fn-string-join-22'/1]).
-export(['fn-string-join-23'/1]).
-export(['fn-string-join-24'/1]).
-export(['fn-string-join-25'/1]).
-export(['fn-string-join-26'/1]).
-export(['K-StringJoinFunc-1'/1]).
-export(['K-StringJoinFunc-1a'/1]).
-export(['K-StringJoinFunc-2'/1]).
-export(['K-StringJoinFunc-3'/1]).
-export(['K-StringJoinFunc-4'/1]).
-export(['K-StringJoinFunc-5'/1]).
-export(['K-StringJoinFunc-6'/1]).
-export(['K-StringJoinFunc-7'/1]).
-export(['cbcl-fn-string-join-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-string-join2args-1',
   'fn-string-join2args-2',
   'fn-string-join2args-3',
   'fn-string-join2args-4',
   'fn-string-join2args-5',
   'fn-string-join-1',
   'fn-string-join-2',
   'fn-string-join-3',
   'fn-string-join-4',
   'fn-string-join-5',
   'fn-string-join-6',
   'fn-string-join-7',
   'fn-string-join-8',
   'fn-string-join-9',
   'fn-string-join-10',
   'fn-string-join-11',
   'fn-string-join-12',
   'fn-string-join-13',
   'fn-string-join-14',
   'fn-string-join-15',
   'fn-string-join-16',
   'fn-string-join-17',
   'fn-string-join-18',
   'fn-string-join-19',
   'fn-string-join-20',
   'fn-string-join-21',
   'fn-string-join-22',
   'fn-string-join-23',
   'fn-string-join-24',
   'fn-string-join-25',
   'fn-string-join-26',
   'K-StringJoinFunc-1',
   'K-StringJoinFunc-1a',
   'K-StringJoinFunc-2',
   'K-StringJoinFunc-3',
   'K-StringJoinFunc-4',
   'K-StringJoinFunc-5',
   'K-StringJoinFunc-6',
   'K-StringJoinFunc-7',
   'cbcl-fn-string-join-001'].
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
'fn-string-join2args-1'(_Config) ->
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a characte\n      ",
   case xqerl_test:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join2args-2'(_Config) ->
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a characte\n      ",
   case xqerl_test:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join2args-3'(_Config) ->
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a characte\n      ",
   case xqerl_test:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join2args-4'(_Config) ->
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a characte\n      ",
   case xqerl_test:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join2args-5'(_Config) ->
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a characte\n      ",
   case xqerl_test:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-1'(_Config) ->
   Qry = "fn:string-join(('Now', 'is', 'the', 'time', '...'), ' ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         Now is the time ...\n      ",
   case xqerl_test:string_value(Res) of
             "Now is the time ..." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-2'(_Config) ->
   Qry = "fn:string-join(('Blow, ', 'blow, ', 'thou ', 'winter ', 'wind!'), '')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         Blow, blow, thou winter wind!\n      ",
   case xqerl_test:string_value(Res) of
             "Blow, blow, thou winter wind!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-3'(_Config) ->
   Qry = "fn:count(fn:string-join((), 'separator'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-4'(_Config) ->
   Qry = "fn:count(fn:string-join((),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-5'(_Config) ->
   Qry = "fn:count(fn:string-join(\"\",\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-6'(_Config) ->
   Qry = "fn:count(fn:string-join(\"\",\"A Character String\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-7'(_Config) ->
   Qry = "fn:count(fn:string-join((),\"A Character String\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-8'(_Config) ->
   Qry = "fn:string-join((\"AAAAABBBBBCCCCC\"),\"BBBBB\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         AAAAABBBBBCCCCC\n      ",
   case xqerl_test:string_value(Res) of
             "AAAAABBBBBCCCCC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-9'(_Config) ->
   Qry = "fn:string-join((\"AAAAABBBBB\"),\" \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         AAAAABBBBB\n      ",
   case xqerl_test:string_value(Res) of
             "AAAAABBBBB" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-10'(_Config) ->
   Qry = "fn:count(fn:string-join((\" \"),\"AAAAABBBBB\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-11'(_Config) ->
   Qry = "fn:not(fn:string-join((),\"A\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-string-join-12'(_Config) ->
   Qry = "fn:not(fn:string-join((\"A\"),\"B\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-string-join-13'(_Config) ->
   Qry = "fn:string-join((xs:string(\"A\")),\"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A\n      ",
   case xqerl_test:string_value(Res) of
             "A" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-14'(_Config) ->
   Qry = "fn:string-join((\"A\"),xs:string(\"A\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A\n      ",
   case xqerl_test:string_value(Res) of
             "A" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-15'(_Config) ->
   Qry = "fn:string-join((\"A\"),\"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A\n      ",
   case xqerl_test:string_value(Res) of
             "A" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-16'(_Config) ->
   Qry = "fn:string-join((\"a\"),\"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         a\n      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-17'(_Config) ->
   Qry = "fn:string-join(\"string-join\",\"string-join\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         string-join\n      ",
   case xqerl_test:string_value(Res) of
             "string-join" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-18'(_Config) ->
   Qry = "fn:string-join((\"string-joinstring-join\"),\"string-join\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         string-joinstring-join\n      ",
   case xqerl_test:string_value(Res) of
             "string-joinstring-join" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-19'(_Config) ->
   Qry = "fn:string-join(\"****\",\"***\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ****\n      ",
   case xqerl_test:string_value(Res) of
             "****" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-20'(_Config) ->
   Qry = "fn:string-join(\"12345\",\"1234\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         12345\n      ",
   case xqerl_test:string_value(Res) of
             "12345" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-21'(_Config) ->
   Qry = "fn:string-join(\"string-join\",\"nioj-gnirts\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         string-join\n      ",
   case xqerl_test:string_value(Res) of
             "string-join" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-22'(_Config) ->
   Qry = "fn:string-join((\"1\", \"2\", \"3\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         123\n      ",
   case xqerl_test:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-23'(_Config) ->
   Qry = "\n         let $e := <e><a>1</a><b>2</b><c>3</c></e>\n         return fn:string-join($e/*)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         123\n      ",
   case xqerl_test:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-24'(_Config) ->
   Qry = "\n         let $e := <e><a>1</a><b></b><c>3</c></e>\n         return fn:string-join($e/*)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         13\n      ",
   case xqerl_test:string_value(Res) of
             "13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-25'(_Config) ->
   Qry = "\n         let $e := <e><a>1</a><b></b><c>3</c></e>\n         return fn:string-join($e/d)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-string-join-26'(_Config) ->
   Qry = "\n         fn:string-join((1 to 9)!string())\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         123456789\n      ",
   case xqerl_test:string_value(Res) of
             "123456789" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-StringJoinFunc-1'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-StringJoinFunc-1a'(_Config) ->
   Qry = "string-join(\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         a string        \n      ",
   case xqerl_test:string_value(Res) of
             "a string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-StringJoinFunc-2'(_Config) ->
   Qry = "string-join(\"a string\", \"a string\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-StringJoinFunc-3'(_Config) ->
   Qry = "string-join(('Now', 'is', 'the', 'time', '...'), ' ') eq \"Now is the time ...\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringJoinFunc-4'(_Config) ->
   Qry = "string-join((\"abc\", \"def\"), \"\") eq \"abcdef\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringJoinFunc-5'(_Config) ->
   Qry = "string-join(('Blow, ', 'blow, ', 'thou ', 'winter ', 'wind!'), '') eq \"Blow, blow, thou winter wind!\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringJoinFunc-6'(_Config) ->
   Qry = "string-join((), 'separator') eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringJoinFunc-7'(_Config) ->
   Qry = "string-join(\"a string\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-fn-string-join-001'(_Config) ->
   Qry = "\n        declare function local:repeat($count as xs:integer, $arg as xs:string) as xs:string* { if ($count le 0) then \"\" else for $x in 1 to $count return $arg };\n        string-join( for $x in 0 to 4 return local:repeat($x, 'a') , ' ') and string-join( for $x in 0 to 4 return local:repeat($x, 'a') , '')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
