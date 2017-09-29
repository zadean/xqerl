-module('fn_namespace_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-namespace-uri-1'/1]).
-export(['fn-namespace-uri-2'/1]).
-export(['fn-namespace-uri-3'/1]).
-export(['fn-namespace-uri-4'/1]).
-export(['fn-namespace-uri-5'/1]).
-export(['fn-namespace-uri-6'/1]).
-export(['fn-namespace-uri-7'/1]).
-export(['fn-namespace-uri-8'/1]).
-export(['fn-namespace-uri-9'/1]).
-export(['fn-namespace-uri-10'/1]).
-export(['fn-namespace-uri-11'/1]).
-export(['fn-namespace-uri-12'/1]).
-export(['fn-namespace-uri-13'/1]).
-export(['fn-namespace-uri-14'/1]).
-export(['fn-namespace-uri-15'/1]).
-export(['fn-namespace-uri-16'/1]).
-export(['fn-namespace-uri-17'/1]).
-export(['fn-namespace-uri-18'/1]).
-export(['fn-namespace-uri-19'/1]).
-export(['fn-namespace-uri-20'/1]).
-export(['fn-namespace-uri-21'/1]).
-export(['fn-namespace-uri-22'/1]).
-export(['fn-namespace-uri-23'/1]).
-export(['fn-namespace-uri-24'/1]).
-export(['fn-namespace-uri-25'/1]).
-export(['fn-namespace-uri-26'/1]).
-export(['K-NodeNamespaceURIFunc-1'/1]).
-export(['K-NodeNamespaceURIFunc-2'/1]).
-export(['K-NodeNamespaceURIFunc-3'/1]).
-export(['K2-NodeNamespaceURIFunc-1'/1]).
-export(['K2-NodeNamespaceURIFunc-2'/1]).
-export(['K2-NodeNamespaceURIFunc-3'/1]).
-export(['cbcl-namespace-uri-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-namespace-uri-1',
   'fn-namespace-uri-2',
   'fn-namespace-uri-3',
   'fn-namespace-uri-4',
   'fn-namespace-uri-5',
   'fn-namespace-uri-6',
   'fn-namespace-uri-7',
   'fn-namespace-uri-8',
   'fn-namespace-uri-9',
   'fn-namespace-uri-10',
   'fn-namespace-uri-11',
   'fn-namespace-uri-12',
   'fn-namespace-uri-13',
   'fn-namespace-uri-14',
   'fn-namespace-uri-15',
   'fn-namespace-uri-16',
   'fn-namespace-uri-17',
   'fn-namespace-uri-18',
   'fn-namespace-uri-19',
   'fn-namespace-uri-20',
   'fn-namespace-uri-21',
   'fn-namespace-uri-22',
   'fn-namespace-uri-23',
   'fn-namespace-uri-24',
   'fn-namespace-uri-25',
   'fn-namespace-uri-26',
   'K-NodeNamespaceURIFunc-1',
   'K-NodeNamespaceURIFunc-2',
   'K-NodeNamespaceURIFunc-3',
   'K2-NodeNamespaceURIFunc-1',
   'K2-NodeNamespaceURIFunc-2',
   'K2-NodeNamespaceURIFunc-3',
   'cbcl-namespace-uri-001'].
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
'fn-namespace-uri-1'(_Config) ->
   Qry = "fn:namespace-uri()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-namespace-uri-2'(_Config) ->
   Qry = "fn:namespace-uri(/*,\"A Second Argument\")",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-namespace-uri-3'(_Config) ->
   Qry = "(1 to 100)[fn:namespace-uri()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-namespace-uri-4'(_Config) ->
   Qry = "fn:namespace-uri(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-5'(_Config) ->
   Qry = "namespace-uri((//comment())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-6'(_Config) ->
   Qry = "namespace-uri(<!--comment-->)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-7'(_Config) ->
   Qry = "namespace-uri((//processing-instruction())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-8'(_Config) ->
   Qry = "namespace-uri(<?pi data?>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-9'(_Config) ->
   Qry = "namespace-uri((//text())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-10'(_Config) ->
   Qry = "namespace-uri(/*)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-11'(_Config) ->
   Qry = "fn:namespace-uri(element elementNode {\"with no namespace\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-12'(_Config) ->
   Qry = "fn:namespace-uri(/works/employee[1]/@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-13'(_Config) ->
   Qry = "fn:namespace-uri(attribute anAttribute {\"Attribute Value No Namespace\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            xs:anyURI
         
      ",
 case  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:anyURI' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-namespace-uri-14'(_Config) ->
   Qry = "fn:namespace-uri(/works[1]/employee[1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-15'(_Config) ->
   Qry = "fn:namespace-uri(/works[1]/employee[1]/@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-namespace-uri-16'(_Config) ->
   Qry = "let $var := /works/employee[1] return $var/fn:namespace-uri()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            xs:anyURI
         
      ",
 case  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:anyURI' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-namespace-uri-17'(_Config) ->
   Qry = "namespace-uri(<anElement xmlns = \"http://www.example.com/examples\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"http://www.example.com/examples\"
            xs:anyURI
         
      ",
 case  begin Tst1 = xqerl:run("\"http://www.example.com/examples\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:anyURI' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-namespace-uri-18'(_Config) ->
   Qry = "declare namespace ex = \"http://www.example.com/examples\"; 
            fn:string(fn:namespace-uri(element ex:anElement {\"An Element Content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.example.com/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-19'(_Config) ->
   Qry = "declare namespace ex = \"http://www.example.com/examples\"; 
            fn:namespace-uri(element anElement {\"An Element Content\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-20'(_Config) ->
   Qry = "declare namespace ex = \"http://www.example.com/examples\"; 
              fn:namespace-uri(<anElement>An Element Content</anElement>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-21'(_Config) ->
   Qry = "declare namespace ex = \"http://www.example.com/examples\"; 
            fn:namespace-uri(<ex:anElement>An Element Content</ex:anElement>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.example.com/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-22'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/examples\"; 
            fn:string(fn:namespace-uri(<anElement>An Element Content</anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.example.com/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-23'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/examples\"; 
        declare namespace ex = \"http://www.example.com/exampleswithPrefix\"; 
        fn:string(fn:namespace-uri(<ex:anElement>An Element Content</ex:anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.example.com/exampleswithPrefix
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/exampleswithPrefix" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-24'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/examples\"; 
        declare namespace ex = \"http://www.example.com/exampleswithPrefix\"; 
        fn:string(fn:namespace-uri(element ex:anElement {\"An Element Content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.example.com/exampleswithPrefix
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/exampleswithPrefix" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-25'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/examples\"; 
        declare namespace ex = \"http://www.example.com/exampleswithPrefix\"; 
        fn:string(fn:namespace-uri(element anElement {\"An Element Content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.example.com/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-namespace-uri-26'(_Config) ->
   Qry = "fn:namespace-uri(.)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K-NodeNamespaceURIFunc-1'(_Config) ->
   Qry = "namespace-uri((), \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-NodeNamespaceURIFunc-2'(_Config) ->
   Qry = "if(false()) then namespace-uri() else true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NodeNamespaceURIFunc-3'(_Config) ->
   Qry = "namespace-uri(()) eq xs:anyURI(\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NodeNamespaceURIFunc-1'(_Config) ->
   Qry = "namespace-uri(<?target data?>) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NodeNamespaceURIFunc-2'(_Config) ->
   Qry = "namespace-uri(<!--comment-->) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NodeNamespaceURIFunc-3'(_Config) ->
   Qry = "namespace-uri(text{()}) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-namespace-uri-001'(_Config) ->
   Qry = "fn:boolean(fn:namespace-uri(<element />))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
