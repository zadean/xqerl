-module('fn_resolve_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-resolve-uri-1'/1]).
-export(['fn-resolve-uri-2'/1]).
-export(['fn-resolve-uri-3'/1]).
-export(['fn-resolve-uri-4'/1]).
-export(['fn-resolve-uri-5'/1]).
-export(['fn-resolve-uri-6'/1]).
-export(['fn-resolve-uri-7'/1]).
-export(['fn-resolve-uri-8'/1]).
-export(['fn-resolve-uri-9'/1]).
-export(['fn-resolve-uri-10'/1]).
-export(['fn-resolve-uri-11'/1]).
-export(['fn-resolve-uri-12'/1]).
-export(['fn-resolve-uri-13'/1]).
-export(['fn-resolve-uri-14'/1]).
-export(['fn-resolve-uri-15'/1]).
-export(['fn-resolve-uri-16'/1]).
-export(['fn-resolve-uri-17'/1]).
-export(['fn-resolve-uri-18'/1]).
-export(['fn-resolve-uri-19'/1]).
-export(['fn-resolve-uri-20'/1]).
-export(['fn-resolve-uri-21'/1]).
-export(['fn-resolve-uri-22'/1]).
-export(['fn-resolve-uri-23'/1]).
-export(['fn-resolve-uri-24'/1]).
-export(['fn-resolve-uri-25'/1]).
-export(['fn-resolve-uri-26'/1]).
-export(['fn-resolve-uri-27'/1]).
-export(['fn-resolve-uri-28'/1]).
-export(['fn-resolve-uri-29'/1]).
-export(['fn-resolve-uri-30'/1]).
-export(['fn-resolve-uri-31'/1]).
-export(['fn-resolve-uri-32'/1]).
-export(['K-ResolveURIFunc-1'/1]).
-export(['K-ResolveURIFunc-2'/1]).
-export(['K-ResolveURIFunc-3'/1]).
-export(['K-ResolveURIFunc-4'/1]).
-export(['K-ResolveURIFunc-5'/1]).
-export(['K-ResolveURIFunc-6'/1]).
-export(['cbcl-fn-resolve-uri-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-resolve-uri-1',
   'fn-resolve-uri-2',
   'fn-resolve-uri-3',
   'fn-resolve-uri-4',
   'fn-resolve-uri-5',
   'fn-resolve-uri-6',
   'fn-resolve-uri-7',
   'fn-resolve-uri-8',
   'fn-resolve-uri-9',
   'fn-resolve-uri-10',
   'fn-resolve-uri-11',
   'fn-resolve-uri-12',
   'fn-resolve-uri-13',
   'fn-resolve-uri-14',
   'fn-resolve-uri-15',
   'fn-resolve-uri-16',
   'fn-resolve-uri-17',
   'fn-resolve-uri-18',
   'fn-resolve-uri-19',
   'fn-resolve-uri-20',
   'fn-resolve-uri-21',
   'fn-resolve-uri-22',
   'fn-resolve-uri-23',
   'fn-resolve-uri-24',
   'fn-resolve-uri-25',
   'fn-resolve-uri-26',
   'fn-resolve-uri-27',
   'fn-resolve-uri-28',
   'fn-resolve-uri-29',
   'fn-resolve-uri-30',
   'fn-resolve-uri-31',
   'fn-resolve-uri-32',
   'K-ResolveURIFunc-1',
   'K-ResolveURIFunc-2',
   'K-ResolveURIFunc-3',
   'K-ResolveURIFunc-4',
   'K-ResolveURIFunc-5',
   'K-ResolveURIFunc-6',
   'cbcl-fn-resolve-uri-001'].
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
'fn-resolve-uri-1'(_Config) ->
   Qry = "fn:count(fn:resolve-uri((),\"BaseValue\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-resolve-uri-2'(_Config) ->
   Qry = "declare base-uri \"http://www.example/\"; fn:string(fn:resolve-uri(\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example/\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-3'(_Config) ->
   Qry = "fn:resolve-uri(\":\",\"http://www.example.com/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0002'}) end.
'fn-resolve-uri-4'(_Config) ->
   Qry = "fn:resolve-uri(\"examples\",\"http:%%\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0002'}) end.
'fn-resolve-uri-5'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"http://www.examples.com\",\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-6'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",\"http://www.examples.com/\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-7'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",xs:string(\"http://www.examples.com/\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-8'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:string(\"examples\"),fn:string(\"http://www.examples.com/\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-9'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:upper-case(\"examples\"),fn:upper-case(\"http://www.examples.com/\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         HTTP://WWW.EXAMPLES.COM/EXAMPLES\n      ",
   case xqerl_test:string_value(Res) of
             "HTTP://WWW.EXAMPLES.COM/EXAMPLES" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-10'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:lower-case(\"EXAMPLES\"),fn:lower-case(\"HTTP://www.examples.com/\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-11'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:substring(\"1234http://www.examples.com/\",5)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-12'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:string-join(('http://www.example','.com/'),'')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-13'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:concat(\"http://www.example\",\".com/\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-14'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:substring-before(\"http://www.example.com/123\",\"123\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-15'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"examples\",fn:substring-after(\"123http://www.example.com/\",\"123\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/examples\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-16'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:string(\"http://www.examples.com/\"),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com/\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-17'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:upper-case(\"http://www.examples.com\"),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         HTTP://WWW.EXAMPLES.COM\n      ",
   case xqerl_test:string_value(Res) of
             "HTTP://WWW.EXAMPLES.COM" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-18'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:lower-case(\"http://www.examples.com\"),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-19'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:substring(\"123http://www.examples.com\",4),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-20'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:string-join((\"http://www.examples\",\".com\"),''),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-21'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:concat(\"http://www.examples\",\".com\"),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.examples.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-22'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:substring-before(\"http://www.example.com123\",\"123\"),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-23'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(fn:substring-after(\"123http://www.example.com\",\"123\"),\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-24'(_Config) ->
   Qry = "fn:string(fn:resolve-uri(\"a.html\",\"b.html\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0002'}) end.
'fn-resolve-uri-25'(_Config) ->
   Qry = "string(resolve-uri(\"http://www.example.com/a.html\",\"b.html\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/a.html\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/a.html" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-26'(_Config) ->
   Qry = "resolve-uri(\"b.html\", \"http://www.example.com/a.html#fragment\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0002'}) end.
'fn-resolve-uri-27'(_Config) ->
   Qry = "string(resolve-uri(\"b.html\", \"http://www.example.com/a.html?foo=bar\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.example.com/b.html\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/b.html" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-28'(_Config) ->
   Qry = "resolve-uri(\"b.html\", \"urn:isbn:01234567890X\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0002'}) end.
'fn-resolve-uri-29'(_Config) ->
   Qry = "string(resolve-uri(\"urn:isbn:01234567890X\", \"http://www.example.com/\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         urn:isbn:01234567890X\n      ",
   case xqerl_test:string_value(Res) of
             "urn:isbn:01234567890X" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-resolve-uri-30'(_Config) ->
   Qry = "\n         resolve-uri(codepoints-to-string(231)||\".html\", \"http://www.example.com/\"||codepoints-to-string(224)||\".html\")\n         = (\"http://www.example.com/\"||codepoints-to-string(231)||\".html\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-resolve-uri-31'(_Config) ->
   Qry = "\n         resolve-uri(\"%C3%A0.html\", \"http://www.example.com/%C3%A7.html\")\n         = \"http://www.example.com/%C3%A0.html\"\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-resolve-uri-32'(_Config) ->
   Qry = "resolve-uri(\"this doc.html\", \"http://www.example.com/that doc.html\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n           http://www.example.com/this doc.html\n           http://www.example.com/this%20doc.html\n           \n         \n      ",
 case (xqerl_test:string_value(Res) == "http://www.example.com/this doc.html") orelse (xqerl_test:string_value(Res) == "http://www.example.com/this%20doc.html") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ResolveURIFunc-1'(_Config) ->
   Qry = "resolve-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ResolveURIFunc-2'(_Config) ->
   Qry = "resolve-uri(\"http://www.example.com/\", \"relative/uri.ext\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ResolveURIFunc-3'(_Config) ->
   Qry = "resolve-uri(\"relative/uri.ext\", \"http://www.example.com/\") eq xs:anyURI(\"http://www.example.com/relative/uri.ext\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ResolveURIFunc-4'(_Config) ->
   Qry = "resolve-uri(\"\", \"http://www.example.com/\") eq xs:anyURI(\"http://www.example.com/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ResolveURIFunc-5'(_Config) ->
   Qry = "empty(resolve-uri((), \"http://www.example.com/\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ResolveURIFunc-6'(_Config) ->
   Qry = "resolve-uri(\"http://www.example.com/absolute\", \"http://www.example.com/\") eq xs:anyURI(\"http://www.example.com/absolute\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-resolve-uri-001'(_Config) ->
   Qry = "\n        boolean(resolve-uri(string-join(for $x in 1 to 10 return \"blah\",\"z\"),\"http://localhost/\"))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
