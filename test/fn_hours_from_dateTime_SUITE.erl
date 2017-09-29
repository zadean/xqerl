-module('fn_hours_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-hours-from-dateTime1args-1'/1]).
-export(['fn-hours-from-dateTime1args-2'/1]).
-export(['fn-hours-from-dateTime1args-3'/1]).
-export(['fn-hours-from-dateTime-1'/1]).
-export(['fn-hours-from-dateTime-2'/1]).
-export(['fn-hours-from-dateTime-3'/1]).
-export(['fn-hours-from-dateTime-4'/1]).
-export(['fn-hours-from-dateTime-5'/1]).
-export(['fn-hours-from-dateTime-6'/1]).
-export(['fn-hours-from-dateTime-7'/1]).
-export(['fn-hours-from-dateTime-8'/1]).
-export(['fn-hours-from-dateTime-9'/1]).
-export(['fn-hours-from-dateTime-10'/1]).
-export(['fn-hours-from-dateTime-11'/1]).
-export(['fn-hours-from-dateTime-12'/1]).
-export(['fn-hours-from-dateTime-13'/1]).
-export(['fn-hours-from-dateTime-14'/1]).
-export(['fn-hours-from-dateTime-15'/1]).
-export(['fn-hours-from-dateTime-16'/1]).
-export(['fn-hours-from-dateTime-17'/1]).
-export(['fn-hours-from-dateTime-18'/1]).
-export(['fn-hours-from-dateTime-19'/1]).
-export(['K-HoursFromDateTimeFunc-1'/1]).
-export(['K-HoursFromDateTimeFunc-2'/1]).
-export(['K-HoursFromDateTimeFunc-3'/1]).
-export(['K-HoursFromDateTimeFunc-4'/1]).
-export(['K-HoursFromDateTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-hours-from-dateTime1args-1',
   'fn-hours-from-dateTime1args-2',
   'fn-hours-from-dateTime1args-3',
   'fn-hours-from-dateTime-1',
   'fn-hours-from-dateTime-2',
   'fn-hours-from-dateTime-3',
   'fn-hours-from-dateTime-4',
   'fn-hours-from-dateTime-5',
   'fn-hours-from-dateTime-6',
   'fn-hours-from-dateTime-7',
   'fn-hours-from-dateTime-8',
   'fn-hours-from-dateTime-9',
   'fn-hours-from-dateTime-10',
   'fn-hours-from-dateTime-11',
   'fn-hours-from-dateTime-12',
   'fn-hours-from-dateTime-13',
   'fn-hours-from-dateTime-14',
   'fn-hours-from-dateTime-15',
   'fn-hours-from-dateTime-16',
   'fn-hours-from-dateTime-17',
   'fn-hours-from-dateTime-18',
   'fn-hours-from-dateTime-19',
   'K-HoursFromDateTimeFunc-1',
   'K-HoursFromDateTimeFunc-2',
   'K-HoursFromDateTimeFunc-3',
   'K-HoursFromDateTimeFunc-4',
   'K-HoursFromDateTimeFunc-5'].
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
'fn-hours-from-dateTime1args-1'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00\"))",
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
'fn-hours-from-dateTime1args-2'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52\"))",
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
'fn-hours-from-dateTime1args-3'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         23
      ",
   case xqerl_test:string_value(Res) of
             "23" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-1'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T08:20:00-05:00\"))",
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
'fn-hours-from-dateTime-2'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         21
      ",
   case xqerl_test:string_value(Res) of
             "21" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-3'(_Config) ->
   Qry = "fn:hours-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T21:20:00-05:00\"), xs:dayTimeDuration(\"PT0H\")))",
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
'fn-hours-from-dateTime-4'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T12:00:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         12
      ",
   case xqerl_test:string_value(Res) of
             "12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-5'(_Config) ->
   Qry = "fn:count(fn:hours-from-dateTime(()))",
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
'fn-hours-from-dateTime-6'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T00:20:00-05:00\"))",
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
'fn-hours-from-dateTime-7'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T23:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         23
      ",
   case xqerl_test:string_value(Res) of
             "23" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-8'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) + fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-9'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) - fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
   case xqerl_test:string_value(Res) of
             "-10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-10'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")) * fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         20
      ",
   case xqerl_test:string_value(Res) of
             "20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-11'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")) div fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0.2
      ",
   case xqerl_test:string_value(Res) of
             "0.2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-12'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) idiv fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         5
      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-13'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) mod fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T03:00:00Z\"))",
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
'fn-hours-from-dateTime-14'(_Config) ->
   Qry = "+fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-15'(_Config) ->
   Qry = "-fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
   case xqerl_test:string_value(Res) of
             "-10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-dateTime-16'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-hours-from-dateTime-17'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ne fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-hours-from-dateTime-18'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) le fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-hours-from-dateTime-19'(_Config) ->
   Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ge fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-HoursFromDateTimeFunc-1'(_Config) ->
   Qry = "hours-from-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-HoursFromDateTimeFunc-2'(_Config) ->
   Qry = "hours-from-dateTime((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-HoursFromDateTimeFunc-3'(_Config) ->
   Qry = "empty(hours-from-dateTime(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-HoursFromDateTimeFunc-4'(_Config) ->
   Qry = "hours-from-dateTime(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-HoursFromDateTimeFunc-5'(_Config) ->
   Qry = "hours-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 8",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
