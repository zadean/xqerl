-module('fn_base_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-base-uri-1'/1]).
-export(['fn-base-uri-2'/1]).
-export(['fn-base-uri-3'/1]).
-export(['fn-base-uri-4'/1]).
-export(['fn-base-uri-5'/1]).
-export(['fn-base-uri-6'/1]).
-export(['fn-base-uri-7'/1]).
-export(['fn-base-uri-8'/1]).
-export(['fn-base-uri-9'/1]).
-export(['fn-base-uri-10'/1]).
-export(['fn-base-uri-11'/1]).
-export(['fn-base-uri-12'/1]).
-export(['fn-base-uri-13'/1]).
-export(['fn-base-uri-14'/1]).
-export(['fn-base-uri-15'/1]).
-export(['fn-base-uri-16'/1]).
-export(['fn-base-uri-17'/1]).
-export(['fn-base-uri-18'/1]).
-export(['fn-base-uri-19'/1]).
-export(['fn-base-uri-20'/1]).
-export(['fn-base-uri-21'/1]).
-export(['fn-base-uri-22'/1]).
-export(['fn-base-uri-23'/1]).
-export(['fn-base-uri-24'/1]).
-export(['fn-base-uri-25'/1]).
-export(['fn-base-uri-26'/1]).
-export(['fn-base-uri-27'/1]).
-export(['fn-base-uri-28'/1]).
-export(['fn-base-uri-29'/1]).
-export(['fn-base-uri-30'/1]).
-export(['fn-base-uri-31'/1]).
-export(['fn-base-uri-32'/1]).
-export(['fn-base-uri-33'/1]).
-export(['fn-base-uri-34'/1]).
-export(['fn-base-uri-35'/1]).
-export(['fn-base-uri-36'/1]).
-export(['fn-base-uri-37'/1]).
-export(['fn-base-uri-38'/1]).
-export(['fn-base-uri-39'/1]).
-export(['fn-base-uri-40'/1]).
-export(['fn-base-uri-41'/1]).
-export(['fn-base-uri-42'/1]).
-export(['fn-base-uri-43'/1]).
-export(['K-BaseURIFunc-1'/1]).
-export(['K-BaseURIFunc-2'/1]).
-export(['K2-BaseURIFunc-1'/1]).
-export(['K2-BaseURIFunc-2'/1]).
-export(['K2-BaseURIFunc-3'/1]).
-export(['K2-BaseURIFunc-4'/1]).
-export(['K2-BaseURIFunc-5'/1]).
-export(['K2-BaseURIFunc-6'/1]).
-export(['K2-BaseURIFunc-7'/1]).
-export(['K2-BaseURIFunc-8'/1]).
-export(['K2-BaseURIFunc-9'/1]).
-export(['K2-BaseURIFunc-10'/1]).
-export(['K2-BaseURIFunc-11'/1]).
-export(['K2-BaseURIFunc-12'/1]).
-export(['K2-BaseURIFunc-13'/1]).
-export(['K2-BaseURIFunc-14'/1]).
-export(['K2-BaseURIFunc-15'/1]).
-export(['K2-BaseURIFunc-16'/1]).
-export(['K2-BaseURIFunc-17'/1]).
-export(['K2-BaseURIFunc-18'/1]).
-export(['K2-BaseURIFunc-19'/1]).
-export(['K2-BaseURIFunc-20'/1]).
-export(['K2-BaseURIFunc-21'/1]).
-export(['K2-BaseURIFunc-22'/1]).
-export(['K2-BaseURIFunc-23'/1]).
-export(['K2-BaseURIFunc-24'/1]).
-export(['K2-BaseURIFunc-25'/1]).
-export(['K2-BaseURIFunc-26'/1]).
-export(['K2-BaseURIFunc-27'/1]).
-export(['K2-BaseURIFunc-28'/1]).
-export(['K2-BaseURIFunc-29'/1]).
-export(['K2-BaseURIFunc-30'/1]).
-export(['K2-BaseURIFunc-31'/1]).
-export(['K2-BaseURIFunc-32'/1]).
-export(['K2-BaseURIFunc-33'/1]).
-export(['cbcl-base-uri-001'/1]).
-export(['cbcl-base-uri-002'/1]).
-export(['cbcl-base-uri-003'/1]).
-export(['cbcl-base-uri-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-base-uri-1',
   'fn-base-uri-2',
   'fn-base-uri-3',
   'fn-base-uri-4',
   'fn-base-uri-5',
   'fn-base-uri-6',
   'fn-base-uri-7',
   'fn-base-uri-8',
   'fn-base-uri-9',
   'fn-base-uri-10',
   'fn-base-uri-11',
   'fn-base-uri-12',
   'fn-base-uri-13',
   'fn-base-uri-14',
   'fn-base-uri-15',
   'fn-base-uri-16',
   'fn-base-uri-17',
   'fn-base-uri-18',
   'fn-base-uri-19',
   'fn-base-uri-20',
   'fn-base-uri-21',
   'fn-base-uri-22',
   'fn-base-uri-23',
   'fn-base-uri-24',
   'fn-base-uri-25',
   'fn-base-uri-26',
   'fn-base-uri-27',
   'fn-base-uri-28',
   'fn-base-uri-29',
   'fn-base-uri-30',
   'fn-base-uri-31',
   'fn-base-uri-32',
   'fn-base-uri-33',
   'fn-base-uri-34',
   'fn-base-uri-35',
   'fn-base-uri-36',
   'fn-base-uri-37',
   'fn-base-uri-38',
   'fn-base-uri-39',
   'fn-base-uri-40',
   'fn-base-uri-41',
   'fn-base-uri-42',
   'fn-base-uri-43',
   'K-BaseURIFunc-1',
   'K-BaseURIFunc-2',
   'K2-BaseURIFunc-1',
   'K2-BaseURIFunc-2',
   'K2-BaseURIFunc-3',
   'K2-BaseURIFunc-4',
   'K2-BaseURIFunc-5',
   'K2-BaseURIFunc-6',
   'K2-BaseURIFunc-7',
   'K2-BaseURIFunc-8',
   'K2-BaseURIFunc-9',
   'K2-BaseURIFunc-10',
   'K2-BaseURIFunc-11',
   'K2-BaseURIFunc-12',
   'K2-BaseURIFunc-13',
   'K2-BaseURIFunc-14',
   'K2-BaseURIFunc-15',
   'K2-BaseURIFunc-16',
   'K2-BaseURIFunc-17',
   'K2-BaseURIFunc-18',
   'K2-BaseURIFunc-19',
   'K2-BaseURIFunc-20',
   'K2-BaseURIFunc-21',
   'K2-BaseURIFunc-22',
   'K2-BaseURIFunc-23',
   'K2-BaseURIFunc-24',
   'K2-BaseURIFunc-25',
   'K2-BaseURIFunc-26',
   'K2-BaseURIFunc-27',
   'K2-BaseURIFunc-28',
   'K2-BaseURIFunc-29',
   'K2-BaseURIFunc-30',
   'K2-BaseURIFunc-31',
   'K2-BaseURIFunc-32',
   'K2-BaseURIFunc-33',
   'cbcl-base-uri-001',
   'cbcl-base-uri-002',
   'cbcl-base-uri-003',
   'cbcl-base-uri-004'].
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
];
environment('TopMany') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/AxisStep/TopMany.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-base-uri-1'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:noContextFunction() { fn:base-uri() }; declare variable $input-context1 external; eg:noContextFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-base-uri-2'(_Config) ->
   Qry = "(1 to 100)[fn:base-uri()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-base-uri-3'(_Config) ->
   Qry = "fn:count(fn:base-uri(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-base-uri-4'(_Config) ->
   Qry = "fn:base-uri(<!-- A comment -->)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-5'(_Config) ->
   Qry = "fn:base-uri(comment {\"A Comment Node \"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-6'(_Config) ->
   Qry = "fn:base-uri(text {\"A Text Node\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-7'(_Config) ->
   Qry = "fn:count(fn:base-uri(element anElement {\"An Element Node\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            0
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-base-uri-8'(_Config) ->
   Qry = "fn:count(fn:base-uri(<anElement>Element content</anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            0
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-base-uri-9'(_Config) ->
   Qry = "fn:string(fn:base-uri(<anElement xml:base=\"http://example.com/examples\">Element content</anElement>))",
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
'fn-base-uri-10'(_Config) ->
   Qry = "fn:string(fn:base-uri(<anElement xml:base=\"http://www.example.com\">Element content</anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-11'(_Config) ->
   Qry = "fn:count(fn:base-uri(document {<aDocument>some content</aDocument>}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            1
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("1"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-base-uri-12'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
            fn:string(fn:base-uri(document {<aDocument>some content</aDocument>}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-13'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; fn:string(fn:base-uri(<anElement>some content</anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-14'(_Config) ->
   Qry = "fn:base-uri(attribute anAttribute{\"attribute value\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-15'(_Config) ->
   Qry = "fn:base-uri(<?format role=\"output\" ?>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-16'(_Config) ->
   Qry = "fn:base-uri(processing-instruction {\"PItarget\"} {\"PIcontent\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-17'(_Config) ->
   Qry = "
         declare base-uri \"http://example.org\"; 
         fn:base-uri(processing-instruction {\"PItarget\"} {\"PIcontent\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-18'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement>With some contexnt</anElement> 
        return fn:string(fn:base-uri($var))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-19'(_Config) ->
   Qry = "let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(fn:base-uri($var))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.examples.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-20'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(fn:base-uri($var))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.examples.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-21'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <!-- A Comment --> return fn:base-uri($var)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-22'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { fn:base-uri(.) }; 
        eg:noContextFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-base-uri-23'(_Config) ->
   Qry = "fn:string(fn:base-uri(<anElement xml:base=\"http://example.com/examples\">Element content</anElement>))",
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
'fn-base-uri-24'(_Config) ->
   Qry = "(<!-- A comment -->)/base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-25'(_Config) ->
   Qry = "(comment {\"A Comment Node \"})/fn:base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-26'(_Config) ->
   Qry = "(text {\"A Text Node\"})/fn:base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-27'(_Config) ->
   Qry = "fn:count((element anElement {\"An Element Node\"})/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            0
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-base-uri-28'(_Config) ->
   Qry = "fn:count((<anElement>Element content</anElement>)/fn:base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            0
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-base-uri-29'(_Config) ->
   Qry = "fn:string((<anElement xml:base=\"http://example.com/examples\">Element content</anElement>)/fn:base-uri())",
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
'fn-base-uri-30'(_Config) ->
   Qry = "fn:string((<anElement xml:base=\"http://www.example.com\">Element content</anElement>)/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-31'(_Config) ->
   Qry = "fn:count((document {<aDocument>some content</aDocument>})/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            1
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("1"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-base-uri-32'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
            fn:string((document {<aDocument>some content</aDocument>})/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-33'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; fn:string((<anElement>some content</anElement>)/fn:base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-34'(_Config) ->
   Qry = "(attribute anAttribute{\"attribute value\"})/fn:base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-35'(_Config) ->
   Qry = "(<?format role=\"output\" ?>)/fn:base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-36'(_Config) ->
   Qry = "(processing-instruction {\"PItarget\"} {\"PIcontent\"})/base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-37'(_Config) ->
   Qry = "
         declare base-uri \"http://example.org\"; 
         (processing-instruction {\"PItarget\"} {\"PIcontent\"})/base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-38'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement>With some contexnt</anElement> 
        return fn:string(($var)/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-39'(_Config) ->
   Qry = "let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(($var)/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.examples.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-40'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <anElement xml:base=\"http://www.examples.com\">With some content</anElement> 
        return fn:string(($var)/base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.examples.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.examples.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-base-uri-41'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; 
        let $var := <!-- A Comment --> return ($var)/base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-base-uri-42'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { fn:base-uri() }; 
        eg:noContextFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-base-uri-43'(_Config) ->
   Qry = "fn:string((<anElement xml:base=\"http://example.com/examples\">Element content</anElement>)/fn:base-uri())",
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
'K-BaseURIFunc-1'(_Config) ->
   Qry = "base-uri((), \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-BaseURIFunc-2'(_Config) ->
   Qry = "empty(base-uri(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-1'(_Config) ->
   Qry = "empty(document-uri(<!-- comment -->))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-2'(_Config) ->
   Qry = "empty(document-uri(attribute name {\"content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-3'(_Config) ->
   Qry = "empty(document-uri(<?target data?>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-4'(_Config) ->
   Qry = "empty(document-uri(processing-instruction name {123}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-5'(_Config) ->
   Qry = "empty(document-uri(text {123}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-6'(_Config) ->
   Qry = "empty(document-uri(<elem/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-7'(_Config) ->
   Qry = "empty(document-uri(<elem attr=\"f\"/>/@attr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-8'(_Config) ->
   Qry = "empty(document-uri(document {1}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-9'(_Config) ->
   Qry = "let $i := <e xml:base=\"http://www.example.com/\"><?target data?></e> 
        return base-uri($i/processing-instruction()[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-10'(_Config) ->
   Qry = "let $i := <e xml:base=\"http://www.example.com/\">{processing-instruction target {\"data\"}}</e> return base-uri($i/processing-instruction()[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-11'(_Config) ->
   Qry = "let $i := <e xml:base=\"http://www.example.com/\"><!-- content --></e> return base-uri($i/comment()[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-12'(_Config) ->
   Qry = "let $i := <e xml:base=\"http://www.example.com/\">{comment {\"content\"}}</e> return base-uri($i/comment()[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-13'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(comment {\"content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-14'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(<!-- comment -->))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-15'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(processing-instruction target {\"data\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-16'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(<?target data?>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-17'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; empty(base-uri(attribute name {\"data\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-18'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; let $i := <e attr=\"foo\"></e> return base-uri($i/@attr)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-19'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/\"; let $i := <e xml:base = \"foo/../xml\" attr=\"foo\"> </e> return base-uri($i/@attr)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/xml
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com/xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-20'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/\"; let $i := <e xml:base = \"foo/../xml\" attr=\"foo\"> </e> return base-uri($i/@xml:base)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/xml
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com/xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-21'(_Config) ->
   Qry = "for $i in (1, base-uri(.), 3) return 
        typeswitch($i) 
        case xs:anyURI return \"xs:anyURI\" 
        case xs:integer return \"xs:integer\" 
        default return \"FAILURE\"",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer xs:anyURI xs:integer
      ",
   case xqerl_types:string_value(Res) of
             "xs:integer xs:anyURI xs:integer" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-22'(_Config) ->
   Qry = "declare base-uri \"http://example.com/baseURI\"; empty(base-uri(<?target data?>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-23'(_Config) ->
   Qry = "declare base-uri \"http://example.com/baseURI\"; empty(base-uri(processing-instruction target {\"data\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-24'(_Config) ->
   Qry = "empty(base-uri(<?target data?>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-25'(_Config) ->
   Qry = "empty(base-uri(processing-instruction target {\"data\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-26'(_Config) ->
   Qry = "empty(base-uri(attribute name {\"value\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-27'(_Config) ->
   Qry = "declare base-uri \"http://example.com/BASEURI\"; base-uri(document {()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.com/BASEURI
      ",
   case xqerl_types:string_value(Res) of
             "http://example.com/BASEURI" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-28'(_Config) ->
   Qry = "declare base-uri \"http://example.com/\"; let $i := document {()} return (\"Base URI:\", base-uri($i), \"Document URI:\", document-uri($i))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Base URI: http://example.com/ Document URI:
      ",
   case xqerl_types:string_value(Res) of
             "Base URI: http://example.com/ Document URI:" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-BaseURIFunc-29'(_Config) ->
   Qry = "let $i := fn:base-uri(<anElement xml:base=\"http:\\\\example.com\\\\examples\">Element content</anElement>) return $i eq \"http:\\\\example.com\\\\examples\" or empty($i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-BaseURIFunc-30'(_Config) ->
   Qry = "fn:base-uri(<anElement xml:base=\"http://example.com/examples\"><b xml:base=\"\"/>Element content</anElement>/b)",
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
'K2-BaseURIFunc-31'(_Config) ->
   Qry = "fn:base-uri(exactly-one(<anElement xml:base=\"http://example.com/examples\"><?target data?></anElement>/processing-instruction()))",
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
'K2-BaseURIFunc-32'(_Config) ->
   Qry = "fn:base-uri(exactly-one(<anElement xml:base=\"http://example.com/examples\"><!-- a comment --></anElement>/comment()))",
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
'K2-BaseURIFunc-33'(_Config) ->
   Qry = "<e xml:base=\"http://example.com/ABC/\"> <a xml:base=\"../\"> <b xml:base=\"DEF/file.test\"/> </a> </e>/a/b/base-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.com/DEF/file.test
      ",
   case xqerl_types:string_value(Res) of
             "http://example.com/DEF/file.test" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-base-uri-001'(_Config) ->
   Qry = "
      	let $d := document { <root xml:base=\"http://www.w3.org/\"><implicit-base><child /></implicit-base><explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base></root> } 
      	return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/explicit-base } </copy> return fn:base-uri(($y/explicit-base)[1])
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.w3.org/TR/xquery
      ",
   case xqerl_types:string_value(Res) of
             "http://www.w3.org/TR/xquery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-base-uri-002'(_Config) ->
   Qry = "
      let $d := document { <root xml:base=\"http://www.w3.org/\"> <implicit-base><child /></implicit-base> <explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base> </root> } 
      return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/explicit-base } </copy> 
      return fn:base-uri(($y/explicit-base/child)[1])
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.w3.org/TR/xquery
      ",
   case xqerl_types:string_value(Res) of
             "http://www.w3.org/TR/xquery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-base-uri-003'(_Config) ->
   Qry = "
      let $d := document { <root xml:base=\"http://www.w3.org/\"> <implicit-base><child /></implicit-base> <explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base> </root> } 
      return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/implicit-base } </copy> 
      return fn:base-uri(($y/implicit-base)[1])
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-base-uri-004'(_Config) ->
   Qry = "
      let $d := document { <root xml:base=\"http://www.w3.org/\"> <implicit-base><child /></implicit-base> <explicit-base xml:base=\"http://www.w3.org/TR/xquery\"><child /></explicit-base> </root> } 
      return let $y := <copy xml:base=\"http://www.example.org\"> { $d/root/implicit-base } </copy> 
      return fn:base-uri(($y/implicit-base/child)[1])
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
