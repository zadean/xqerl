-module('fn_upper_case_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-upper-case1args-1'/1]).
-export(['fn-upper-case1args-2'/1]).
-export(['fn-upper-case1args-3'/1]).
-export(['fn-upper-case-1'/1]).
-export(['fn-upper-case-2'/1]).
-export(['fn-upper-case-3'/1]).
-export(['fn-upper-case-4'/1]).
-export(['fn-upper-case-5'/1]).
-export(['fn-upper-case-6'/1]).
-export(['fn-upper-case-7'/1]).
-export(['fn-upper-case-8'/1]).
-export(['fn-upper-case-9'/1]).
-export(['fn-upper-case-10'/1]).
-export(['fn-upper-case-11'/1]).
-export(['fn-upper-case-12'/1]).
-export(['fn-upper-case-13'/1]).
-export(['fn-upper-case-14'/1]).
-export(['fn-upper-case-15'/1]).
-export(['fn-upper-case-16'/1]).
-export(['fn-upper-case-17'/1]).
-export(['K-UpperCaseFunc-1'/1]).
-export(['K-UpperCaseFunc-2'/1]).
-export(['K-UpperCaseFunc-3'/1]).
-export(['K-UpperCaseFunc-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-upper-case1args-1',
   'fn-upper-case1args-2',
   'fn-upper-case1args-3',
   'fn-upper-case-1',
   'fn-upper-case-2',
   'fn-upper-case-3',
   'fn-upper-case-4',
   'fn-upper-case-5',
   'fn-upper-case-6',
   'fn-upper-case-7',
   'fn-upper-case-8',
   'fn-upper-case-9',
   'fn-upper-case-10',
   'fn-upper-case-11',
   'fn-upper-case-12',
   'fn-upper-case-13',
   'fn-upper-case-14',
   'fn-upper-case-15',
   'fn-upper-case-16',
   'fn-upper-case-17',
   'K-UpperCaseFunc-1',
   'K-UpperCaseFunc-2',
   'K-UpperCaseFunc-3',
   'K-UpperCaseFunc-4'].
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
'fn-upper-case1args-1'(_Config) ->
   Qry = "fn:upper-case(xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         THIS IS A CHARACTE
      ",
   case xqerl_types:string_value(Res) of
             "THIS IS A CHARACTE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case1args-2'(_Config) ->
   Qry = "fn:upper-case(xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         THIS IS A CHARACTE
      ",
   case xqerl_types:string_value(Res) of
             "THIS IS A CHARACTE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case1args-3'(_Config) ->
   Qry = "fn:upper-case(xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         THIS IS A CHARACTE
      ",
   case xqerl_types:string_value(Res) of
             "THIS IS A CHARACTE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-1'(_Config) ->
   Qry = "fn:upper-case(\"ABc!D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABC!D
      ",
   case xqerl_types:string_value(Res) of
             "ABC!D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-2'(_Config) ->
   Qry = "fn:count(fn:upper-case(()))",
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
'fn-upper-case-3'(_Config) ->
   Qry = "fn:upper-case(\"12345\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12345
      ",
   case xqerl_types:string_value(Res) of
             "12345" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-4'(_Config) ->
   Qry = "fn:upper-case(\"12345abcd\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12345ABCD
      ",
   case xqerl_types:string_value(Res) of
             "12345ABCD" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-5'(_Config) ->
   Qry = "fn:upper-case(\"ABCD\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCD
      ",
   case xqerl_types:string_value(Res) of
             "ABCD" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-6'(_Config) ->
   Qry = "fn:upper-case(\"abcde\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDE
      ",
   case xqerl_types:string_value(Res) of
             "ABCDE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-7'(_Config) ->
   Qry = "fn:upper-case(\"ABCDEabcde\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDEABCDE
      ",
   case xqerl_types:string_value(Res) of
             "ABCDEABCDE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-8'(_Config) ->
   Qry = "fn:count(fn:upper-case(\"\"))",
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
'fn-upper-case-9'(_Config) ->
   Qry = "fn:upper-case(lower-case(\"AbcDH\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDH
      ",
   case xqerl_types:string_value(Res) of
             "ABCDH" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-10'(_Config) ->
   Qry = "fn:upper-case(\"*****\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         *****
      ",
   case xqerl_types:string_value(Res) of
             "*****" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-11'(_Config) ->
   Qry = "fn:upper-case(upper-case(\"zzzzz\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ZZZZZ
      ",
   case xqerl_types:string_value(Res) of
             "ZZZZZ" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-12'(_Config) ->
   Qry = "fn:boolean(fn:upper-case(\"abcde\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-upper-case-13'(_Config) ->
   Qry = "fn:concat(fn:upper-case(\"abcde\"), fn:upper-case(\"fghi\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDEFGHI
      ",
   case xqerl_types:string_value(Res) of
             "ABCDEFGHI" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-14'(_Config) ->
   Qry = "fn:not(fn:upper-case(\"abcde\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-upper-case-15'(_Config) ->
   Qry = "fn:upper-case(\"%$#@!\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         %$#@!
      ",
   case xqerl_types:string_value(Res) of
             "%$#@!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-16'(_Config) ->
   Qry = "fn:upper-case(\"upper-case\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         UPPER-CASE
      ",
   case xqerl_types:string_value(Res) of
             "UPPER-CASE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-upper-case-17'(_Config) ->
   Qry = "fn:upper-case(\"abc\") and fn:upper-case(\"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-UpperCaseFunc-1'(_Config) ->
   Qry = "upper-case()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-UpperCaseFunc-2'(_Config) ->
   Qry = "upper-case(\"string\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-UpperCaseFunc-3'(_Config) ->
   Qry = "upper-case(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-UpperCaseFunc-4'(_Config) ->
   Qry = "lower-case(\"ABc!D\") eq \"abc!d\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
