-module('fn_month_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-month-from-dateTime1args-1'/1]).
-export(['fn-month-from-dateTime1args-2'/1]).
-export(['fn-month-from-dateTime1args-3'/1]).
-export(['fn-month-from-dateTime-1'/1]).
-export(['fn-month-from-dateTime-2'/1]).
-export(['fn-month-from-dateTime-3'/1]).
-export(['fn-month-from-dateTime-4'/1]).
-export(['fn-month-from-dateTime-5'/1]).
-export(['fn-month-from-dateTime-6'/1]).
-export(['fn-month-from-dateTime-7'/1]).
-export(['fn-month-from-dateTime-8'/1]).
-export(['fn-month-from-dateTime-9'/1]).
-export(['fn-month-from-dateTimeNew-10'/1]).
-export(['fn-month-from-dateTime-11'/1]).
-export(['fn-month-from-dateTime-12'/1]).
-export(['fn-month-from-dateTime-13'/1]).
-export(['fn-month-from-dateTime-14'/1]).
-export(['fn-month-from-dateTime-15'/1]).
-export(['fn-month-from-dateTime-16'/1]).
-export(['fn-month-from-dateTime-17'/1]).
-export(['fn-month-from-dateTime-18'/1]).
-export(['fn-month-from-dateTime-19'/1]).
-export(['K-MonthFromDateTimeFunc-1'/1]).
-export(['K-MonthFromDateTimeFunc-2'/1]).
-export(['K-MonthFromDateTimeFunc-3'/1]).
-export(['K-MonthFromDateTimeFunc-4'/1]).
-export(['K-MonthFromDateTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-month-from-dateTime1args-1',
   'fn-month-from-dateTime1args-2',
   'fn-month-from-dateTime1args-3',
   'fn-month-from-dateTime-1',
   'fn-month-from-dateTime-2',
   'fn-month-from-dateTime-3',
   'fn-month-from-dateTime-4',
   'fn-month-from-dateTime-5',
   'fn-month-from-dateTime-6',
   'fn-month-from-dateTime-7',
   'fn-month-from-dateTime-8',
   'fn-month-from-dateTime-9',
   'fn-month-from-dateTimeNew-10',
   'fn-month-from-dateTime-11',
   'fn-month-from-dateTime-12',
   'fn-month-from-dateTime-13',
   'fn-month-from-dateTime-14',
   'fn-month-from-dateTime-15',
   'fn-month-from-dateTime-16',
   'fn-month-from-dateTime-17',
   'fn-month-from-dateTime-18',
   'fn-month-from-dateTime-19',
   'K-MonthFromDateTimeFunc-1',
   'K-MonthFromDateTimeFunc-2',
   'K-MonthFromDateTimeFunc-3',
   'K-MonthFromDateTimeFunc-4',
   'K-MonthFromDateTimeFunc-5'].
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
'fn-month-from-dateTime1args-1'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime1args-2'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime1args-3'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12
      ",
   case xqerl_test:string_value(Res) of
             "12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-1'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-2'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12
      ",
   case xqerl_test:string_value(Res) of
             "12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-3'(_Config) ->
   Qry = "fn:month-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"), xs:dayTimeDuration(\"PT0H\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-4'(_Config) ->
   Qry = "fn:avg((fn:month-from-dateTime(xs:dateTime(\"1996-12-31T12:00:00Z\")),fn:month-from-dateTime(xs:dateTime(\"2000-10-31T12:00:00Z\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11
      ",
   case xqerl_test:string_value(Res) of
             "11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-5'(_Config) ->
   Qry = "fn:count(fn:month-from-dateTime(()))",
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
'fn-month-from-dateTime-6'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"-1999-01-31T00:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-7'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"0001-12-31T23:20:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12
      ",
   case xqerl_test:string_value(Res) of
             "12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-8'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) + fn:month-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-9'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-02-01T00:00:00Z\")) - fn:month-from-dateTime(xs:dateTime(\"1969-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTimeNew-10'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-03-01T02:00:00Z\")) * fn:month-from-dateTime(xs:dateTime(\"0002-02-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
   case xqerl_test:string_value(Res) of
             "6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-11'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1000-10-01T02:00:00Z\")) div fn:month-from-dateTime(xs:dateTime(\"0050-05-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-12'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-01-12T10:00:00Z\")) idiv fn:month-from-dateTime(xs:dateTime(\"1970-02-01T02:00:00Z\"))",
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
'fn-month-from-dateTime-13'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-10-01T10:00:00Z\")) mod fn:month-from-dateTime(xs:dateTime(\"1970-03-01T03:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-14'(_Config) ->
   Qry = "+fn:month-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-15'(_Config) ->
   Qry = "-fn:month-from-dateTime(xs:dateTime(\"1970-02-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2
      ",
   case xqerl_test:string_value(Res) of
             "-2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-month-from-dateTime-16'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:month-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-month-from-dateTime-17'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ne fn:month-from-dateTime(xs:dateTime(\"1970-02-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-month-from-dateTime-18'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1970-02-01T10:00:00Z\")) le fn:month-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-month-from-dateTime-19'(_Config) ->
   Qry = "fn:month-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\")) ge fn:month-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MonthFromDateTimeFunc-1'(_Config) ->
   Qry = "month-from-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-MonthFromDateTimeFunc-2'(_Config) ->
   Qry = "month-from-dateTime((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-MonthFromDateTimeFunc-3'(_Config) ->
   Qry = "empty(month-from-dateTime(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MonthFromDateTimeFunc-4'(_Config) ->
   Qry = "month-from-dateTime(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MonthFromDateTimeFunc-5'(_Config) ->
   Qry = "month-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
