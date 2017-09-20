-module('prod_BaseURIDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['base-URI-1'/1]).
-export(['base-URI-2'/1]).
-export(['base-URI-3'/1]).
-export(['base-URI-4'/1]).
-export(['base-URI-5'/1]).
-export(['base-URI-6'/1]).
-export(['base-URI-7'/1]).
-export(['base-URI-8'/1]).
-export(['base-URI-9'/1]).
-export(['base-URI-10'/1]).
-export(['base-URI-11'/1]).
-export(['base-URI-12'/1]).
-export(['base-URI-13'/1]).
-export(['base-URI-14'/1]).
-export(['base-URI-15'/1]).
-export(['base-URI-18'/1]).
-export(['base-URI-19'/1]).
-export(['base-URI-20'/1]).
-export(['base-URI-21'/1]).
-export(['base-URI-22'/1]).
-export(['base-URI-23'/1]).
-export(['base-URI-24'/1]).
-export(['base-uri-25'/1]).
-export(['base-uri-26'/1]).
-export(['base-uri-27'/1]).
-export(['base-uri-28'/1]).
-export(['base-uri-29'/1]).
-export(['K-BaseURIProlog-1'/1]).
-export(['K-BaseURIProlog-2'/1]).
-export(['K-BaseURIProlog-3'/1]).
-export(['K2-BaseURIProlog-1'/1]).
-export(['K2-BaseURIProlog-2'/1]).
-export(['K2-BaseURIProlog-3'/1]).
-export(['K2-BaseURIProlog-4'/1]).
-export(['K2-BaseURIProlog-5'/1]).
-export(['K2-BaseURIProlog-6'/1]).
-export(['K2-BaseURIProlog-7'/1]).
-export(['base-URI-modules-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/BaseURIDecl/module-001.xq") catch _:_ -> ok end,Config.
all() -> [
   'base-URI-1',
   'base-URI-2',
   'base-URI-3',
   'base-URI-4',
   'base-URI-5',
   'base-URI-6',
   'base-URI-7',
   'base-URI-8',
   'base-URI-9',
   'base-URI-10',
   'base-URI-11',
   'base-URI-12',
   'base-URI-13',
   'base-URI-14',
   'base-URI-15',
   'base-URI-18',
   'base-URI-19',
   'base-URI-20',
   'base-URI-21',
   'base-URI-22',
   'base-URI-23',
   'base-URI-24',
   'base-uri-25',
   'base-uri-26',
   'base-uri-27',
   'base-uri-28',
   'base-uri-29',
   'K-BaseURIProlog-1',
   'K-BaseURIProlog-2',
   'K-BaseURIProlog-3',
   'K2-BaseURIProlog-1',
   'K2-BaseURIProlog-2',
   'K2-BaseURIProlog-3',
   'K2-BaseURIProlog-4',
   'K2-BaseURIProlog-5',
   'K2-BaseURIProlog-6',
   'K2-BaseURIProlog-7',
   'base-URI-modules-001'].
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
'base-URI-1'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; declare base-uri \"http://example.org\"; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0032" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0032'}) end.
'base-URI-2'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc&lt;\"; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            aaa
            
         
      ",
 case (xqerl_test:string_value(Res) == "aaa") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-3'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc&gt;\"; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            aaa
            
         
      ",
 case (xqerl_test:string_value(Res) == "aaa") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-4'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc&amp;\"; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         aaa
      ",
   case xqerl_test:string_value(Res) of
             "aaa" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-5'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc&quot;\"; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            aaa
            
         
      ",
 case (xqerl_test:string_value(Res) == "aaa") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-6'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc&apos;\"; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         aaa
      ",
   case xqerl_test:string_value(Res) of
             "aaa" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-7'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/\"; fn:string(fn:resolve-uri(\"examples\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-8'(_Config) ->
   Qry = "
        declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { 
            if (fn:static-base-uri() eq fn:resolve-uri(\"examples\")) then \"true\" else \"true\" 
        }; 
        eg:noContextFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            true
            
         
      ",
 case (xqerl_test:string_value(Res) == "true") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FONS0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-9'(_Config) ->
   Qry = "declare base-uri \"http://example.org\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_test:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-10'(_Config) ->
   Qry = "fn:count(fn:static-base-uri())",
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
'base-URI-11'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc123\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/abc123
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/abc123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-12'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/abc\"\"\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            http://www.example.com/abc\"
            
         
      ",
 case (xqerl_test:string_value(Res) == "http://www.example.com/abc\"") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-13'(_Config) ->
   Qry = "declare base-uri 'http://www.example.com/abc'''; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/abc'
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/abc'" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-14'(_Config) ->
   Qry = "declare base-uri 'http://www.example.com/abc##0;'; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            http://www.example.com/abc##0;
            
         
      ",
 case (xqerl_test:string_value(Res) == "http://www.example.com/abc##0;") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-15'(_Config) ->
   Qry = "declare base-uri \"http://A\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://A
      ",
   case xqerl_test:string_value(Res) of
             "http://A" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-18'(_Config) ->
   Qry = "declare base-uri \"http:/www.abc&#xa;.com\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            http:/www.abc .com
            
         
      ",
 case (xqerl_test:string_value(Res) == "http:/www.abc .com") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-19'(_Config) ->
   Qry = "declare base-uri \"http://declarebase-uri.com\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            http://declarebase-uri.com
            
         
      ",
 case (xqerl_test:string_value(Res) == "http://declarebase-uri.com") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-URI-20'(_Config) ->
   Qry = "declare base-uri \"http://www.base-uri.com\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.base-uri.com
      ",
   case xqerl_test:string_value(Res) of
             "http://www.base-uri.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-21'(_Config) ->
   Qry = "declare base-uri \"http://www.BASE-URI.com\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.BASE-URI.com
      ",
   case xqerl_test:string_value(Res) of
             "http://www.BASE-URI.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-22'(_Config) ->
   Qry = "declare base-uri \" http://www.example.org/examples\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-23'(_Config) ->
   Qry = "declare base-uri \"http://www.example.org/examples \"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-URI-24'(_Config) ->
   Qry = "declare base-uri \"http://www.example.org/ examples\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            http://www.example.org/ examples
            
         
      ",
 case (xqerl_test:string_value(Res) == "http://www.example.org/ examples") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'base-uri-25'(_Config) ->
   Qry = "declare base-uri \"http://www.example.org/%20%20examples\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/%20%20examples
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/%20%20examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-uri-26'(_Config) ->
   Qry = "declare base-uri \"abc\"; fn:ends-with(fn:string(fn:static-base-uri()),\"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'base-uri-27'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/\"; fn:base-uri(<elem xml:base=\"fluster\"></elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/fluster
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/fluster" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-uri-28'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/\"; fn:base-uri(exactly-one((<elem xml:base=\"fluster\"><a/></elem>)/a))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/fluster
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/fluster" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base-uri-29'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com/\"; fn:base-uri(exactly-one((<elem xml:base=\"fluster/\"><a xml:base=\"now\"/></elem>)/a))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/fluster/now
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/fluster/now" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-BaseURIProlog-1'(_Config) ->
   Qry = "
        declare(::)base-uri(::)\"http://example.com/declareBaseURITest\"; 
        static-base-uri() eq 'http://example.com/declareBaseURITest'
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-BaseURIProlog-2'(_Config) ->
   Qry = "
        declare(::)base-uri(::)\"http://example.com/declareBaseURITest\"; 
        declare(::)base-uri(::)\"http://example.com/declareBaseURITest2\"; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0032" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0032'}) end.
'K-BaseURIProlog-3'(_Config) ->
   Qry = "
        declare(::)base-uri(::)\"http://example.com/declareBaseURITest\"(::); 
        declare(::)base-uri(::)\"http://example.com/declareBaseURITest\"(::); 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0032" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0032'}) end.
'K2-BaseURIProlog-1'(_Config) ->
   Qry = "declare base-uri \"http:\\\\invalid>URI\\someURI\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-BaseURIProlog-2'(_Config) ->
   Qry = "declare base-uri \"c:\\windows\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-BaseURIProlog-3'(_Config) ->
   Qry = "declare base-uri \"c:\\windows\"; fn:doc(\"example.com.xml\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0005") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-BaseURIProlog-4'(_Config) ->
   Qry = "declare base-uri \"abc\"; declare function local:isAbsolute($uri as xs:string?) as xs:boolean { fn:matches($uri, \"[a-zA-Z0-9\\-.]*:/\") }; local:isAbsolute(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-BaseURIProlog-5'(_Config) ->
   Qry = "declare base-uri \"\"; ends-with(fn:static-base-uri(), \"prod/BaseURIDecl.xml\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-BaseURIProlog-6'(_Config) ->
   Qry = "declare base-uri \"http://example.com/BASEURI\"; <e xml:base=\"../\"> {fn:static-base-uri()} </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e xml:base=\"../\">http://example.com/BASEURI</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xml:base=\"../\">http://example.com/BASEURI</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xml:base=\"../\">http://example.com/BASEURI</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-BaseURIProlog-7'(_Config) ->
   Qry = "base-uri lt base-uri",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'base-URI-modules-001'(_Config) ->
   Qry = "declare base-uri \"http://www.example.org/base1\";
          import module namespace m =\"http://www.w3.org/TestModules/module-001\";
          static-base-uri() eq m:static-base-uri()
    ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
