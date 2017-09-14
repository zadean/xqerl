-module('fn_resolve_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-resolve-qname-1'/1]).
-export(['fn-resolve-qname-2'/1]).
-export(['fn-resolve-qname-3'/1]).
-export(['fn-resolve-qname-4'/1]).
-export(['fn-resolve-qname-5'/1]).
-export(['fn-resolve-qname-6'/1]).
-export(['fn-resolve-qname-7'/1]).
-export(['fn-resolve-qname-8'/1]).
-export(['fn-resolve-qname-9'/1]).
-export(['fn-resolve-qname-10'/1]).
-export(['fn-resolve-qname-11'/1]).
-export(['fn-resolve-qname-12'/1]).
-export(['fn-resolve-qname-13'/1]).
-export(['fn-resolve-qname-14'/1]).
-export(['fn-resolve-qname-15'/1]).
-export(['fn-resolve-qname-16'/1]).
-export(['fn-resolve-qname-17'/1]).
-export(['fn-resolve-qname-18'/1]).
-export(['fn-resolve-qname-19'/1]).
-export(['fn-resolve-qname-20'/1]).
-export(['fn-resolve-qname-21'/1]).
-export(['fn-resolve-qname-22'/1]).
-export(['K-ResolveQNameConstructFunc-1'/1]).
-export(['K-ResolveQNameConstructFunc-2'/1]).
-export(['K-ResolveQNameConstructFunc-3'/1]).
-export(['K-ResolveQNameConstructFunc-4'/1]).
-export(['cbcl-fn-resolve-qname-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-resolve-qname-1',
   'fn-resolve-qname-2',
   'fn-resolve-qname-3',
   'fn-resolve-qname-4',
   'fn-resolve-qname-5',
   'fn-resolve-qname-6',
   'fn-resolve-qname-7',
   'fn-resolve-qname-8',
   'fn-resolve-qname-9',
   'fn-resolve-qname-10',
   'fn-resolve-qname-11',
   'fn-resolve-qname-12',
   'fn-resolve-qname-13',
   'fn-resolve-qname-14',
   'fn-resolve-qname-15',
   'fn-resolve-qname-16',
   'fn-resolve-qname-17',
   'fn-resolve-qname-18',
   'fn-resolve-qname-19',
   'fn-resolve-qname-20',
   'fn-resolve-qname-21',
   'fn-resolve-qname-22',
   'K-ResolveQNameConstructFunc-1',
   'K-ResolveQNameConstructFunc-2',
   'K-ResolveQNameConstructFunc-3',
   'K-ResolveQNameConstructFunc-4',
   'cbcl-fn-resolve-qname-001'].
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
'fn-resolve-qname-1'(_Config) ->
   Qry = "fn:resolve-QName(\"aName::\", <anElement>Some content</anElement>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'fn-resolve-qname-2'(_Config) ->
   Qry = "fn:resolve-QName(\"p1:anElement\", <anElement>Some content</anElement>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FONS0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FONS0004'}) end.
'fn-resolve-qname-3'(_Config) ->
   Qry = "fn:count(fn:resolve-QName((), <anElement>Some content</anElement>))",
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
'fn-resolve-qname-4'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(\"p1:name\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         name
      ",
   case xqerl_types:string_value(Res) of
             "name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-5'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(\"p1:name\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-6'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(\"p1:name\", <anElement xmlns:p1=\"http://example.com/examples\" xmlns:P1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         name
      ",
   case xqerl_types:string_value(Res) of
             "name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-7'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(\"P1:name\", <anElement xmlns:p1=\"http://example.com/examples\" xmlns:P1=\"http://someothernamespace.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://someothernamespace.com/examples
      ",
   case xqerl_types:string_value(Res) of
             "http://someothernamespace.com/examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-8'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(\"anElement\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-9'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(\"anElement\", <anElement xmlns=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-10'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-from-QName(fn:resolve-QName(\"anElement\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-11'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(xs:string(\"p1:anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-12'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(xs:string(\"p1:anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-13'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:concat(\"p1:\",\"anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-14'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:concat(\"p1:\",\"anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-15'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:string-join((\"p1:\",\"anElement\"),\"\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-16'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:string-join(('p1:','anElement'),''), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-17'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:substring-before(\"p1:anElementabc\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-18'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:substring-before(\"p1:anElementabc\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-19'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:substring-after(\"abcp1:anElement\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-20'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:substring-after(\"abcp1:anElement\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'fn-resolve-qname-21'(_Config) ->
   Qry = "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:substring(\"abcp1:anElement\",4), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-resolve-qname-22'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:substring(\"abcp1:anElement\",4), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
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
'K-ResolveQNameConstructFunc-1'(_Config) ->
   Qry = "resolve-QName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ResolveQNameConstructFunc-2'(_Config) ->
   Qry = "resolve-QName(\"wrongparam\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ResolveQNameConstructFunc-3'(_Config) ->
   Qry = "resolve-QName(\"wrongparam\", \"takes a node\", \"wrong\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ResolveQNameConstructFunc-4'(_Config) ->
   Qry = "empty(resolve-QName((), \"a string\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-fn-resolve-qname-001'(_Config) ->
   Qry = "resolve-QName(\"blah\",<foo:a xmlns:foo=\"http://test/\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         blah
      ",
   case xqerl_types:string_value(Res) of
             "blah" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
