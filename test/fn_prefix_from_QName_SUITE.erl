-module('fn_prefix_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-prefix-from-qname-1'/1]).
-export(['fn-prefix-from-qname-2'/1]).
-export(['fn-prefix-from-qname-3'/1]).
-export(['fn-prefix-from-qname-4'/1]).
-export(['fn-prefix-from-qname-5'/1]).
-export(['fn-prefix-from-qname-6'/1]).
-export(['fn-prefix-from-qname-7'/1]).
-export(['fn-prefix-from-qname-8'/1]).
-export(['fn-prefix-from-qname-9'/1]).
-export(['fn-prefix-from-qname-10'/1]).
-export(['fn-prefix-from-qname-11'/1]).
-export(['fn-prefix-from-qname-12'/1]).
-export(['fn-prefix-from-qname-13'/1]).
-export(['fn-prefix-from-qname-14'/1]).
-export(['fn-prefix-from-qname-15'/1]).
-export(['fn-prefix-from-qname-16'/1]).
-export(['fn-prefix-from-qname-17'/1]).
-export(['fn-prefix-from-qname-18'/1]).
-export(['fn-prefix-from-qname-19'/1]).
-export(['fn-prefix-from-qname-20'/1]).
-export(['K-PrefixFromQName-1'/1]).
-export(['K-PrefixFromQName-2'/1]).
-export(['K-PrefixFromQName-3'/1]).
-export(['K-PrefixFromQName-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-prefix-from-qname-1',
   'fn-prefix-from-qname-2',
   'fn-prefix-from-qname-3',
   'fn-prefix-from-qname-4',
   'fn-prefix-from-qname-5',
   'fn-prefix-from-qname-6',
   'fn-prefix-from-qname-7',
   'fn-prefix-from-qname-8',
   'fn-prefix-from-qname-9',
   'fn-prefix-from-qname-10',
   'fn-prefix-from-qname-11',
   'fn-prefix-from-qname-12',
   'fn-prefix-from-qname-13',
   'fn-prefix-from-qname-14',
   'fn-prefix-from-qname-15',
   'fn-prefix-from-qname-16',
   'fn-prefix-from-qname-17',
   'fn-prefix-from-qname-18',
   'fn-prefix-from-qname-19',
   'fn-prefix-from-qname-20',
   'K-PrefixFromQName-1',
   'K-PrefixFromQName-2',
   'K-PrefixFromQName-3',
   'K-PrefixFromQName-4'].
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
'fn-prefix-from-qname-1'(_Config) ->
   Qry = "fn:prefix-from-QName(\"arg1\",\"arg2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-prefix-from-qname-2'(_Config) ->
   Qry = "fn:prefix-from-QName(xs:integer(1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-prefix-from-qname-3'(_Config) ->
   Qry = "fn:count(fn:prefix-from-QName(xs:QName(\"name\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-4'(_Config) ->
   Qry = "fn:string-length(xs:string(fn:prefix-from-QName(xs:QName(\"name\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-5'(_Config) ->
   Qry = "xs:string(fn:prefix-from-QName(xs:QName(\"foo:name\")))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo
      ",
   case xqerl_test:string_value(Res) of
             "foo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-6'(_Config) ->
   Qry = "fn:string(fn:prefix-from-QName(xs:QName(\"foo:name\")))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo
      ",
   case xqerl_test:string_value(Res) of
             "foo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-7'(_Config) ->
   Qry = "fn:count(fn:prefix-from-QName(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-8'(_Config) ->
   Qry = "fn:prefix-from-QName(xs:QName(\"foo:bar\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FONS0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FONS0004'}) end.
'fn-prefix-from-qname-9'(_Config) ->
   Qry = "fn:upper-case(fn:prefix-from-QName(xs:QName(\"foo:bar\")))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         FOO
      ",
   case xqerl_test:string_value(Res) of
             "FOO" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-10'(_Config) ->
   Qry = "fn:lower-case(fn:prefix-from-QName(xs:QName(\"FOO:bar\")))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","FOO"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo
      ",
   case xqerl_test:string_value(Res) of
             "foo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-11'(_Config) ->
   Qry = "fn:concat(fn:prefix-from-QName(xs:QName(\"foo:bar\")),\":bar\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo:bar
      ",
   case xqerl_test:string_value(Res) of
             "foo:bar" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-12'(_Config) ->
   Qry = "fn:substring-before(fn:prefix-from-QName(xs:QName(\"foo:bar\")),\"oo\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         f
      ",
   case xqerl_test:string_value(Res) of
             "f" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-13'(_Config) ->
   Qry = "fn:substring-after(fn:prefix-from-QName(xs:QName(\"foo:bar\")),\"f\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         oo
      ",
   case xqerl_test:string_value(Res) of
             "oo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-14'(_Config) ->
   Qry = "fn:string-length(fn:prefix-from-QName(xs:QName(\"foo:bar\")))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-15'(_Config) ->
   Qry = "fn:substring(fn:prefix-from-QName(xs:QName(\"foo:bar\")),2)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         oo
      ",
   case xqerl_test:string_value(Res) of
             "oo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-16'(_Config) ->
   Qry = "fn:string-join((fn:prefix-from-QName(xs:QName(\"foo:bar\")),\":bar\"),\"\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo:bar
      ",
   case xqerl_test:string_value(Res) of
             "foo:bar" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-prefix-from-qname-17'(_Config) ->
   Qry = "fn:starts-with(fn:prefix-from-QName(xs:QName(\"foo:bar\")),\"f\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-prefix-from-qname-18'(_Config) ->
   Qry = "fn:ends-with(fn:prefix-from-QName(xs:QName(\"foo:bar\")),\"f\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-prefix-from-qname-19'(_Config) ->
   Qry = "fn:contains(fn:prefix-from-QName(xs:QName(\"foo:bar\")),\"f\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-prefix-from-qname-20'(_Config) ->
   Qry = "fn:prefix-from-QName(xs:QName(\"foo:bar\"))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://example.org","foo"},
{"http://example.org","FOO"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo
      ",
   case xqerl_test:string_value(Res) of
             "foo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-PrefixFromQName-1'(_Config) ->
   Qry = "prefix-from-QName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-PrefixFromQName-2'(_Config) ->
   Qry = "prefix-from-QName(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-PrefixFromQName-3'(_Config) ->
   Qry = "empty(prefix-from-QName( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-PrefixFromQName-4'(_Config) ->
   Qry = "prefix-from-QName( QName(\"example.com/\", \"pre:lname\")) eq \"pre\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
