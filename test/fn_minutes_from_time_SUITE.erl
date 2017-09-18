-module('fn_minutes_from_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-minutes-from-time1args-1'/1]).
-export(['fn-minutes-from-time1args-2'/1]).
-export(['fn-minutes-from-time1args-3'/1]).
-export(['fn-minutes-from-time-1'/1]).
-export(['fn-minutes-from-time-2'/1]).
-export(['fn-minutes-from-time-3'/1]).
-export(['fn-minutes-from-time-4'/1]).
-export(['fn-minutes-from-time-5'/1]).
-export(['fn-minutes-from-time-6'/1]).
-export(['fn-minutes-from-time-7'/1]).
-export(['fn-minutes-from-time-8'/1]).
-export(['fn-minutes-from-time-9'/1]).
-export(['fn-minutes-from-time-10'/1]).
-export(['fn-minutes-from-time-11'/1]).
-export(['fn-minutes-from-time-12'/1]).
-export(['fn-minutes-from-time-13'/1]).
-export(['fn-minutes-from-time-14'/1]).
-export(['fn-minutes-from-time-15'/1]).
-export(['fn-minutes-from-time-16'/1]).
-export(['fn-minutes-from-time-17'/1]).
-export(['fn-minutes-from-time-18'/1]).
-export(['fn-minutes-from-time-19'/1]).
-export(['K-MinutesFromTimeFunc-1'/1]).
-export(['K-MinutesFromTimeFunc-2'/1]).
-export(['K-MinutesFromTimeFunc-3'/1]).
-export(['K-MinutesFromTimeFunc-4'/1]).
-export(['K-MinutesFromTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-minutes-from-time1args-1',
   'fn-minutes-from-time1args-2',
   'fn-minutes-from-time1args-3',
   'fn-minutes-from-time-1',
   'fn-minutes-from-time-2',
   'fn-minutes-from-time-3',
   'fn-minutes-from-time-4',
   'fn-minutes-from-time-5',
   'fn-minutes-from-time-6',
   'fn-minutes-from-time-7',
   'fn-minutes-from-time-8',
   'fn-minutes-from-time-9',
   'fn-minutes-from-time-10',
   'fn-minutes-from-time-11',
   'fn-minutes-from-time-12',
   'fn-minutes-from-time-13',
   'fn-minutes-from-time-14',
   'fn-minutes-from-time-15',
   'fn-minutes-from-time-16',
   'fn-minutes-from-time-17',
   'fn-minutes-from-time-18',
   'fn-minutes-from-time-19',
   'K-MinutesFromTimeFunc-1',
   'K-MinutesFromTimeFunc-2',
   'K-MinutesFromTimeFunc-3',
   'K-MinutesFromTimeFunc-4',
   'K-MinutesFromTimeFunc-5'].
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
'fn-minutes-from-time1args-1'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"00:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time1args-2'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"08:03:35Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time1args-3'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"23:59:59Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         59\n      ",
   case xqerl_test:string_value(Res) of
             "59" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-1'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"13:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-2'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"21:23:00Z\")) lt fn:minutes-from-time(xs:time(\"21:24:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-time-3'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"01:23:00Z\")) gt fn:minutes-from-time(xs:time(\"01:23:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-time-4'(_Config) ->
   Qry = "fn:avg((fn:minutes-from-time(xs:time(\"01:10:00Z\")), fn:minutes-from-time(xs:time(\"01:20:00Z\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         15\n      ",
   case xqerl_test:string_value(Res) of
             "15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-5'(_Config) ->
   Qry = "fn:count(fn:minutes-from-time(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-6'(_Config) ->
   Qry = "fn:hours-from-time(xs:time(\"00:59:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-7'(_Config) ->
   Qry = "fn:abs(fn:minutes-from-time(xs:time(\"23:20:00Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         20\n      ",
   case xqerl_test:string_value(Res) of
             "20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-8'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"02:00:00Z\")) + fn:minutes-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-9'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:10:00Z\")) - fn:minutes-from-time(xs:time(\"09:02:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         8\n      ",
   case xqerl_test:string_value(Res) of
             "8" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-10'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"02:02:00Z\")) * fn:minutes-from-time(xs:time(\"10:08:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         16\n      ",
   case xqerl_test:string_value(Res) of
             "16" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-11'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"22:33:00Z\")) div fn:minutes-from-time(xs:time(\"02:11:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-12'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:12:00Z\")) idiv fn:minutes-from-time(xs:time(\"02:02:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         6\n      ",
   case xqerl_test:string_value(Res) of
             "6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-13'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:10:00Z\")) mod fn:minutes-from-time(xs:time(\"03:03:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-14'(_Config) ->
   Qry = "+fn:minutes-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-15'(_Config) ->
   Qry = "-fn:minutes-from-time(xs:time(\"10:10:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -10\n      ",
   case xqerl_test:string_value(Res) of
             "-10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-time-16'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:02:00Z\")) eq fn:minutes-from-time(xs:time(\"10:02:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-time-17'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:00:00Z\")) ne fn:minutes-from-time(xs:time(\"01:01:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-time-18'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:00:00Z\")) le fn:minutes-from-time(xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-time-19'(_Config) ->
   Qry = "fn:minutes-from-time(xs:time(\"10:03:00Z\")) ge fn:minutes-from-time(xs:time(\"10:04:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromTimeFunc-1'(_Config) ->
   Qry = "minutes-from-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-MinutesFromTimeFunc-2'(_Config) ->
   Qry = "minutes-from-time((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-MinutesFromTimeFunc-3'(_Config) ->
   Qry = "empty(minutes-from-time(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromTimeFunc-4'(_Config) ->
   Qry = "minutes-from-time(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromTimeFunc-5'(_Config) ->
   Qry = "minutes-from-time(xs:time(\"23:11:12.43\")) eq 11",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
