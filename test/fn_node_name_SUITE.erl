-module('fn_node_name_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-node-name-1'/1]).
-export(['fn-node-name-2'/1]).
-export(['fn-node-name-3'/1]).
-export(['fn-node-name-4'/1]).
-export(['fn-node-name-5'/1]).
-export(['fn-node-name-6'/1]).
-export(['fn-node-name-7'/1]).
-export(['fn-node-name-8'/1]).
-export(['fn-node-name-9'/1]).
-export(['fn-node-name-10'/1]).
-export(['fn-node-name-11'/1]).
-export(['fn-node-name-12'/1]).
-export(['fn-node-name-13'/1]).
-export(['fn-node-name-14'/1]).
-export(['fn-node-name-15'/1]).
-export(['fn-node-name-16'/1]).
-export(['fn-node-name-17'/1]).
-export(['fn-node-name-18'/1]).
-export(['fn-node-name-19'/1]).
-export(['fn-node-name-20'/1]).
-export(['fn-node-name-21'/1]).
-export(['fn-node-name-22'/1]).
-export(['fn-node-name-23'/1]).
-export(['fn-node-name-24'/1]).
-export(['fn-node-name-25'/1]).
-export(['fn-node-name-26'/1]).
-export(['fn-node-name-27'/1]).
-export(['fn-node-name-28'/1]).
-export(['fn-node-name-29'/1]).
-export(['fn-node-name-30'/1]).
-export(['fn-node-name-31'/1]).
-export(['fn-node-name-32'/1]).
-export(['K-NodeNameFunc-1'/1]).
-export(['K-NodeNameFunc-1a'/1]).
-export(['K-NodeNameFunc-2'/1]).
-export(['K-NodeNameFunc-3'/1]).
-export(['K2-NodeNameFunc-1'/1]).
-export(['K2-NodeNameFunc-2'/1]).
-export(['K2-NodeNameFunc-3'/1]).
-export(['K3-NodeNameFunc-1'/1]).
-export(['K3-NodeNameFunc-2'/1]).
-export(['K3-NodeNameFunc-3'/1]).
-export(['K3-NodeNameFunc-4'/1]).
-export(['cbcl-node-name-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-node-name-1',
   'fn-node-name-2',
   'fn-node-name-3',
   'fn-node-name-4',
   'fn-node-name-5',
   'fn-node-name-6',
   'fn-node-name-7',
   'fn-node-name-8',
   'fn-node-name-9',
   'fn-node-name-10',
   'fn-node-name-11',
   'fn-node-name-12',
   'fn-node-name-13',
   'fn-node-name-14',
   'fn-node-name-15',
   'fn-node-name-16',
   'fn-node-name-17',
   'fn-node-name-18',
   'fn-node-name-19',
   'fn-node-name-20',
   'fn-node-name-21',
   'fn-node-name-22',
   'fn-node-name-23',
   'fn-node-name-24',
   'fn-node-name-25',
   'fn-node-name-26',
   'fn-node-name-27',
   'fn-node-name-28',
   'fn-node-name-29',
   'fn-node-name-30',
   'fn-node-name-31',
   'fn-node-name-32',
   'K-NodeNameFunc-1',
   'K-NodeNameFunc-1a',
   'K-NodeNameFunc-2',
   'K-NodeNameFunc-3',
   'K2-NodeNameFunc-1',
   'K2-NodeNameFunc-2',
   'K2-NodeNameFunc-3',
   'K3-NodeNameFunc-1',
   'K3-NodeNameFunc-2',
   'K3-NodeNameFunc-3',
   'K3-NodeNameFunc-4',
   'cbcl-node-name-001'].
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
'fn-node-name-1'(_Config) ->
   Qry = "fn:count(fn:node-name(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-2'(_Config) ->
   Qry = "fn:count(fn:node-name(/works[1]/employee[2]/child::text()[last()]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-3'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(/works[1]/employee[2]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employee
      ",
   case xqerl_types:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-4'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(<shoe size = \"5\"/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         shoe
      ",
   case xqerl_types:string_value(Res) of
             "shoe" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-5'(_Config) ->
   Qry = "fn:count(fn:node-name(<!-- This a comment node -->))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-6'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(<?format role=\"output\" ?>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         format
      ",
   case xqerl_types:string_value(Res) of
             "format" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-7'(_Config) ->
   Qry = "fn:namespace-uri-from-QName(fn:node-name(<anelement xmlns = \"http://example.com/examples\"></anelement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.com/examples
      ",
   case xqerl_types:string_value(Res) of
             "http://example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-8'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(element elementName {}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementName
      ",
   case xqerl_types:string_value(Res) of
             "elementName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-9'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(element elementName {})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-10'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(element elementName { element achild {\"some text\"}}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementName
      ",
   case xqerl_types:string_value(Res) of
             "elementName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-11'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(attribute attributeName {\"\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         attributeName
      ",
   case xqerl_types:string_value(Res) of
             "attributeName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-12'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(attribute attributeName {\"an attribute value\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         attributeName
      ",
   case xqerl_types:string_value(Res) of
             "attributeName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-13'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(attribute attributeName {\"an attribute value\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-14'(_Config) ->
   Qry = "fn:count(fn:local-name-from-QName(fn:node-name(document {\"\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-15'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(document {\"\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-16'(_Config) ->
   Qry = "fn:count(fn:local-name-from-QName(fn:node-name(document {\"<element1> text </element1>\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-17'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(document {\"<element1> text </element1>\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-18'(_Config) ->
   Qry = "fn:count(fn:local-name-from-QName(fn:node-name(text {\"\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-19'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(text {\"\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-20'(_Config) ->
   Qry = "fn:count(fn:local-name-from-QName(fn:node-name(text {\"a text value\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-21'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(text {\"a text value\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-22'(_Config) ->
   Qry = "fn:local-name-from-QName(fn:node-name(processing-instruction piName {\"Processing Instruction content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         piName
      ",
   case xqerl_types:string_value(Res) of
             "piName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-23'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:node-name(processing-instruction piName {\"Processing Instruction content\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-node-name-24'(_Config) ->
   Qry = "fn:node-name(processing-instruction piName {\"Processing Instruction content\"},\"A Second Argument\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-node-name-25'(_Config) ->
   Qry = "<node xmlns=\"http://example.com/ns\"/>/node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QName(\"http://example.com/ns\", \"node\")
      ",
 Tst = xqerl:run("QName(\"http://example.com/ns\", \"node\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-node-name-26'(_Config) ->
   Qry = "<node xml:space=\"preserve\" xmlns=\"http://example.com/ns\"/>/@xml:space/node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QName(\"http://www.w3.org/XML/1998/namespace\", \"space\")
      ",
 Tst = xqerl:run("QName(\"http://www.w3.org/XML/1998/namespace\", \"space\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-node-name-27'(_Config) ->
   Qry = "<?test data?>/node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QName(\"\", \"test\")
      ",
 Tst = xqerl:run("QName(\"\", \"test\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-node-name-28'(_Config) ->
   Qry = "namespace{\"foo\"}{\"http://example.com/foo\"}/node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QName(\"\", \"foo\")
      ",
 Tst = xqerl:run("QName(\"\", \"foo\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-node-name-29'(_Config) ->
   Qry = "<a>abc</a>/text()/node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-node-name-30'(_Config) ->
   Qry = "79[node-name()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-node-name-31'(_Config) ->
   Qry = "node-name#0!node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-node-name-32'(_Config) ->
   Qry = "node-name()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K-NodeNameFunc-1'(_Config) ->
   {skip,"XP20 XQ10"}.
'K-NodeNameFunc-1a'(_Config) ->
   Qry = "node-name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K-NodeNameFunc-2'(_Config) ->
   Qry = "node-name((), \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-NodeNameFunc-3'(_Config) ->
   Qry = "empty(node-name(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NodeNameFunc-1'(_Config) ->
   Qry = "node-name(/*, ())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-NodeNameFunc-2'(_Config) ->
   Qry = "node-name(\"string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-NodeNameFunc-3'(_Config) ->
   Qry = "node-name(/*) instance of xs:QName",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K3-NodeNameFunc-1'(_Config) ->
   Qry = "node-name(3.3)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K3-NodeNameFunc-2'(_Config) ->
   Qry = "node-name( (<a/>, <b/>))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K3-NodeNameFunc-3'(_Config) ->
   Qry = "node-name( (<a/>, \"mystring\"))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K3-NodeNameFunc-4'(_Config) ->
   Qry = "node-name( node-name(<a/>))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-node-name-001'(_Config) ->
   Qry = "empty(node-name( comment { \"comments have no name \" } ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
