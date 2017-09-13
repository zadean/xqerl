-module('fn_translate_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-translate3args-1'/1]).
-export(['fn-translate3args-2'/1]).
-export(['fn-translate3args-3'/1]).
-export(['fn-translate3args-4'/1]).
-export(['fn-translate3args-5'/1]).
-export(['fn-translate3args-6'/1]).
-export(['fn-translate3args-7'/1]).
-export(['fn-translate3args-8'/1]).
-export(['fn-translate-1'/1]).
-export(['fn-translate-2'/1]).
-export(['fn-translate-3'/1]).
-export(['fn-translate-4'/1]).
-export(['fn-translate-5'/1]).
-export(['fn-translate-6'/1]).
-export(['fn-translate-7'/1]).
-export(['fn-translate-8'/1]).
-export(['fn-translate-9'/1]).
-export(['fn-translate-10'/1]).
-export(['fn-translate-11'/1]).
-export(['fn-translate-12'/1]).
-export(['fn-translate-13'/1]).
-export(['fn-translate-14'/1]).
-export(['fn-translate-15'/1]).
-export(['fn-translate-16'/1]).
-export(['fn-translate-17'/1]).
-export(['fn-translate-18'/1]).
-export(['fn-translate-19'/1]).
-export(['fn-translate-20'/1]).
-export(['K-TranslateFunc-1'/1]).
-export(['K-TranslateFunc-2'/1]).
-export(['K-TranslateFunc-3'/1]).
-export(['K-TranslateFunc-4'/1]).
-export(['K-TranslateFunc-5'/1]).
-export(['K-TranslateFunc-6'/1]).
-export(['K-TranslateFunc-7'/1]).
-export(['K-TranslateFunc-8'/1]).
-export(['K-TranslateFunc-9'/1]).
-export(['K-TranslateFunc-10'/1]).
-export(['K2-TranslateFunc-1'/1]).
-export(['K2-TranslateFunc-2'/1]).
-export(['cbcl-fn-translate-001'/1]).
-export(['cbcl-fn-translate-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-translate3args-1',
   'fn-translate3args-2',
   'fn-translate3args-3',
   'fn-translate3args-4',
   'fn-translate3args-5',
   'fn-translate3args-6',
   'fn-translate3args-7',
   'fn-translate3args-8',
   'fn-translate-1',
   'fn-translate-2',
   'fn-translate-3',
   'fn-translate-4',
   'fn-translate-5',
   'fn-translate-6',
   'fn-translate-7',
   'fn-translate-8',
   'fn-translate-9',
   'fn-translate-10',
   'fn-translate-11',
   'fn-translate-12',
   'fn-translate-13',
   'fn-translate-14',
   'fn-translate-15',
   'fn-translate-16',
   'fn-translate-17',
   'fn-translate-18',
   'fn-translate-19',
   'fn-translate-20',
   'K-TranslateFunc-1',
   'K-TranslateFunc-2',
   'K-TranslateFunc-3',
   'K-TranslateFunc-4',
   'K-TranslateFunc-5',
   'K-TranslateFunc-6',
   'K-TranslateFunc-7',
   'K-TranslateFunc-8',
   'K-TranslateFunc-9',
   'K-TranslateFunc-10',
   'K2-TranslateFunc-1',
   'K2-TranslateFunc-2',
   'cbcl-fn-translate-001',
   'cbcl-fn-translate-002'].
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
'fn-translate3args-1'(_Config) ->
   Qry = "translate('---abcABCxyz---','-abcABCxyz','1ABCabcXYZ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         111ABCabcXYZ111
      ",
   case xqerl_types:string_value(Res) of
             "111ABCabcXYZ111" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate3args-2'(_Config) ->
   Qry = "translate('newline
tab	space ','
	 ','123')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         newline1tab2space3
      ",
   case xqerl_types:string_value(Res) of
             "newline1tab2space3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate3args-3'(_Config) ->
   Qry = "translate('','-','x')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate3args-4'(_Config) ->
   Qry = "translate((),'-','x')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate3args-5'(_Config) ->
   Qry = "translate(1,'-','x')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-translate3args-6'(_Config) ->
   Qry = "translate('abc',1,'x')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-translate3args-7'(_Config) ->
   Qry = "translate('abc','x',1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-translate3args-8'(_Config) ->
   Qry = "translate('abc')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-translate-1'(_Config) ->
   Qry = "fn:translate(\"bar\",\"abc\",\"ABC\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         BAr
      ",
   case xqerl_types:string_value(Res) of
             "BAr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-2'(_Config) ->
   Qry = "fn:translate(\"--aaa--\",\"abc-\",\"ABC\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         AAA
      ",
   case xqerl_types:string_value(Res) of
             "AAA" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-3'(_Config) ->
   Qry = "fn:translate(\"abcdabc\", \"abc\", \"AB\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABdAB
      ",
   case xqerl_types:string_value(Res) of
             "ABdAB" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-4'(_Config) ->
   Qry = "fn:translate(\"acdefghijklmnopqrstuvwxyz\", \"abcdefghijklmnopqrstuvwxyz\", \"ABCDEFGHIJKLMNOPQRSTUVWXYZ\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ACDEFGHIJKLMNOPQRSTUVWXYZ
      ",
   case xqerl_types:string_value(Res) of
             "ACDEFGHIJKLMNOPQRSTUVWXYZ" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-5'(_Config) ->
   Qry = "fn:translate(\"ABCDEFGHIJKLMNOPQRSTUVWXYZ\",\"ABCDEFGHIJKLMNOPQRSTUVWXYZ\",\"abcdefghijklmnopqrstuvwxyz\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abcdefghijklmnopqrstuvwxyz
      ",
   case xqerl_types:string_value(Res) of
             "abcdefghijklmnopqrstuvwxyz" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-6'(_Config) ->
   Qry = "fn:count(fn:translate(\"\",\"\",\"\"))",
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
'fn-translate-7'(_Config) ->
   Qry = "fn:translate(\"ABC\", \"ABC\", \"ABC\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABC
      ",
   case xqerl_types:string_value(Res) of
             "ABC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-8'(_Config) ->
   Qry = "fn:translate(\"123\", \"123\", \"123\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123
      ",
   case xqerl_types:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-9'(_Config) ->
   Qry = "fn:translate(\"123ABC\", \"123ABC\", \"123ABC\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123ABC
      ",
   case xqerl_types:string_value(Res) of
             "123ABC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-10'(_Config) ->
   Qry = "fn:translate(fn:string(\"ABC\"), fn:string(\"ABC\"), fn:string(\"ABC\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABC
      ",
   case xqerl_types:string_value(Res) of
             "ABC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-11'(_Config) ->
   Qry = "fn:string(fn:translate(\"ABC\", \"ABC\", \"ABC\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABC
      ",
   case xqerl_types:string_value(Res) of
             "ABC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-12'(_Config) ->
   Qry = "fn:string-length(fn:translate(\"ABC\",\"ABC\",\"ABC\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-13'(_Config) ->
   Qry = "xs:decimal(fn:translate(\"123\",\"123\",\"123\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123
      ",
   case xqerl_types:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-14'(_Config) ->
   Qry = "xs:integer(fn:translate(\"123\",\"123\",\"123\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123
      ",
   case xqerl_types:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-15'(_Config) ->
   Qry = "xs:float(fn:translate(\"123\",\"123\",\"123\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123
      ",
   case xqerl_types:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-16'(_Config) ->
   Qry = "xs:double(fn:translate(\"123\",\"123\",\"123\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123
      ",
   case xqerl_types:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-translate-17'(_Config) ->
   Qry = [116,114,97,110,115,108,97,116,101,40,34,97,98,99,100,34,44,32,34,65537,97,34,44,32,34,120,121,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"ybcd\"
      ",
 Tst = xqerl:run("\"ybcd\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-translate-18'(_Config) ->
   Qry = [116,114,97,110,115,108,97,116,101,40,34,97,98,99,100,34,44,32,34,120,97,34,44,32,34,65537,121,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"ybcd\"
      ",
 Tst = xqerl:run("\"ybcd\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-translate-19'(_Config) ->
   Qry = [116,114,97,110,115,108,97,116,101,40,34,97,98,99,100,65540,101,34,44,32,34,97,65540,101,34,44,32,34,88,89,90,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"XbcdYZ\"
      ",
 Tst = xqerl:run("\"XbcdYZ\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-translate-20'(_Config) ->
   Qry = [116,114,97,110,115,108,97,116,101,40,34,97,98,99,100,65540,101,34,44,32,34,97,65540,101,34,44,32,34,65542,89,90,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65542,98,99,100,89,90,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65542,98,99,100,89,90,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-1'(_Config) ->
   Qry = "translate()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TranslateFunc-2'(_Config) ->
   Qry = "translate(\"string\", \"map string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TranslateFunc-3'(_Config) ->
   Qry = "translate(\"arg\", \"map string\", \"transString\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TranslateFunc-4'(_Config) ->
   Qry = "translate(\"--aaa--\",\"-\",\"\") eq \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-5'(_Config) ->
   Qry = "translate(\"--aaa--\",\"bbb++\",\"\") eq \"--aaa--\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-6'(_Config) ->
   Qry = "translate(\"argstr\", \"\", \"matrs\") eq \"argstr\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-7'(_Config) ->
   Qry = "translate((), \"map\", \"trans\") eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-8'(_Config) ->
   Qry = "translate(\"abcdabc\", \"abc\", \"AB\") eq \"ABdAB\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-9'(_Config) ->
   Qry = "translate(\"bar\",\"abc\",\"ABC\") eq \"BAr\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TranslateFunc-10'(_Config) ->
   Qry = "translate(\"--aaa--\",\"abc-\",\"ABC\") eq \"AAA\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-TranslateFunc-1'(_Config) ->
   Qry = "fn:translate(\"arg\", (), \"transString\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-TranslateFunc-2'(_Config) ->
   Qry = "fn:translate(\"arg\", \"mapString\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-fn-translate-001'(_Config) ->
   Qry = "
      boolean(translate(string-join(for $x in 1 to 10 return \"blah\",\"-\"),exactly-one((\"--\",\"==\")[position() mod 2 = 0]),\"__\"))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-translate-002'(_Config) ->
   Qry = "
      translate(codepoints-to-string(65536 to 65537),codepoints-to-string(65536 to 65537),\"l\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         l
      ",
   case xqerl_types:string_value(Res) of
             "l" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
