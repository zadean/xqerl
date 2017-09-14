-module('fn_encode_for_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-encode-for-uri1args-1'/1]).
-export(['fn-encode-for-uri1args-2'/1]).
-export(['fn-encode-for-uri1args-3'/1]).
-export(['fn-encode-for-uri1args-4'/1]).
-export(['fn-encode-for-uri1args-5'/1]).
-export(['fn-encode-for-uri1args-6'/1]).
-export(['fn-encode-for-uri1args-7'/1]).
-export(['fn-encode-for-uri-1'/1]).
-export(['fn-encode-for-uri-2'/1]).
-export(['fn-encode-for-uri-3'/1]).
-export(['fn-encode-for-uri-4'/1]).
-export(['fn-encode-for-uri-5'/1]).
-export(['fn-encode-for-uri-6'/1]).
-export(['fn-encode-for-uri-7'/1]).
-export(['fn-encode-for-uri-8'/1]).
-export(['fn-encode-for-uri-9'/1]).
-export(['fn-encode-for-uri-10'/1]).
-export(['fn-encode-for-uri-11'/1]).
-export(['fn-encode-for-uri-12'/1]).
-export(['fn-encode-for-uri-13'/1]).
-export(['fn-encode-for-uri-14'/1]).
-export(['fn-encode-for-uri-15'/1]).
-export(['fn-encode-for-uri-16'/1]).
-export(['K-EncodeURIfunc-1'/1]).
-export(['K-EncodeURIfunc-2'/1]).
-export(['K-EncodeURIfunc-3'/1]).
-export(['K-EncodeURIfunc-4'/1]).
-export(['K-EncodeURIfunc-5'/1]).
-export(['K-EncodeURIfunc-6'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-encode-for-uri1args-1',
   'fn-encode-for-uri1args-2',
   'fn-encode-for-uri1args-3',
   'fn-encode-for-uri1args-4',
   'fn-encode-for-uri1args-5',
   'fn-encode-for-uri1args-6',
   'fn-encode-for-uri1args-7',
   'fn-encode-for-uri-1',
   'fn-encode-for-uri-2',
   'fn-encode-for-uri-3',
   'fn-encode-for-uri-4',
   'fn-encode-for-uri-5',
   'fn-encode-for-uri-6',
   'fn-encode-for-uri-7',
   'fn-encode-for-uri-8',
   'fn-encode-for-uri-9',
   'fn-encode-for-uri-10',
   'fn-encode-for-uri-11',
   'fn-encode-for-uri-12',
   'fn-encode-for-uri-13',
   'fn-encode-for-uri-14',
   'fn-encode-for-uri-15',
   'fn-encode-for-uri-16',
   'K-EncodeURIfunc-1',
   'K-EncodeURIfunc-2',
   'K-EncodeURIfunc-3',
   'K-EncodeURIfunc-4',
   'K-EncodeURIfunc-5',
   'K-EncodeURIfunc-6'].
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
'fn-encode-for-uri1args-1'(_Config) ->
   Qry = "fn:encode-for-uri (\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http%3A%2F%2Fwww.example.com%2F00%2FWeather%2FCA%2FLos%2520Angeles%23ocean
      ",
   case xqerl_types:string_value(Res) of
             "http%3A%2F%2Fwww.example.com%2F00%2FWeather%2FCA%2FLos%2520Angeles%23ocean" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri1args-2'(_Config) ->
   Qry = "encode-for-uri(\"~bébé\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ~b%C3%A9b%C3%A9
      ",
   case xqerl_types:string_value(Res) of
             "~b%C3%A9b%C3%A9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri1args-3'(_Config) ->
   Qry = "encode-for-uri(\"100% organic\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100%25%20organic
      ",
   case xqerl_types:string_value(Res) of
             "100%25%20organic" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri1args-4'(_Config) ->
   Qry = "encode-for-uri('')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri1args-5'(_Config) ->
   Qry = "encode-for-uri(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri1args-6'(_Config) ->
   Qry = "encode-for-uri(12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-encode-for-uri1args-7'(_Config) ->
   Qry = "encode-for-uri('',())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-encode-for-uri-1'(_Config) ->
   Qry = "(fn:encode-for-uri(\"example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         example
      ",
   case xqerl_types:string_value(Res) of
             "example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-2'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples#example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%23example
      ",
   case xqerl_types:string_value(Res) of
             "examples%23example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-3'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples-example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples-example
      ",
   case xqerl_types:string_value(Res) of
             "examples-example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-4'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples_example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples_example
      ",
   case xqerl_types:string_value(Res) of
             "examples_example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-5'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples.example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples.example
      ",
   case xqerl_types:string_value(Res) of
             "examples.example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-6'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples!example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%21example
      ",
   case xqerl_types:string_value(Res) of
             "examples%21example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-7'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples~example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples~example
      ",
   case xqerl_types:string_value(Res) of
             "examples~example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-8'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples*example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%2Aexample
      ",
   case xqerl_types:string_value(Res) of
             "examples%2Aexample" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-9'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples'example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%27example
      ",
   case xqerl_types:string_value(Res) of
             "examples%27example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-10'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples(example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%28example
      ",
   case xqerl_types:string_value(Res) of
             "examples%28example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-11'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples)example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%29example
      ",
   case xqerl_types:string_value(Res) of
             "examples%29example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-12'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples0123456789example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples0123456789example
      ",
   case xqerl_types:string_value(Res) of
             "examples0123456789example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-13'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%20example
      ",
   case xqerl_types:string_value(Res) of
             "examples%20example" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-14'(_Config) ->
   Qry = "(fn:encode-for-uri(\"examples/example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         examples%2Fexample
      ",
   case xqerl_types:string_value(Res) of
             "examples%2Fexample" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-15'(_Config) ->
   Qry = "(fn:encode-for-uri(\"http:examples\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http%3Aexamples
      ",
   case xqerl_types:string_value(Res) of
             "http%3Aexamples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-encode-for-uri-16'(_Config) ->
   Qry = "(fn:encode-for-uri(\"http%20examples\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http%2520examples
      ",
   case xqerl_types:string_value(Res) of
             "http%2520examples" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-EncodeURIfunc-1'(_Config) ->
   Qry = "encode-for-uri()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-EncodeURIfunc-2'(_Config) ->
   Qry = "encode-for-uri(\"http://example.com/\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-EncodeURIfunc-3'(_Config) ->
   Qry = "encode-for-uri(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EncodeURIfunc-4'(_Config) ->
   Qry = "concat(\"http://www.example.com/\", encode-for-uri(\"~bébé\")) eq \"http://www.example.com/~b%C3%A9b%C3%A9\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EncodeURIfunc-5'(_Config) ->
   Qry = "concat(\"http://www.example.com/\", encode-for-uri(\"100% organic\")) eq \"http://www.example.com/100%25%20organic\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EncodeURIfunc-6'(_Config) ->
   Qry = "normalize-space(encode-for-uri((\"some string\", current-time())[1] treat as xs:string))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         some%20string
      ",
   case xqerl_types:string_value(Res) of
             "some%20string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
