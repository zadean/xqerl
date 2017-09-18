-module('fn_hours_from_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-hours-from-time1args-1'/1]).
-export(['fn-hours-from-time1args-2'/1]).
-export(['fn-hours-from-time1args-3'/1]).
-export(['fn-hours-from-time-1'/1]).
-export(['fn-hours-from-time-2'/1]).
-export(['fn-hours-from-time-3'/1]).
-export(['fn-hours-from-time-4'/1]).
-export(['fn-hours-from-time-5'/1]).
-export(['fn-hours-from-time-6'/1]).
-export(['fn-hours-from-time-7'/1]).
-export(['fn-hours-from-time-8'/1]).
-export(['fn-hours-from-time-9'/1]).
-export(['fn-hours-from-time-10'/1]).
-export(['fn-hours-from-time-11'/1]).
-export(['fn-hours-from-time-12'/1]).
-export(['fn-hours-from-time-13'/1]).
-export(['fn-hours-from-time-14'/1]).
-export(['fn-hours-from-time-15'/1]).
-export(['fn-hours-from-time-16'/1]).
-export(['fn-hours-from-time-17'/1]).
-export(['fn-hours-from-time-18'/1]).
-export(['fn-hours-from-time-19'/1]).
-export(['K-HoursFromTimeFunc-1'/1]).
-export(['K-HoursFromTimeFunc-2'/1]).
-export(['K-HoursFromTimeFunc-3'/1]).
-export(['K-HoursFromTimeFunc-4'/1]).
-export(['K-HoursFromTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-hours-from-time1args-1',
   'fn-hours-from-time1args-2',
   'fn-hours-from-time1args-3',
   'fn-hours-from-time-1',
   'fn-hours-from-time-2',
   'fn-hours-from-time-3',
   'fn-hours-from-time-4',
   'fn-hours-from-time-5',
   'fn-hours-from-time-6',
   'fn-hours-from-time-7',
   'fn-hours-from-time-8',
   'fn-hours-from-time-9',
   'fn-hours-from-time-10',
   'fn-hours-from-time-11',
   'fn-hours-from-time-12',
   'fn-hours-from-time-13',
   'fn-hours-from-time-14',
   'fn-hours-from-time-15',
   'fn-hours-from-time-16',
   'fn-hours-from-time-17',
   'fn-hours-from-time-18',
   'fn-hours-from-time-19',
   'K-HoursFromTimeFunc-1',
   'K-HoursFromTimeFunc-2',
   'K-HoursFromTimeFunc-3',
   'K-HoursFromTimeFunc-4',
   'K-HoursFromTimeFunc-5'].
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
'fn-hours-from-time1args-1'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"00:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time1args-2'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"08:03:35Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         8\n      ",
   case xqerl_test:string_value(Res) of
             "8" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time1args-3'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"23:59:59Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         23\n      ",
   case xqerl_test:string_value(Res) of
             "23" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-1'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"11:23:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         11\n      ",
   case xqerl_test:string_value(Res) of
             "11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-2'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"21:23:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         21\n      ",
   case xqerl_test:string_value(Res) of
             "21" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-3'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"01:23:00+05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-4'(_Config) ->
   Qry = "fn:hours-from-time(fn:adjust-time-to-timezone(xs:time(\"01:23:00+05:00\"), xs:dayTimeDuration(\"PT0H\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         20\n      ",
   case xqerl_test:string_value(Res) of
             "20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-5'(_Config) ->
   Qry = "fn:count(fn:hours-from-time(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-6'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"00:20:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-7'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"23:20:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         23\n      ",
   case xqerl_test:string_value(Res) of
             "23" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-8'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"02:00:00Z\")) + fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         12\n      ",
   case xqerl_test:string_value(Res) of
             "12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-9'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) - fn:hours-from-time(xs:time(\"09:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-10'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"02:00:00Z\")) * fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         20\n      ",
   case xqerl_test:string_value(Res) of
             "20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-11'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"22:00:00Z\")) div fn:hours-from-time(xs:time(\"02:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         11\n      ",
   case xqerl_test:string_value(Res) of
             "11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-12'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) idiv fn:hours-from-time(xs:time(\"02:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5\n      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-13'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) mod fn:hours-from-time(xs:time(\"03:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-14'(_Config) ->
   Qry = "+fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         10\n      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-15'(_Config) ->
   Qry = "-fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -10\n      ",
   case xqerl_test:string_value(Res) of
             "-10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-hours-from-time-16'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) eq fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-hours-from-time-17'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) ne fn:hours-from-time(xs:time(\"01:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-hours-from-time-18'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) le fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-hours-from-time-19'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) ge fn:hours-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-HoursFromTimeFunc-1'(_Config) ->
   Qry = "hours-from-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-HoursFromTimeFunc-2'(_Config) ->
   Qry = "hours-from-time((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-HoursFromTimeFunc-3'(_Config) ->
   Qry = "empty(hours-from-time(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-HoursFromTimeFunc-4'(_Config) ->
   Qry = "hours-from-time(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-HoursFromTimeFunc-5'(_Config) ->
   Qry = "hours-from-time(xs:time(\"23:11:12.43\")) eq 23",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
