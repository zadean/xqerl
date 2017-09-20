-module('fn_minutes_from_duration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-minutes-from-duration1args-1'/1]).
-export(['fn-minutes-from-duration1args-2'/1]).
-export(['fn-minutes-from-duration1args-3'/1]).
-export(['fn-minutes-from-duration-1'/1]).
-export(['fn-minutes-from-duration-2'/1]).
-export(['fn-minutes-from-duration-3'/1]).
-export(['fn-minutes-from-duration-4'/1]).
-export(['fn-minutes-from-duration-5'/1]).
-export(['fn-minutes-from-duration-6'/1]).
-export(['fn-minutes-from-duration-7'/1]).
-export(['fn-minutes-from-duration-8'/1]).
-export(['fn-minutes-from-duration-9'/1]).
-export(['fn-minutes-from-duration-10'/1]).
-export(['fn-minutes-from-duration-11'/1]).
-export(['fn-minutes-from-duration-12'/1]).
-export(['fn-minutes-from-duration-13'/1]).
-export(['fn-minutes-from-duration-14'/1]).
-export(['fn-minutes-from-duration-15'/1]).
-export(['fn-minutes-from-duration-16'/1]).
-export(['fn-minutes-from-duration-17'/1]).
-export(['fn-minutes-from-duration-18'/1]).
-export(['fn-minutes-from-duration-19'/1]).
-export(['fn-minutes-from-duration-20'/1]).
-export(['fn-minutes-from-duration-21'/1]).
-export(['K-MinutesFromDurationFunc-1'/1]).
-export(['K-MinutesFromDurationFunc-2'/1]).
-export(['K-MinutesFromDurationFunc-3'/1]).
-export(['K-MinutesFromDurationFunc-4'/1]).
-export(['K-MinutesFromDurationFunc-5'/1]).
-export(['K-MinutesFromDurationFunc-6'/1]).
-export(['K-MinutesFromDurationFunc-7'/1]).
-export(['cbcl-minutes-from-duration-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-minutes-from-duration1args-1',
   'fn-minutes-from-duration1args-2',
   'fn-minutes-from-duration1args-3',
   'fn-minutes-from-duration-1',
   'fn-minutes-from-duration-2',
   'fn-minutes-from-duration-3',
   'fn-minutes-from-duration-4',
   'fn-minutes-from-duration-5',
   'fn-minutes-from-duration-6',
   'fn-minutes-from-duration-7',
   'fn-minutes-from-duration-8',
   'fn-minutes-from-duration-9',
   'fn-minutes-from-duration-10',
   'fn-minutes-from-duration-11',
   'fn-minutes-from-duration-12',
   'fn-minutes-from-duration-13',
   'fn-minutes-from-duration-14',
   'fn-minutes-from-duration-15',
   'fn-minutes-from-duration-16',
   'fn-minutes-from-duration-17',
   'fn-minutes-from-duration-18',
   'fn-minutes-from-duration-19',
   'fn-minutes-from-duration-20',
   'fn-minutes-from-duration-21',
   'K-MinutesFromDurationFunc-1',
   'K-MinutesFromDurationFunc-2',
   'K-MinutesFromDurationFunc-3',
   'K-MinutesFromDurationFunc-4',
   'K-MinutesFromDurationFunc-5',
   'K-MinutesFromDurationFunc-6',
   'K-MinutesFromDurationFunc-7',
   'cbcl-minutes-from-duration-001'].
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
'fn-minutes-from-duration1args-1'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P0DT0H0M0S\"))",
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
'fn-minutes-from-duration1args-2'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P15DT11H59M59S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         59
      ",
   case xqerl_test:string_value(Res) of
             "59" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration1args-3'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P31DT23H59M59S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         59
      ",
   case xqerl_test:string_value(Res) of
             "59" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-1'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P3DT10H\"))",
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
'fn-minutes-from-duration-2'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"-P5DT12H30M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -30
      ",
   case xqerl_test:string_value(Res) of
             "-30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-3'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P20DT20H20M\")) lt fn:minutes-from-duration(xs:dayTimeDuration(\"P03DT02H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-duration-4'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT10H10M\")) le fn:minutes-from-duration(xs:dayTimeDuration(\"P22DT10H09M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-duration-5'(_Config) ->
   Qry = "fn:count(fn:minutes-from-duration(()))",
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
'fn-minutes-from-duration-6'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P01DT01H01M\"))",
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
'fn-minutes-from-duration-7'(_Config) ->
   Qry = "fn:avg((fn:minutes-from-duration(xs:dayTimeDuration(\"P23DT10H20M\")),fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT10H10M\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         15
      ",
   case xqerl_test:string_value(Res) of
             "15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-8'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT10H10M\")) + fn:minutes-from-duration(xs:dayTimeDuration(\"P22DT11H30M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
   case xqerl_test:string_value(Res) of
             "40" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-9'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P30DT10H20M\")) - fn:minutes-from-duration(xs:dayTimeDuration(\"P10DT09H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-10'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P20DT09H04M\")) * fn:minutes-from-duration(xs:dayTimeDuration(\"P03DT10H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
   case xqerl_test:string_value(Res) of
             "40" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-11'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P20DT10H10M\")) div fn:minutes-from-duration(xs:dayTimeDuration(\"P05DT05H02M\"))",
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
'fn-minutes-from-duration-12'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P25DT10H20M\")) idiv fn:minutes-from-duration(xs:dayTimeDuration(\"P05DT02H04M\"))",
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
'fn-minutes-from-duration-13'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P10DT10H20M\")) mod fn:minutes-from-duration(xs:dayTimeDuration(\"P03DT03H03M\"))",
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
'fn-minutes-from-duration-14'(_Config) ->
   Qry = "+fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT10H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-15'(_Config) ->
   Qry = "-fn:minutes-from-duration(xs:dayTimeDuration(\"P20DT03H20M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -20
      ",
   case xqerl_test:string_value(Res) of
             "-20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-16'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P22DT10H10M\")) eq fn:minutes-from-duration(xs:dayTimeDuration(\"P22DT09H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-duration-17'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P23DT08H20M\")) ne fn:minutes-from-duration(xs:dayTimeDuration(\"P12DT05H22M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-duration-18'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P20DT03H09M\")) le fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT15H21M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-duration-19'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT07H12M\")) ge fn:minutes-from-duration(xs:dayTimeDuration(\"P20DT01H13M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-minutes-from-duration-20'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:duration(\"P1Y2M3DT10H30M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
   case xqerl_test:string_value(Res) of
             "30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-minutes-from-duration-21'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:dayTimeDuration(\"P21DT10H65M\"))",
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
'K-MinutesFromDurationFunc-1'(_Config) ->
   Qry = "minutes-from-duration()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-MinutesFromDurationFunc-2'(_Config) ->
   Qry = "minutes-from-duration((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-MinutesFromDurationFunc-3'(_Config) ->
   Qry = "empty(minutes-from-duration(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromDurationFunc-4'(_Config) ->
   Qry = "minutes-from-duration(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromDurationFunc-5'(_Config) ->
   Qry = "minutes-from-duration(xs:dayTimeDuration(\"P3DT8H2M1.03S\")) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromDurationFunc-6'(_Config) ->
   Qry = "minutes-from-duration(xs:dayTimeDuration(\"-P3DT8H2M1.03S\")) eq -2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-MinutesFromDurationFunc-7'(_Config) ->
   Qry = "minutes-from-duration(xs:duration(\"-P3Y4M8DT1H23M2.34S\")) eq -23",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-minutes-from-duration-001'(_Config) ->
   Qry = "fn:minutes-from-duration(xs:yearMonthDuration('P1Y'))",
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
