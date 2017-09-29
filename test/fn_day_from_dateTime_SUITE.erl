-module('fn_day_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-day-from-dateTime1args-1'/1]).
-export(['fn-day-from-dateTime1args-2'/1]).
-export(['fn-day-from-dateTime1args-3'/1]).
-export(['fn-day-from-dateTime-1'/1]).
-export(['fn-day-from-dateTime-2'/1]).
-export(['fn-day-from-dateTime-3'/1]).
-export(['fn-day-from-dateTime-4'/1]).
-export(['fn-day-from-dateTime-5'/1]).
-export(['fn-day-from-dateTime-6'/1]).
-export(['fn-day-from-dateTime-7'/1]).
-export(['fn-day-from-dateTime-8'/1]).
-export(['fn-day-from-dateTime-9'/1]).
-export(['fn-day-from-dateTimeNew-10'/1]).
-export(['fn-day-from-dateTime-11'/1]).
-export(['fn-day-from-dateTime-12'/1]).
-export(['fn-day-from-dateTime-13'/1]).
-export(['fn-day-from-dateTime-14'/1]).
-export(['fn-day-from-dateTime-15'/1]).
-export(['fn-day-from-dateTime-16'/1]).
-export(['fn-day-from-dateTime-17'/1]).
-export(['fn-day-from-dateTime-18'/1]).
-export(['fn-day-from-dateTime-19'/1]).
-export(['K-DayFromDateTimeFunc-1'/1]).
-export(['K-DayFromDateTimeFunc-2'/1]).
-export(['K-DayFromDateTimeFunc-3'/1]).
-export(['K-DayFromDateTimeFunc-4'/1]).
-export(['K-DayFromDateTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-day-from-dateTime1args-1',
   'fn-day-from-dateTime1args-2',
   'fn-day-from-dateTime1args-3',
   'fn-day-from-dateTime-1',
   'fn-day-from-dateTime-2',
   'fn-day-from-dateTime-3',
   'fn-day-from-dateTime-4',
   'fn-day-from-dateTime-5',
   'fn-day-from-dateTime-6',
   'fn-day-from-dateTime-7',
   'fn-day-from-dateTime-8',
   'fn-day-from-dateTime-9',
   'fn-day-from-dateTimeNew-10',
   'fn-day-from-dateTime-11',
   'fn-day-from-dateTime-12',
   'fn-day-from-dateTime-13',
   'fn-day-from-dateTime-14',
   'fn-day-from-dateTime-15',
   'fn-day-from-dateTime-16',
   'fn-day-from-dateTime-17',
   'fn-day-from-dateTime-18',
   'fn-day-from-dateTime-19',
   'K-DayFromDateTimeFunc-1',
   'K-DayFromDateTimeFunc-2',
   'K-DayFromDateTimeFunc-3',
   'K-DayFromDateTimeFunc-4',
   'K-DayFromDateTimeFunc-5'].
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
'fn-day-from-dateTime1args-1'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime1args-2'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         7
      ",
   case xqerl_test:string_value(Res) of
             "7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime1args-3'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         31
      ",
   case xqerl_test:string_value(Res) of
             "31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-1'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         31
      ",
   case xqerl_test:string_value(Res) of
             "31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-2'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1999-12-31T20:00:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         31
      ",
   case xqerl_test:string_value(Res) of
             "31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-3'(_Config) ->
   Qry = "fn:day-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"), xs:dayTimeDuration(\"PT0H\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-4'(_Config) ->
   Qry = "fn:avg((fn:day-from-dateTime(xs:dateTime(\"1996-12-10T12:00:00Z\")),fn:day-from-dateTime(xs:dateTime(\"2000-12-20T12:00:00Z\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         15
      ",
   case xqerl_test:string_value(Res) of
             "15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-5'(_Config) ->
   Qry = "fn:count(fn:day-from-dateTime(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-6'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1999-01-01T00:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-7'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"0001-05-31T23:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         31
      ",
   case xqerl_test:string_value(Res) of
             "31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-8'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-03T00:00:00Z\")) + fn:day-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         4
      ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-9'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-10T00:00:00Z\")) - fn:day-from-dateTime(xs:dateTime(\"1969-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         9
      ",
   case xqerl_test:string_value(Res) of
             "9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTimeNew-10'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-02T02:00:00Z\")) * fn:day-from-dateTime(xs:dateTime(\"0002-01-04T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         8
      ",
   case xqerl_test:string_value(Res) of
             "8" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-11'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1000-01-10T02:00:00Z\")) div fn:day-from-dateTime(xs:dateTime(\"0050-01-05T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-12'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-10T10:00:00Z\")) idiv fn:day-from-dateTime(xs:dateTime(\"1970-01-10T02:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-13'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-10T10:00:00Z\")) mod fn:day-from-dateTime(xs:dateTime(\"1970-01-03T03:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-14'(_Config) ->
   Qry = "+fn:day-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-15'(_Config) ->
   Qry = "-fn:day-from-dateTime(xs:dateTime(\"1970-01-03T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -3
      ",
   case xqerl_test:string_value(Res) of
             "-3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-day-from-dateTime-16'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:day-from-dateTime(xs:dateTime(\"1970-01-02T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-day-from-dateTime-17'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-02T10:00:00Z\")) ne fn:day-from-dateTime(xs:dateTime(\"1970-02-02T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-day-from-dateTime-18'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1971-01-03T10:00:00Z\")) ge fn:day-from-dateTime(xs:dateTime(\"1970-01-03T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-day-from-dateTime-19'(_Config) ->
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1971-01-10T10:00:00Z\")) ge fn:day-from-dateTime(xs:dateTime(\"1970-01-11T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayFromDateTimeFunc-1'(_Config) ->
   Qry = "day-from-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-DayFromDateTimeFunc-2'(_Config) ->
   Qry = "day-from-dateTime((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-DayFromDateTimeFunc-3'(_Config) ->
   Qry = "empty(day-from-dateTime(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayFromDateTimeFunc-4'(_Config) ->
   Qry = "day-from-dateTime(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayFromDateTimeFunc-5'(_Config) ->
   Qry = "day-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
