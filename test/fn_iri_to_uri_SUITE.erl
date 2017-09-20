-module('fn_iri_to_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-iri-to-uri1args-1'/1]).
-export(['fn-iri-to-uri1args-2'/1]).
-export(['fn-iri-to-uri1args-3'/1]).
-export(['fn-iri-to-uri1args-4'/1]).
-export(['fn-iri-to-uri1args-5'/1]).
-export(['fn-iri-to-uri1args-6'/1]).
-export(['fn-iri-to-uri-1'/1]).
-export(['fn-iri-to-uri-2'/1]).
-export(['fn-iri-to-uri-3'/1]).
-export(['fn-iri-to-uri-4'/1]).
-export(['fn-iri-to-uri-5'/1]).
-export(['fn-iri-to-uri-6'/1]).
-export(['fn-iri-to-uri-7'/1]).
-export(['fn-iri-to-uri-8'/1]).
-export(['fn-iri-to-uri-9'/1]).
-export(['fn-iri-to-uri-10'/1]).
-export(['fn-iri-to-uri-11'/1]).
-export(['fn-iri-to-uri-12'/1]).
-export(['fn-iri-to-uri-13'/1]).
-export(['fn-iri-to-uri-14'/1]).
-export(['fn-iri-to-uri-15'/1]).
-export(['fn-iri-to-uri-16'/1]).
-export(['fn-iri-to-uri-17'/1]).
-export(['fn-iri-to-uri-18'/1]).
-export(['fn-iri-to-uri-18A'/1]).
-export(['fn-iri-to-uri-19'/1]).
-export(['fn-iri-to-uri-20'/1]).
-export(['fn-iri-to-uri-21'/1]).
-export(['fn-iri-to-uri-22'/1]).
-export(['fn-iri-to-uri-23'/1]).
-export(['fn-iri-to-uri-24'/1]).
-export(['fn-iri-to-uri-25'/1]).
-export(['fn-iri-to-uri-26'/1]).
-export(['K-IRIToURIfunc-1'/1]).
-export(['K-IRIToURIfunc-2'/1]).
-export(['K-IRIToURIfunc-3'/1]).
-export(['K-IRIToURIfunc-4'/1]).
-export(['K2-IRIToURIfunc-1'/1]).
-export(['K2-IRIToURIfunc-2'/1]).
-export(['K2-IRIToURIfunc-3'/1]).
-export(['K2-IRIToURIfunc-4'/1]).
-export(['K2-IRIToURIfunc-5'/1]).
-export(['K2-IRIToURIfunc-6'/1]).
-export(['K2-IRIToURIfunc-7'/1]).
-export(['K2-IRIToURIfunc-8'/1]).
-export(['K2-IRIToURIfunc-9'/1]).
-export(['K2-IRIToURIfunc-10'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-iri-to-uri1args-1',
   'fn-iri-to-uri1args-2',
   'fn-iri-to-uri1args-3',
   'fn-iri-to-uri1args-4',
   'fn-iri-to-uri1args-5',
   'fn-iri-to-uri1args-6',
   'fn-iri-to-uri-1',
   'fn-iri-to-uri-2',
   'fn-iri-to-uri-3',
   'fn-iri-to-uri-4',
   'fn-iri-to-uri-5',
   'fn-iri-to-uri-6',
   'fn-iri-to-uri-7',
   'fn-iri-to-uri-8',
   'fn-iri-to-uri-9',
   'fn-iri-to-uri-10',
   'fn-iri-to-uri-11',
   'fn-iri-to-uri-12',
   'fn-iri-to-uri-13',
   'fn-iri-to-uri-14',
   'fn-iri-to-uri-15',
   'fn-iri-to-uri-16',
   'fn-iri-to-uri-17',
   'fn-iri-to-uri-18',
   'fn-iri-to-uri-18A',
   'fn-iri-to-uri-19',
   'fn-iri-to-uri-20',
   'fn-iri-to-uri-21',
   'fn-iri-to-uri-22',
   'fn-iri-to-uri-23',
   'fn-iri-to-uri-24',
   'fn-iri-to-uri-25',
   'fn-iri-to-uri-26',
   'K-IRIToURIfunc-1',
   'K-IRIToURIfunc-2',
   'K-IRIToURIfunc-3',
   'K-IRIToURIfunc-4',
   'K2-IRIToURIfunc-1',
   'K2-IRIToURIfunc-2',
   'K2-IRIToURIfunc-3',
   'K2-IRIToURIfunc-4',
   'K2-IRIToURIfunc-5',
   'K2-IRIToURIfunc-6',
   'K2-IRIToURIfunc-7',
   'K2-IRIToURIfunc-8',
   'K2-IRIToURIfunc-9',
   'K2-IRIToURIfunc-10'].
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
'fn-iri-to-uri1args-1'(_Config) ->
   Qry = "iri-to-uri(\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/00/Weather/CA/Los%20Angeles#ocean
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/00/Weather/CA/Los%20Angeles#ocean" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri1args-2'(_Config) ->
   Qry = "iri-to-uri(\"http://www.example.com/~bébé\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/~b%C3%A9b%C3%A9
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/~b%C3%A9b%C3%A9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri1args-3'(_Config) ->
   Qry = "iri-to-uri('')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri1args-4'(_Config) ->
   Qry = "iri-to-uri(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri1args-5'(_Config) ->
   Qry = "iri-to-uri(12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-iri-to-uri1args-6'(_Config) ->
   Qry = "iri-to-uri('',())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-iri-to-uri-1'(_Config) ->
   Qry = "fn:iri-to-uri(\"example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example
      ",
   case xqerl_test:string_value(Res) of
             "example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-2'(_Config) ->
   Qry = "fn:iri-to-uri(\"example0123456789\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example0123456789
      ",
   case xqerl_test:string_value(Res) of
             "example0123456789" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-3'(_Config) ->
   Qry = "fn:iri-to-uri(\"example#example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example#example
      ",
   case xqerl_test:string_value(Res) of
             "example#example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-4'(_Config) ->
   Qry = "fn:iri-to-uri(\"example-example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example-example
      ",
   case xqerl_test:string_value(Res) of
             "example-example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-5'(_Config) ->
   Qry = "fn:iri-to-uri(\"example_example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example_example
      ",
   case xqerl_test:string_value(Res) of
             "example_example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-6'(_Config) ->
   Qry = "fn:iri-to-uri(\"example.example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example.example
      ",
   case xqerl_test:string_value(Res) of
             "example.example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-7'(_Config) ->
   Qry = "fn:iri-to-uri(\"example!example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example!example
      ",
   case xqerl_test:string_value(Res) of
             "example!example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-8'(_Config) ->
   Qry = "fn:iri-to-uri(\"example~example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example~example
      ",
   case xqerl_test:string_value(Res) of
             "example~example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-9'(_Config) ->
   Qry = "fn:iri-to-uri(\"example*example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example*example
      ",
   case xqerl_test:string_value(Res) of
             "example*example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-10'(_Config) ->
   Qry = "fn:iri-to-uri(\"example'example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example'example
      ",
   case xqerl_test:string_value(Res) of
             "example'example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-11'(_Config) ->
   Qry = "fn:iri-to-uri(\"example(example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example(example
      ",
   case xqerl_test:string_value(Res) of
             "example(example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-12'(_Config) ->
   Qry = "fn:iri-to-uri(\"example)example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example)example
      ",
   case xqerl_test:string_value(Res) of
             "example)example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-13'(_Config) ->
   Qry = "fn:iri-to-uri(\"example;example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example;example
      ",
   case xqerl_test:string_value(Res) of
             "example;example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-14'(_Config) ->
   Qry = "fn:iri-to-uri(\"example/example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example/example
      ",
   case xqerl_test:string_value(Res) of
             "example/example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-15'(_Config) ->
   Qry = "fn:iri-to-uri(\"example?example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example?example
      ",
   case xqerl_test:string_value(Res) of
             "example?example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-16'(_Config) ->
   Qry = "fn:iri-to-uri(\"example:example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example:example
      ",
   case xqerl_test:string_value(Res) of
             "example:example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-17'(_Config) ->
   Qry = "fn:iri-to-uri(\"example@example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example@example
      ",
   case xqerl_test:string_value(Res) of
             "example@example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-18'(_Config) ->
   Qry = "fn:iri-to-uri(\"example&amp;amp;example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example&amp;example
      ",
   case xqerl_test:string_value(Res) of
             "example&amp;example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-18A'(_Config) ->
   {skip,"XP20+"}.
'fn-iri-to-uri-19'(_Config) ->
   Qry = "fn:iri-to-uri(\"example=example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example=example
      ",
   case xqerl_test:string_value(Res) of
             "example=example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-20'(_Config) ->
   Qry = "fn:iri-to-uri(\"example+example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example+example
      ",
   case xqerl_test:string_value(Res) of
             "example+example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-21'(_Config) ->
   Qry = "fn:iri-to-uri(\"example$example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example$example
      ",
   case xqerl_test:string_value(Res) of
             "example$example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-22'(_Config) ->
   Qry = "fn:iri-to-uri(\"example,example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example,example
      ",
   case xqerl_test:string_value(Res) of
             "example,example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-23'(_Config) ->
   Qry = "fn:iri-to-uri(\"example[example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example[example
      ",
   case xqerl_test:string_value(Res) of
             "example[example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-24'(_Config) ->
   Qry = "fn:iri-to-uri(\"example]example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example]example
      ",
   case xqerl_test:string_value(Res) of
             "example]example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-25'(_Config) ->
   Qry = "fn:iri-to-uri(\"example%example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example%example
      ",
   case xqerl_test:string_value(Res) of
             "example%example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-iri-to-uri-26'(_Config) ->
   Qry = "fn:iri-to-uri(\"example example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example%20example
      ",
   case xqerl_test:string_value(Res) of
             "example%20example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-IRIToURIfunc-1'(_Config) ->
   Qry = "iri-to-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-IRIToURIfunc-2'(_Config) ->
   Qry = "iri-to-uri(\"http://example.com/\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-IRIToURIfunc-3'(_Config) ->
   Qry = "iri-to-uri(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-IRIToURIfunc-4'(_Config) ->
   Qry = "normalize-space(iri-to-uri((\"somestring\", current-time())[1])) eq \"somestring\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-IRIToURIfunc-1'(_Config) ->
   Qry = "iri-to-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-IRIToURIfunc-2'(_Config) ->
   Qry = "iri-to-uri(\"a string\", \"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-IRIToURIfunc-3'(_Config) ->
   Qry = "iri-to-uri(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-IRIToURIfunc-4'(_Config) ->
   Qry = "iri-to-uri((\"a string\", \"a string\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-IRIToURIfunc-5'(_Config) ->
   Qry = "iri-to-uri(xs:anyURI(\"a string\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a%20string
      ",
   case xqerl_test:string_value(Res) of
             "a%20string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-IRIToURIfunc-6'(_Config) ->
   Qry = "iri-to-uri(xs:untypedAtomic(\"a string\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a%20string
      ",
   case xqerl_test:string_value(Res) of
             "a%20string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-IRIToURIfunc-7'(_Config) ->
   Qry = "iri-to-uri(\"<> \"\"{}|\\^`\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         %3C%3E%20%22%7B%7D%7C%5C%5E%60
      ",
   case xqerl_test:string_value(Res) of
             "%3C%3E%20%22%7B%7D%7C%5C%5E%60" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-IRIToURIfunc-8'(_Config) ->
   Qry = "iri-to-uri(\"
\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         %0A
      ",
   case xqerl_test:string_value(Res) of
             "%0A" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-IRIToURIfunc-9'(_Config) ->
   Qry = "iri-to-uri(codepoints-to-string(32 to 294))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         %20!%22#$%&'()*+,-./0123456789:;%3C=%3E?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[%5C]%5E_%60abcdefghijklmnopqrstuvwxyz%7B%7C%7D~%7F%C2%80%C2%81%C2%82%C2%83%C2%84%C2%85%C2%86%C2%87%C2%88%C2%89%C2%8A%C2%8B%C2%8C%C2%8D%C2%8E%C2%8F%C2%90%C2%91%C2%92%C2%93%C2%94%C2%95%C2%96%C2%97%C2%98%C2%99%C2%9A%C2%9B%C2%9C%C2%9D%C2%9E%C2%9F%C2%A0%C2%A1%C2%A2%C2%A3%C2%A4%C2%A5%C2%A6%C2%A7%C2%A8%C2%A9%C2%AA%C2%AB%C2%AC%C2%AD%C2%AE%C2%AF%C2%B0%C2%B1%C2%B2%C2%B3%C2%B4%C2%B5%C2%B6%C2%B7%C2%B8%C2%B9%C2%BA%C2%BB%C2%BC%C2%BD%C2%BE%C2%BF%C3%80%C3%81%C3%82%C3%83%C3%84%C3%85%C3%86%C3%87%C3%88%C3%89%C3%8A%C3%8B%C3%8C%C3%8D%C3%8E%C3%8F%C3%90%C3%91%C3%92%C3%93%C3%94%C3%95%C3%96%C3%97%C3%98%C3%99%C3%9A%C3%9B%C3%9C%C3%9D%C3%9E%C3%9F%C3%A0%C3%A1%C3%A2%C3%A3%C3%A4%C3%A5%C3%A6%C3%A7%C3%A8%C3%A9%C3%AA%C3%AB%C3%AC%C3%AD%C3%AE%C3%AF%C3%B0%C3%B1%C3%B2%C3%B3%C3%B4%C3%B5%C3%B6%C3%B7%C3%B8%C3%B9%C3%BA%C3%BB%C3%BC%C3%BD%C3%BE%C3%BF%C4%80%C4%81%C4%82%C4%83%C4%84%C4%85%C4%86%C4%87%C4%88%C4%89%C4%8A%C4%8B%C4%8C%C4%8D%C4%8E%C4%8F%C4%90%C4%91%C4%92%C4%93%C4%94%C4%95%C4%96%C4%97%C4%98%C4%99%C4%9A%C4%9B%C4%9C%C4%9D%C4%9E%C4%9F%C4%A0%C4%A1%C4%A2%C4%A3%C4%A4%C4%A5%C4%A6
      ",
   case xqerl_test:string_value(Res) of
             "%20!%22#$%&'()*+,-./0123456789:;%3C=%3E?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[%5C]%5E_%60abcdefghijklmnopqrstuvwxyz%7B%7C%7D~%7F%C2%80%C2%81%C2%82%C2%83%C2%84%C2%85%C2%86%C2%87%C2%88%C2%89%C2%8A%C2%8B%C2%8C%C2%8D%C2%8E%C2%8F%C2%90%C2%91%C2%92%C2%93%C2%94%C2%95%C2%96%C2%97%C2%98%C2%99%C2%9A%C2%9B%C2%9C%C2%9D%C2%9E%C2%9F%C2%A0%C2%A1%C2%A2%C2%A3%C2%A4%C2%A5%C2%A6%C2%A7%C2%A8%C2%A9%C2%AA%C2%AB%C2%AC%C2%AD%C2%AE%C2%AF%C2%B0%C2%B1%C2%B2%C2%B3%C2%B4%C2%B5%C2%B6%C2%B7%C2%B8%C2%B9%C2%BA%C2%BB%C2%BC%C2%BD%C2%BE%C2%BF%C3%80%C3%81%C3%82%C3%83%C3%84%C3%85%C3%86%C3%87%C3%88%C3%89%C3%8A%C3%8B%C3%8C%C3%8D%C3%8E%C3%8F%C3%90%C3%91%C3%92%C3%93%C3%94%C3%95%C3%96%C3%97%C3%98%C3%99%C3%9A%C3%9B%C3%9C%C3%9D%C3%9E%C3%9F%C3%A0%C3%A1%C3%A2%C3%A3%C3%A4%C3%A5%C3%A6%C3%A7%C3%A8%C3%A9%C3%AA%C3%AB%C3%AC%C3%AD%C3%AE%C3%AF%C3%B0%C3%B1%C3%B2%C3%B3%C3%B4%C3%B5%C3%B6%C3%B7%C3%B8%C3%B9%C3%BA%C3%BB%C3%BC%C3%BD%C3%BE%C3%BF%C4%80%C4%81%C4%82%C4%83%C4%84%C4%85%C4%86%C4%87%C4%88%C4%89%C4%8A%C4%8B%C4%8C%C4%8D%C4%8E%C4%8F%C4%90%C4%91%C4%92%C4%93%C4%94%C4%95%C4%96%C4%97%C4%98%C4%99%C4%9A%C4%9B%C4%9C%C4%9D%C4%9E%C4%9F%C4%A0%C4%A1%C4%A2%C4%A3%C4%A4%C4%A5%C4%A6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-IRIToURIfunc-10'(_Config) ->
   Qry = "iri-to-uri(codepoints-to-string(15000 to 16000))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         %E3%AA%98%E3%AA%99%E3%AA%9A%E3%AA%9B%E3%AA%9C%E3%AA%9D%E3%AA%9E%E3%AA%9F%E3%AA%A0%E3%AA%A1%E3%AA%A2%E3%AA%A3%E3%AA%A4%E3%AA%A5%E3%AA%A6%E3%AA%A7%E3%AA%A8%E3%AA%A9%E3%AA%AA%E3%AA%AB%E3%AA%AC%E3%AA%AD%E3%AA%AE%E3%AA%AF%E3%AA%B0%E3%AA%B1%E3%AA%B2%E3%AA%B3%E3%AA%B4%E3%AA%B5%E3%AA%B6%E3%AA%B7%E3%AA%B8%E3%AA%B9%E3%AA%BA%E3%AA%BB%E3%AA%BC%E3%AA%BD%E3%AA%BE%E3%AA%BF%E3%AB%80%E3%AB%81%E3%AB%82%E3%AB%83%E3%AB%84%E3%AB%85%E3%AB%86%E3%AB%87%E3%AB%88%E3%AB%89%E3%AB%8A%E3%AB%8B%E3%AB%8C%E3%AB%8D%E3%AB%8E%E3%AB%8F%E3%AB%90%E3%AB%91%E3%AB%92%E3%AB%93%E3%AB%94%E3%AB%95%E3%AB%96%E3%AB%97%E3%AB%98%E3%AB%99%E3%AB%9A%E3%AB%9B%E3%AB%9C%E3%AB%9D%E3%AB%9E%E3%AB%9F%E3%AB%A0%E3%AB%A1%E3%AB%A2%E3%AB%A3%E3%AB%A4%E3%AB%A5%E3%AB%A6%E3%AB%A7%E3%AB%A8%E3%AB%A9%E3%AB%AA%E3%AB%AB%E3%AB%AC%E3%AB%AD%E3%AB%AE%E3%AB%AF%E3%AB%B0%E3%AB%B1%E3%AB%B2%E3%AB%B3%E3%AB%B4%E3%AB%B5%E3%AB%B6%E3%AB%B7%E3%AB%B8%E3%AB%B9%E3%AB%BA%E3%AB%BB%E3%AB%BC%E3%AB%BD%E3%AB%BE%E3%AB%BF%E3%AC%80%E3%AC%81%E3%AC%82%E3%AC%83%E3%AC%84%E3%AC%85%E3%AC%86%E3%AC%87%E3%AC%88%E3%AC%89%E3%AC%8A%E3%AC%8B%E3%AC%8C%E3%AC%8D%E3%AC%8E%E3%AC%8F%E3%AC%90%E3%AC%91%E3%AC%92%E3%AC%93%E3%AC%94%E3%AC%95%E3%AC%96%E3%AC%97%E3%AC%98%E3%AC%99%E3%AC%9A%E3%AC%9B%E3%AC%9C%E3%AC%9D%E3%AC%9E%E3%AC%9F%E3%AC%A0%E3%AC%A1%E3%AC%A2%E3%AC%A3%E3%AC%A4%E3%AC%A5%E3%AC%A6%E3%AC%A7%E3%AC%A8%E3%AC%A9%E3%AC%AA%E3%AC%AB%E3%AC%AC%E3%AC%AD%E3%AC%AE%E3%AC%AF%E3%AC%B0%E3%AC%B1%E3%AC%B2%E3%AC%B3%E3%AC%B4%E3%AC%B5%E3%AC%B6%E3%AC%B7%E3%AC%B8%E3%AC%B9%E3%AC%BA%E3%AC%BB%E3%AC%BC%E3%AC%BD%E3%AC%BE%E3%AC%BF%E3%AD%80%E3%AD%81%E3%AD%82%E3%AD%83%E3%AD%84%E3%AD%85%E3%AD%86%E3%AD%87%E3%AD%88%E3%AD%89%E3%AD%8A%E3%AD%8B%E3%AD%8C%E3%AD%8D%E3%AD%8E%E3%AD%8F%E3%AD%90%E3%AD%91%E3%AD%92%E3%AD%93%E3%AD%94%E3%AD%95%E3%AD%96%E3%AD%97%E3%AD%98%E3%AD%99%E3%AD%9A%E3%AD%9B%E3%AD%9C%E3%AD%9D%E3%AD%9E%E3%AD%9F%E3%AD%A0%E3%AD%A1%E3%AD%A2%E3%AD%A3%E3%AD%A4%E3%AD%A5%E3%AD%A6%E3%AD%A7%E3%AD%A8%E3%AD%A9%E3%AD%AA%E3%AD%AB%E3%AD%AC%E3%AD%AD%E3%AD%AE%E3%AD%AF%E3%AD%B0%E3%AD%B1%E3%AD%B2%E3%AD%B3%E3%AD%B4%E3%AD%B5%E3%AD%B6%E3%AD%B7%E3%AD%B8%E3%AD%B9%E3%AD%BA%E3%AD%BB%E3%AD%BC%E3%AD%BD%E3%AD%BE%E3%AD%BF%E3%AE%80%E3%AE%81%E3%AE%82%E3%AE%83%E3%AE%84%E3%AE%85%E3%AE%86%E3%AE%87%E3%AE%88%E3%AE%89%E3%AE%8A%E3%AE%8B%E3%AE%8C%E3%AE%8D%E3%AE%8E%E3%AE%8F%E3%AE%90%E3%AE%91%E3%AE%92%E3%AE%93%E3%AE%94%E3%AE%95%E3%AE%96%E3%AE%97%E3%AE%98%E3%AE%99%E3%AE%9A%E3%AE%9B%E3%AE%9C%E3%AE%9D%E3%AE%9E%E3%AE%9F%E3%AE%A0%E3%AE%A1%E3%AE%A2%E3%AE%A3%E3%AE%A4%E3%AE%A5%E3%AE%A6%E3%AE%A7%E3%AE%A8%E3%AE%A9%E3%AE%AA%E3%AE%AB%E3%AE%AC%E3%AE%AD%E3%AE%AE%E3%AE%AF%E3%AE%B0%E3%AE%B1%E3%AE%B2%E3%AE%B3%E3%AE%B4%E3%AE%B5%E3%AE%B6%E3%AE%B7%E3%AE%B8%E3%AE%B9%E3%AE%BA%E3%AE%BB%E3%AE%BC%E3%AE%BD%E3%AE%BE%E3%AE%BF%E3%AF%80%E3%AF%81%E3%AF%82%E3%AF%83%E3%AF%84%E3%AF%85%E3%AF%86%E3%AF%87%E3%AF%88%E3%AF%89%E3%AF%8A%E3%AF%8B%E3%AF%8C%E3%AF%8D%E3%AF%8E%E3%AF%8F%E3%AF%90%E3%AF%91%E3%AF%92%E3%AF%93%E3%AF%94%E3%AF%95%E3%AF%96%E3%AF%97%E3%AF%98%E3%AF%99%E3%AF%9A%E3%AF%9B%E3%AF%9C%E3%AF%9D%E3%AF%9E%E3%AF%9F%E3%AF%A0%E3%AF%A1%E3%AF%A2%E3%AF%A3%E3%AF%A4%E3%AF%A5%E3%AF%A6%E3%AF%A7%E3%AF%A8%E3%AF%A9%E3%AF%AA%E3%AF%AB%E3%AF%AC%E3%AF%AD%E3%AF%AE%E3%AF%AF%E3%AF%B0%E3%AF%B1%E3%AF%B2%E3%AF%B3%E3%AF%B4%E3%AF%B5%E3%AF%B6%E3%AF%B7%E3%AF%B8%E3%AF%B9%E3%AF%BA%E3%AF%BB%E3%AF%BC%E3%AF%BD%E3%AF%BE%E3%AF%BF%E3%B0%80%E3%B0%81%E3%B0%82%E3%B0%83%E3%B0%84%E3%B0%85%E3%B0%86%E3%B0%87%E3%B0%88%E3%B0%89%E3%B0%8A%E3%B0%8B%E3%B0%8C%E3%B0%8D%E3%B0%8E%E3%B0%8F%E3%B0%90%E3%B0%91%E3%B0%92%E3%B0%93%E3%B0%94%E3%B0%95%E3%B0%96%E3%B0%97%E3%B0%98%E3%B0%99%E3%B0%9A%E3%B0%9B%E3%B0%9C%E3%B0%9D%E3%B0%9E%E3%B0%9F%E3%B0%A0%E3%B0%A1%E3%B0%A2%E3%B0%A3%E3%B0%A4%E3%B0%A5%E3%B0%A6%E3%B0%A7%E3%B0%A8%E3%B0%A9%E3%B0%AA%E3%B0%AB%E3%B0%AC%E3%B0%AD%E3%B0%AE%E3%B0%AF%E3%B0%B0%E3%B0%B1%E3%B0%B2%E3%B0%B3%E3%B0%B4%E3%B0%B5%E3%B0%B6%E3%B0%B7%E3%B0%B8%E3%B0%B9%E3%B0%BA%E3%B0%BB%E3%B0%BC%E3%B0%BD%E3%B0%BE%E3%B0%BF%E3%B1%80%E3%B1%81%E3%B1%82%E3%B1%83%E3%B1%84%E3%B1%85%E3%B1%86%E3%B1%87%E3%B1%88%E3%B1%89%E3%B1%8A%E3%B1%8B%E3%B1%8C%E3%B1%8D%E3%B1%8E%E3%B1%8F%E3%B1%90%E3%B1%91%E3%B1%92%E3%B1%93%E3%B1%94%E3%B1%95%E3%B1%96%E3%B1%97%E3%B1%98%E3%B1%99%E3%B1%9A%E3%B1%9B%E3%B1%9C%E3%B1%9D%E3%B1%9E%E3%B1%9F%E3%B1%A0%E3%B1%A1%E3%B1%A2%E3%B1%A3%E3%B1%A4%E3%B1%A5%E3%B1%A6%E3%B1%A7%E3%B1%A8%E3%B1%A9%E3%B1%AA%E3%B1%AB%E3%B1%AC%E3%B1%AD%E3%B1%AE%E3%B1%AF%E3%B1%B0%E3%B1%B1%E3%B1%B2%E3%B1%B3%E3%B1%B4%E3%B1%B5%E3%B1%B6%E3%B1%B7%E3%B1%B8%E3%B1%B9%E3%B1%BA%E3%B1%BB%E3%B1%BC%E3%B1%BD%E3%B1%BE%E3%B1%BF%E3%B2%80%E3%B2%81%E3%B2%82%E3%B2%83%E3%B2%84%E3%B2%85%E3%B2%86%E3%B2%87%E3%B2%88%E3%B2%89%E3%B2%8A%E3%B2%8B%E3%B2%8C%E3%B2%8D%E3%B2%8E%E3%B2%8F%E3%B2%90%E3%B2%91%E3%B2%92%E3%B2%93%E3%B2%94%E3%B2%95%E3%B2%96%E3%B2%97%E3%B2%98%E3%B2%99%E3%B2%9A%E3%B2%9B%E3%B2%9C%E3%B2%9D%E3%B2%9E%E3%B2%9F%E3%B2%A0%E3%B2%A1%E3%B2%A2%E3%B2%A3%E3%B2%A4%E3%B2%A5%E3%B2%A6%E3%B2%A7%E3%B2%A8%E3%B2%A9%E3%B2%AA%E3%B2%AB%E3%B2%AC%E3%B2%AD%E3%B2%AE%E3%B2%AF%E3%B2%B0%E3%B2%B1%E3%B2%B2%E3%B2%B3%E3%B2%B4%E3%B2%B5%E3%B2%B6%E3%B2%B7%E3%B2%B8%E3%B2%B9%E3%B2%BA%E3%B2%BB%E3%B2%BC%E3%B2%BD%E3%B2%BE%E3%B2%BF%E3%B3%80%E3%B3%81%E3%B3%82%E3%B3%83%E3%B3%84%E3%B3%85%E3%B3%86%E3%B3%87%E3%B3%88%E3%B3%89%E3%B3%8A%E3%B3%8B%E3%B3%8C%E3%B3%8D%E3%B3%8E%E3%B3%8F%E3%B3%90%E3%B3%91%E3%B3%92%E3%B3%93%E3%B3%94%E3%B3%95%E3%B3%96%E3%B3%97%E3%B3%98%E3%B3%99%E3%B3%9A%E3%B3%9B%E3%B3%9C%E3%B3%9D%E3%B3%9E%E3%B3%9F%E3%B3%A0%E3%B3%A1%E3%B3%A2%E3%B3%A3%E3%B3%A4%E3%B3%A5%E3%B3%A6%E3%B3%A7%E3%B3%A8%E3%B3%A9%E3%B3%AA%E3%B3%AB%E3%B3%AC%E3%B3%AD%E3%B3%AE%E3%B3%AF%E3%B3%B0%E3%B3%B1%E3%B3%B2%E3%B3%B3%E3%B3%B4%E3%B3%B5%E3%B3%B6%E3%B3%B7%E3%B3%B8%E3%B3%B9%E3%B3%BA%E3%B3%BB%E3%B3%BC%E3%B3%BD%E3%B3%BE%E3%B3%BF%E3%B4%80%E3%B4%81%E3%B4%82%E3%B4%83%E3%B4%84%E3%B4%85%E3%B4%86%E3%B4%87%E3%B4%88%E3%B4%89%E3%B4%8A%E3%B4%8B%E3%B4%8C%E3%B4%8D%E3%B4%8E%E3%B4%8F%E3%B4%90%E3%B4%91%E3%B4%92%E3%B4%93%E3%B4%94%E3%B4%95%E3%B4%96%E3%B4%97%E3%B4%98%E3%B4%99%E3%B4%9A%E3%B4%9B%E3%B4%9C%E3%B4%9D%E3%B4%9E%E3%B4%9F%E3%B4%A0%E3%B4%A1%E3%B4%A2%E3%B4%A3%E3%B4%A4%E3%B4%A5%E3%B4%A6%E3%B4%A7%E3%B4%A8%E3%B4%A9%E3%B4%AA%E3%B4%AB%E3%B4%AC%E3%B4%AD%E3%B4%AE%E3%B4%AF%E3%B4%B0%E3%B4%B1%E3%B4%B2%E3%B4%B3%E3%B4%B4%E3%B4%B5%E3%B4%B6%E3%B4%B7%E3%B4%B8%E3%B4%B9%E3%B4%BA%E3%B4%BB%E3%B4%BC%E3%B4%BD%E3%B4%BE%E3%B4%BF%E3%B5%80%E3%B5%81%E3%B5%82%E3%B5%83%E3%B5%84%E3%B5%85%E3%B5%86%E3%B5%87%E3%B5%88%E3%B5%89%E3%B5%8A%E3%B5%8B%E3%B5%8C%E3%B5%8D%E3%B5%8E%E3%B5%8F%E3%B5%90%E3%B5%91%E3%B5%92%E3%B5%93%E3%B5%94%E3%B5%95%E3%B5%96%E3%B5%97%E3%B5%98%E3%B5%99%E3%B5%9A%E3%B5%9B%E3%B5%9C%E3%B5%9D%E3%B5%9E%E3%B5%9F%E3%B5%A0%E3%B5%A1%E3%B5%A2%E3%B5%A3%E3%B5%A4%E3%B5%A5%E3%B5%A6%E3%B5%A7%E3%B5%A8%E3%B5%A9%E3%B5%AA%E3%B5%AB%E3%B5%AC%E3%B5%AD%E3%B5%AE%E3%B5%AF%E3%B5%B0%E3%B5%B1%E3%B5%B2%E3%B5%B3%E3%B5%B4%E3%B5%B5%E3%B5%B6%E3%B5%B7%E3%B5%B8%E3%B5%B9%E3%B5%BA%E3%B5%BB%E3%B5%BC%E3%B5%BD%E3%B5%BE%E3%B5%BF%E3%B6%80%E3%B6%81%E3%B6%82%E3%B6%83%E3%B6%84%E3%B6%85%E3%B6%86%E3%B6%87%E3%B6%88%E3%B6%89%E3%B6%8A%E3%B6%8B%E3%B6%8C%E3%B6%8D%E3%B6%8E%E3%B6%8F%E3%B6%90%E3%B6%91%E3%B6%92%E3%B6%93%E3%B6%94%E3%B6%95%E3%B6%96%E3%B6%97%E3%B6%98%E3%B6%99%E3%B6%9A%E3%B6%9B%E3%B6%9C%E3%B6%9D%E3%B6%9E%E3%B6%9F%E3%B6%A0%E3%B6%A1%E3%B6%A2%E3%B6%A3%E3%B6%A4%E3%B6%A5%E3%B6%A6%E3%B6%A7%E3%B6%A8%E3%B6%A9%E3%B6%AA%E3%B6%AB%E3%B6%AC%E3%B6%AD%E3%B6%AE%E3%B6%AF%E3%B6%B0%E3%B6%B1%E3%B6%B2%E3%B6%B3%E3%B6%B4%E3%B6%B5%E3%B6%B6%E3%B6%B7%E3%B6%B8%E3%B6%B9%E3%B6%BA%E3%B6%BB%E3%B6%BC%E3%B6%BD%E3%B6%BE%E3%B6%BF%E3%B7%80%E3%B7%81%E3%B7%82%E3%B7%83%E3%B7%84%E3%B7%85%E3%B7%86%E3%B7%87%E3%B7%88%E3%B7%89%E3%B7%8A%E3%B7%8B%E3%B7%8C%E3%B7%8D%E3%B7%8E%E3%B7%8F%E3%B7%90%E3%B7%91%E3%B7%92%E3%B7%93%E3%B7%94%E3%B7%95%E3%B7%96%E3%B7%97%E3%B7%98%E3%B7%99%E3%B7%9A%E3%B7%9B%E3%B7%9C%E3%B7%9D%E3%B7%9E%E3%B7%9F%E3%B7%A0%E3%B7%A1%E3%B7%A2%E3%B7%A3%E3%B7%A4%E3%B7%A5%E3%B7%A6%E3%B7%A7%E3%B7%A8%E3%B7%A9%E3%B7%AA%E3%B7%AB%E3%B7%AC%E3%B7%AD%E3%B7%AE%E3%B7%AF%E3%B7%B0%E3%B7%B1%E3%B7%B2%E3%B7%B3%E3%B7%B4%E3%B7%B5%E3%B7%B6%E3%B7%B7%E3%B7%B8%E3%B7%B9%E3%B7%BA%E3%B7%BB%E3%B7%BC%E3%B7%BD%E3%B7%BE%E3%B7%BF%E3%B8%80%E3%B8%81%E3%B8%82%E3%B8%83%E3%B8%84%E3%B8%85%E3%B8%86%E3%B8%87%E3%B8%88%E3%B8%89%E3%B8%8A%E3%B8%8B%E3%B8%8C%E3%B8%8D%E3%B8%8E%E3%B8%8F%E3%B8%90%E3%B8%91%E3%B8%92%E3%B8%93%E3%B8%94%E3%B8%95%E3%B8%96%E3%B8%97%E3%B8%98%E3%B8%99%E3%B8%9A%E3%B8%9B%E3%B8%9C%E3%B8%9D%E3%B8%9E%E3%B8%9F%E3%B8%A0%E3%B8%A1%E3%B8%A2%E3%B8%A3%E3%B8%A4%E3%B8%A5%E3%B8%A6%E3%B8%A7%E3%B8%A8%E3%B8%A9%E3%B8%AA%E3%B8%AB%E3%B8%AC%E3%B8%AD%E3%B8%AE%E3%B8%AF%E3%B8%B0%E3%B8%B1%E3%B8%B2%E3%B8%B3%E3%B8%B4%E3%B8%B5%E3%B8%B6%E3%B8%B7%E3%B8%B8%E3%B8%B9%E3%B8%BA%E3%B8%BB%E3%B8%BC%E3%B8%BD%E3%B8%BE%E3%B8%BF%E3%B9%80%E3%B9%81%E3%B9%82%E3%B9%83%E3%B9%84%E3%B9%85%E3%B9%86%E3%B9%87%E3%B9%88%E3%B9%89%E3%B9%8A%E3%B9%8B%E3%B9%8C%E3%B9%8D%E3%B9%8E%E3%B9%8F%E3%B9%90%E3%B9%91%E3%B9%92%E3%B9%93%E3%B9%94%E3%B9%95%E3%B9%96%E3%B9%97%E3%B9%98%E3%B9%99%E3%B9%9A%E3%B9%9B%E3%B9%9C%E3%B9%9D%E3%B9%9E%E3%B9%9F%E3%B9%A0%E3%B9%A1%E3%B9%A2%E3%B9%A3%E3%B9%A4%E3%B9%A5%E3%B9%A6%E3%B9%A7%E3%B9%A8%E3%B9%A9%E3%B9%AA%E3%B9%AB%E3%B9%AC%E3%B9%AD%E3%B9%AE%E3%B9%AF%E3%B9%B0%E3%B9%B1%E3%B9%B2%E3%B9%B3%E3%B9%B4%E3%B9%B5%E3%B9%B6%E3%B9%B7%E3%B9%B8%E3%B9%B9%E3%B9%BA%E3%B9%BB%E3%B9%BC%E3%B9%BD%E3%B9%BE%E3%B9%BF%E3%BA%80
      ",
   case xqerl_test:string_value(Res) of
             "%E3%AA%98%E3%AA%99%E3%AA%9A%E3%AA%9B%E3%AA%9C%E3%AA%9D%E3%AA%9E%E3%AA%9F%E3%AA%A0%E3%AA%A1%E3%AA%A2%E3%AA%A3%E3%AA%A4%E3%AA%A5%E3%AA%A6%E3%AA%A7%E3%AA%A8%E3%AA%A9%E3%AA%AA%E3%AA%AB%E3%AA%AC%E3%AA%AD%E3%AA%AE%E3%AA%AF%E3%AA%B0%E3%AA%B1%E3%AA%B2%E3%AA%B3%E3%AA%B4%E3%AA%B5%E3%AA%B6%E3%AA%B7%E3%AA%B8%E3%AA%B9%E3%AA%BA%E3%AA%BB%E3%AA%BC%E3%AA%BD%E3%AA%BE%E3%AA%BF%E3%AB%80%E3%AB%81%E3%AB%82%E3%AB%83%E3%AB%84%E3%AB%85%E3%AB%86%E3%AB%87%E3%AB%88%E3%AB%89%E3%AB%8A%E3%AB%8B%E3%AB%8C%E3%AB%8D%E3%AB%8E%E3%AB%8F%E3%AB%90%E3%AB%91%E3%AB%92%E3%AB%93%E3%AB%94%E3%AB%95%E3%AB%96%E3%AB%97%E3%AB%98%E3%AB%99%E3%AB%9A%E3%AB%9B%E3%AB%9C%E3%AB%9D%E3%AB%9E%E3%AB%9F%E3%AB%A0%E3%AB%A1%E3%AB%A2%E3%AB%A3%E3%AB%A4%E3%AB%A5%E3%AB%A6%E3%AB%A7%E3%AB%A8%E3%AB%A9%E3%AB%AA%E3%AB%AB%E3%AB%AC%E3%AB%AD%E3%AB%AE%E3%AB%AF%E3%AB%B0%E3%AB%B1%E3%AB%B2%E3%AB%B3%E3%AB%B4%E3%AB%B5%E3%AB%B6%E3%AB%B7%E3%AB%B8%E3%AB%B9%E3%AB%BA%E3%AB%BB%E3%AB%BC%E3%AB%BD%E3%AB%BE%E3%AB%BF%E3%AC%80%E3%AC%81%E3%AC%82%E3%AC%83%E3%AC%84%E3%AC%85%E3%AC%86%E3%AC%87%E3%AC%88%E3%AC%89%E3%AC%8A%E3%AC%8B%E3%AC%8C%E3%AC%8D%E3%AC%8E%E3%AC%8F%E3%AC%90%E3%AC%91%E3%AC%92%E3%AC%93%E3%AC%94%E3%AC%95%E3%AC%96%E3%AC%97%E3%AC%98%E3%AC%99%E3%AC%9A%E3%AC%9B%E3%AC%9C%E3%AC%9D%E3%AC%9E%E3%AC%9F%E3%AC%A0%E3%AC%A1%E3%AC%A2%E3%AC%A3%E3%AC%A4%E3%AC%A5%E3%AC%A6%E3%AC%A7%E3%AC%A8%E3%AC%A9%E3%AC%AA%E3%AC%AB%E3%AC%AC%E3%AC%AD%E3%AC%AE%E3%AC%AF%E3%AC%B0%E3%AC%B1%E3%AC%B2%E3%AC%B3%E3%AC%B4%E3%AC%B5%E3%AC%B6%E3%AC%B7%E3%AC%B8%E3%AC%B9%E3%AC%BA%E3%AC%BB%E3%AC%BC%E3%AC%BD%E3%AC%BE%E3%AC%BF%E3%AD%80%E3%AD%81%E3%AD%82%E3%AD%83%E3%AD%84%E3%AD%85%E3%AD%86%E3%AD%87%E3%AD%88%E3%AD%89%E3%AD%8A%E3%AD%8B%E3%AD%8C%E3%AD%8D%E3%AD%8E%E3%AD%8F%E3%AD%90%E3%AD%91%E3%AD%92%E3%AD%93%E3%AD%94%E3%AD%95%E3%AD%96%E3%AD%97%E3%AD%98%E3%AD%99%E3%AD%9A%E3%AD%9B%E3%AD%9C%E3%AD%9D%E3%AD%9E%E3%AD%9F%E3%AD%A0%E3%AD%A1%E3%AD%A2%E3%AD%A3%E3%AD%A4%E3%AD%A5%E3%AD%A6%E3%AD%A7%E3%AD%A8%E3%AD%A9%E3%AD%AA%E3%AD%AB%E3%AD%AC%E3%AD%AD%E3%AD%AE%E3%AD%AF%E3%AD%B0%E3%AD%B1%E3%AD%B2%E3%AD%B3%E3%AD%B4%E3%AD%B5%E3%AD%B6%E3%AD%B7%E3%AD%B8%E3%AD%B9%E3%AD%BA%E3%AD%BB%E3%AD%BC%E3%AD%BD%E3%AD%BE%E3%AD%BF%E3%AE%80%E3%AE%81%E3%AE%82%E3%AE%83%E3%AE%84%E3%AE%85%E3%AE%86%E3%AE%87%E3%AE%88%E3%AE%89%E3%AE%8A%E3%AE%8B%E3%AE%8C%E3%AE%8D%E3%AE%8E%E3%AE%8F%E3%AE%90%E3%AE%91%E3%AE%92%E3%AE%93%E3%AE%94%E3%AE%95%E3%AE%96%E3%AE%97%E3%AE%98%E3%AE%99%E3%AE%9A%E3%AE%9B%E3%AE%9C%E3%AE%9D%E3%AE%9E%E3%AE%9F%E3%AE%A0%E3%AE%A1%E3%AE%A2%E3%AE%A3%E3%AE%A4%E3%AE%A5%E3%AE%A6%E3%AE%A7%E3%AE%A8%E3%AE%A9%E3%AE%AA%E3%AE%AB%E3%AE%AC%E3%AE%AD%E3%AE%AE%E3%AE%AF%E3%AE%B0%E3%AE%B1%E3%AE%B2%E3%AE%B3%E3%AE%B4%E3%AE%B5%E3%AE%B6%E3%AE%B7%E3%AE%B8%E3%AE%B9%E3%AE%BA%E3%AE%BB%E3%AE%BC%E3%AE%BD%E3%AE%BE%E3%AE%BF%E3%AF%80%E3%AF%81%E3%AF%82%E3%AF%83%E3%AF%84%E3%AF%85%E3%AF%86%E3%AF%87%E3%AF%88%E3%AF%89%E3%AF%8A%E3%AF%8B%E3%AF%8C%E3%AF%8D%E3%AF%8E%E3%AF%8F%E3%AF%90%E3%AF%91%E3%AF%92%E3%AF%93%E3%AF%94%E3%AF%95%E3%AF%96%E3%AF%97%E3%AF%98%E3%AF%99%E3%AF%9A%E3%AF%9B%E3%AF%9C%E3%AF%9D%E3%AF%9E%E3%AF%9F%E3%AF%A0%E3%AF%A1%E3%AF%A2%E3%AF%A3%E3%AF%A4%E3%AF%A5%E3%AF%A6%E3%AF%A7%E3%AF%A8%E3%AF%A9%E3%AF%AA%E3%AF%AB%E3%AF%AC%E3%AF%AD%E3%AF%AE%E3%AF%AF%E3%AF%B0%E3%AF%B1%E3%AF%B2%E3%AF%B3%E3%AF%B4%E3%AF%B5%E3%AF%B6%E3%AF%B7%E3%AF%B8%E3%AF%B9%E3%AF%BA%E3%AF%BB%E3%AF%BC%E3%AF%BD%E3%AF%BE%E3%AF%BF%E3%B0%80%E3%B0%81%E3%B0%82%E3%B0%83%E3%B0%84%E3%B0%85%E3%B0%86%E3%B0%87%E3%B0%88%E3%B0%89%E3%B0%8A%E3%B0%8B%E3%B0%8C%E3%B0%8D%E3%B0%8E%E3%B0%8F%E3%B0%90%E3%B0%91%E3%B0%92%E3%B0%93%E3%B0%94%E3%B0%95%E3%B0%96%E3%B0%97%E3%B0%98%E3%B0%99%E3%B0%9A%E3%B0%9B%E3%B0%9C%E3%B0%9D%E3%B0%9E%E3%B0%9F%E3%B0%A0%E3%B0%A1%E3%B0%A2%E3%B0%A3%E3%B0%A4%E3%B0%A5%E3%B0%A6%E3%B0%A7%E3%B0%A8%E3%B0%A9%E3%B0%AA%E3%B0%AB%E3%B0%AC%E3%B0%AD%E3%B0%AE%E3%B0%AF%E3%B0%B0%E3%B0%B1%E3%B0%B2%E3%B0%B3%E3%B0%B4%E3%B0%B5%E3%B0%B6%E3%B0%B7%E3%B0%B8%E3%B0%B9%E3%B0%BA%E3%B0%BB%E3%B0%BC%E3%B0%BD%E3%B0%BE%E3%B0%BF%E3%B1%80%E3%B1%81%E3%B1%82%E3%B1%83%E3%B1%84%E3%B1%85%E3%B1%86%E3%B1%87%E3%B1%88%E3%B1%89%E3%B1%8A%E3%B1%8B%E3%B1%8C%E3%B1%8D%E3%B1%8E%E3%B1%8F%E3%B1%90%E3%B1%91%E3%B1%92%E3%B1%93%E3%B1%94%E3%B1%95%E3%B1%96%E3%B1%97%E3%B1%98%E3%B1%99%E3%B1%9A%E3%B1%9B%E3%B1%9C%E3%B1%9D%E3%B1%9E%E3%B1%9F%E3%B1%A0%E3%B1%A1%E3%B1%A2%E3%B1%A3%E3%B1%A4%E3%B1%A5%E3%B1%A6%E3%B1%A7%E3%B1%A8%E3%B1%A9%E3%B1%AA%E3%B1%AB%E3%B1%AC%E3%B1%AD%E3%B1%AE%E3%B1%AF%E3%B1%B0%E3%B1%B1%E3%B1%B2%E3%B1%B3%E3%B1%B4%E3%B1%B5%E3%B1%B6%E3%B1%B7%E3%B1%B8%E3%B1%B9%E3%B1%BA%E3%B1%BB%E3%B1%BC%E3%B1%BD%E3%B1%BE%E3%B1%BF%E3%B2%80%E3%B2%81%E3%B2%82%E3%B2%83%E3%B2%84%E3%B2%85%E3%B2%86%E3%B2%87%E3%B2%88%E3%B2%89%E3%B2%8A%E3%B2%8B%E3%B2%8C%E3%B2%8D%E3%B2%8E%E3%B2%8F%E3%B2%90%E3%B2%91%E3%B2%92%E3%B2%93%E3%B2%94%E3%B2%95%E3%B2%96%E3%B2%97%E3%B2%98%E3%B2%99%E3%B2%9A%E3%B2%9B%E3%B2%9C%E3%B2%9D%E3%B2%9E%E3%B2%9F%E3%B2%A0%E3%B2%A1%E3%B2%A2%E3%B2%A3%E3%B2%A4%E3%B2%A5%E3%B2%A6%E3%B2%A7%E3%B2%A8%E3%B2%A9%E3%B2%AA%E3%B2%AB%E3%B2%AC%E3%B2%AD%E3%B2%AE%E3%B2%AF%E3%B2%B0%E3%B2%B1%E3%B2%B2%E3%B2%B3%E3%B2%B4%E3%B2%B5%E3%B2%B6%E3%B2%B7%E3%B2%B8%E3%B2%B9%E3%B2%BA%E3%B2%BB%E3%B2%BC%E3%B2%BD%E3%B2%BE%E3%B2%BF%E3%B3%80%E3%B3%81%E3%B3%82%E3%B3%83%E3%B3%84%E3%B3%85%E3%B3%86%E3%B3%87%E3%B3%88%E3%B3%89%E3%B3%8A%E3%B3%8B%E3%B3%8C%E3%B3%8D%E3%B3%8E%E3%B3%8F%E3%B3%90%E3%B3%91%E3%B3%92%E3%B3%93%E3%B3%94%E3%B3%95%E3%B3%96%E3%B3%97%E3%B3%98%E3%B3%99%E3%B3%9A%E3%B3%9B%E3%B3%9C%E3%B3%9D%E3%B3%9E%E3%B3%9F%E3%B3%A0%E3%B3%A1%E3%B3%A2%E3%B3%A3%E3%B3%A4%E3%B3%A5%E3%B3%A6%E3%B3%A7%E3%B3%A8%E3%B3%A9%E3%B3%AA%E3%B3%AB%E3%B3%AC%E3%B3%AD%E3%B3%AE%E3%B3%AF%E3%B3%B0%E3%B3%B1%E3%B3%B2%E3%B3%B3%E3%B3%B4%E3%B3%B5%E3%B3%B6%E3%B3%B7%E3%B3%B8%E3%B3%B9%E3%B3%BA%E3%B3%BB%E3%B3%BC%E3%B3%BD%E3%B3%BE%E3%B3%BF%E3%B4%80%E3%B4%81%E3%B4%82%E3%B4%83%E3%B4%84%E3%B4%85%E3%B4%86%E3%B4%87%E3%B4%88%E3%B4%89%E3%B4%8A%E3%B4%8B%E3%B4%8C%E3%B4%8D%E3%B4%8E%E3%B4%8F%E3%B4%90%E3%B4%91%E3%B4%92%E3%B4%93%E3%B4%94%E3%B4%95%E3%B4%96%E3%B4%97%E3%B4%98%E3%B4%99%E3%B4%9A%E3%B4%9B%E3%B4%9C%E3%B4%9D%E3%B4%9E%E3%B4%9F%E3%B4%A0%E3%B4%A1%E3%B4%A2%E3%B4%A3%E3%B4%A4%E3%B4%A5%E3%B4%A6%E3%B4%A7%E3%B4%A8%E3%B4%A9%E3%B4%AA%E3%B4%AB%E3%B4%AC%E3%B4%AD%E3%B4%AE%E3%B4%AF%E3%B4%B0%E3%B4%B1%E3%B4%B2%E3%B4%B3%E3%B4%B4%E3%B4%B5%E3%B4%B6%E3%B4%B7%E3%B4%B8%E3%B4%B9%E3%B4%BA%E3%B4%BB%E3%B4%BC%E3%B4%BD%E3%B4%BE%E3%B4%BF%E3%B5%80%E3%B5%81%E3%B5%82%E3%B5%83%E3%B5%84%E3%B5%85%E3%B5%86%E3%B5%87%E3%B5%88%E3%B5%89%E3%B5%8A%E3%B5%8B%E3%B5%8C%E3%B5%8D%E3%B5%8E%E3%B5%8F%E3%B5%90%E3%B5%91%E3%B5%92%E3%B5%93%E3%B5%94%E3%B5%95%E3%B5%96%E3%B5%97%E3%B5%98%E3%B5%99%E3%B5%9A%E3%B5%9B%E3%B5%9C%E3%B5%9D%E3%B5%9E%E3%B5%9F%E3%B5%A0%E3%B5%A1%E3%B5%A2%E3%B5%A3%E3%B5%A4%E3%B5%A5%E3%B5%A6%E3%B5%A7%E3%B5%A8%E3%B5%A9%E3%B5%AA%E3%B5%AB%E3%B5%AC%E3%B5%AD%E3%B5%AE%E3%B5%AF%E3%B5%B0%E3%B5%B1%E3%B5%B2%E3%B5%B3%E3%B5%B4%E3%B5%B5%E3%B5%B6%E3%B5%B7%E3%B5%B8%E3%B5%B9%E3%B5%BA%E3%B5%BB%E3%B5%BC%E3%B5%BD%E3%B5%BE%E3%B5%BF%E3%B6%80%E3%B6%81%E3%B6%82%E3%B6%83%E3%B6%84%E3%B6%85%E3%B6%86%E3%B6%87%E3%B6%88%E3%B6%89%E3%B6%8A%E3%B6%8B%E3%B6%8C%E3%B6%8D%E3%B6%8E%E3%B6%8F%E3%B6%90%E3%B6%91%E3%B6%92%E3%B6%93%E3%B6%94%E3%B6%95%E3%B6%96%E3%B6%97%E3%B6%98%E3%B6%99%E3%B6%9A%E3%B6%9B%E3%B6%9C%E3%B6%9D%E3%B6%9E%E3%B6%9F%E3%B6%A0%E3%B6%A1%E3%B6%A2%E3%B6%A3%E3%B6%A4%E3%B6%A5%E3%B6%A6%E3%B6%A7%E3%B6%A8%E3%B6%A9%E3%B6%AA%E3%B6%AB%E3%B6%AC%E3%B6%AD%E3%B6%AE%E3%B6%AF%E3%B6%B0%E3%B6%B1%E3%B6%B2%E3%B6%B3%E3%B6%B4%E3%B6%B5%E3%B6%B6%E3%B6%B7%E3%B6%B8%E3%B6%B9%E3%B6%BA%E3%B6%BB%E3%B6%BC%E3%B6%BD%E3%B6%BE%E3%B6%BF%E3%B7%80%E3%B7%81%E3%B7%82%E3%B7%83%E3%B7%84%E3%B7%85%E3%B7%86%E3%B7%87%E3%B7%88%E3%B7%89%E3%B7%8A%E3%B7%8B%E3%B7%8C%E3%B7%8D%E3%B7%8E%E3%B7%8F%E3%B7%90%E3%B7%91%E3%B7%92%E3%B7%93%E3%B7%94%E3%B7%95%E3%B7%96%E3%B7%97%E3%B7%98%E3%B7%99%E3%B7%9A%E3%B7%9B%E3%B7%9C%E3%B7%9D%E3%B7%9E%E3%B7%9F%E3%B7%A0%E3%B7%A1%E3%B7%A2%E3%B7%A3%E3%B7%A4%E3%B7%A5%E3%B7%A6%E3%B7%A7%E3%B7%A8%E3%B7%A9%E3%B7%AA%E3%B7%AB%E3%B7%AC%E3%B7%AD%E3%B7%AE%E3%B7%AF%E3%B7%B0%E3%B7%B1%E3%B7%B2%E3%B7%B3%E3%B7%B4%E3%B7%B5%E3%B7%B6%E3%B7%B7%E3%B7%B8%E3%B7%B9%E3%B7%BA%E3%B7%BB%E3%B7%BC%E3%B7%BD%E3%B7%BE%E3%B7%BF%E3%B8%80%E3%B8%81%E3%B8%82%E3%B8%83%E3%B8%84%E3%B8%85%E3%B8%86%E3%B8%87%E3%B8%88%E3%B8%89%E3%B8%8A%E3%B8%8B%E3%B8%8C%E3%B8%8D%E3%B8%8E%E3%B8%8F%E3%B8%90%E3%B8%91%E3%B8%92%E3%B8%93%E3%B8%94%E3%B8%95%E3%B8%96%E3%B8%97%E3%B8%98%E3%B8%99%E3%B8%9A%E3%B8%9B%E3%B8%9C%E3%B8%9D%E3%B8%9E%E3%B8%9F%E3%B8%A0%E3%B8%A1%E3%B8%A2%E3%B8%A3%E3%B8%A4%E3%B8%A5%E3%B8%A6%E3%B8%A7%E3%B8%A8%E3%B8%A9%E3%B8%AA%E3%B8%AB%E3%B8%AC%E3%B8%AD%E3%B8%AE%E3%B8%AF%E3%B8%B0%E3%B8%B1%E3%B8%B2%E3%B8%B3%E3%B8%B4%E3%B8%B5%E3%B8%B6%E3%B8%B7%E3%B8%B8%E3%B8%B9%E3%B8%BA%E3%B8%BB%E3%B8%BC%E3%B8%BD%E3%B8%BE%E3%B8%BF%E3%B9%80%E3%B9%81%E3%B9%82%E3%B9%83%E3%B9%84%E3%B9%85%E3%B9%86%E3%B9%87%E3%B9%88%E3%B9%89%E3%B9%8A%E3%B9%8B%E3%B9%8C%E3%B9%8D%E3%B9%8E%E3%B9%8F%E3%B9%90%E3%B9%91%E3%B9%92%E3%B9%93%E3%B9%94%E3%B9%95%E3%B9%96%E3%B9%97%E3%B9%98%E3%B9%99%E3%B9%9A%E3%B9%9B%E3%B9%9C%E3%B9%9D%E3%B9%9E%E3%B9%9F%E3%B9%A0%E3%B9%A1%E3%B9%A2%E3%B9%A3%E3%B9%A4%E3%B9%A5%E3%B9%A6%E3%B9%A7%E3%B9%A8%E3%B9%A9%E3%B9%AA%E3%B9%AB%E3%B9%AC%E3%B9%AD%E3%B9%AE%E3%B9%AF%E3%B9%B0%E3%B9%B1%E3%B9%B2%E3%B9%B3%E3%B9%B4%E3%B9%B5%E3%B9%B6%E3%B9%B7%E3%B9%B8%E3%B9%B9%E3%B9%BA%E3%B9%BB%E3%B9%BC%E3%B9%BD%E3%B9%BE%E3%B9%BF%E3%BA%80" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
