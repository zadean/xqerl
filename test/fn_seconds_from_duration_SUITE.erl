-module('fn_seconds_from_duration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-seconds-from-duration1args-1'/1]).
-export(['fn-seconds-from-duration1args-2'/1]).
-export(['fn-seconds-from-duration1args-3'/1]).
-export(['fn-seconds-from-duration-1'/1]).
-export(['fn-seconds-from-duration-2'/1]).
-export(['fn-seconds-from-duration-3'/1]).
-export(['fn-seconds-from-duration-4'/1]).
-export(['fn-seconds-from-duration-5'/1]).
-export(['fn-seconds-from-duration-6'/1]).
-export(['fn-seconds-from-duration-7'/1]).
-export(['fn-seconds-from-duration-8'/1]).
-export(['fn-seconds-from-duration-9'/1]).
-export(['fn-seconds-from-duration-10'/1]).
-export(['fn-seconds-from-duration-11'/1]).
-export(['fn-seconds-from-duration-12'/1]).
-export(['fn-seconds-from-duration-13'/1]).
-export(['fn-seconds-from-duration-14'/1]).
-export(['fn-seconds-from-duration-15'/1]).
-export(['fn-seconds-from-duration-16'/1]).
-export(['fn-seconds-from-duration-17'/1]).
-export(['fn-seconds-from-duration-18'/1]).
-export(['fn-seconds-from-duration-19'/1]).
-export(['fn-seconds-from-duration-20'/1]).
-export(['fn-seconds-from-duration-21'/1]).
-export(['K-SecondsFromDurationFunc-1'/1]).
-export(['K-SecondsFromDurationFunc-2'/1]).
-export(['K-SecondsFromDurationFunc-3'/1]).
-export(['K-SecondsFromDurationFunc-4'/1]).
-export(['K-SecondsFromDurationFunc-5'/1]).
-export(['K-SecondsFromDurationFunc-6'/1]).
-export(['K-SecondsFromDurationFunc-7'/1]).
-export(['cbcl-seconds-from-duration-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-seconds-from-duration1args-1',
   'fn-seconds-from-duration1args-2',
   'fn-seconds-from-duration1args-3',
   'fn-seconds-from-duration-1',
   'fn-seconds-from-duration-2',
   'fn-seconds-from-duration-3',
   'fn-seconds-from-duration-4',
   'fn-seconds-from-duration-5',
   'fn-seconds-from-duration-6',
   'fn-seconds-from-duration-7',
   'fn-seconds-from-duration-8',
   'fn-seconds-from-duration-9',
   'fn-seconds-from-duration-10',
   'fn-seconds-from-duration-11',
   'fn-seconds-from-duration-12',
   'fn-seconds-from-duration-13',
   'fn-seconds-from-duration-14',
   'fn-seconds-from-duration-15',
   'fn-seconds-from-duration-16',
   'fn-seconds-from-duration-17',
   'fn-seconds-from-duration-18',
   'fn-seconds-from-duration-19',
   'fn-seconds-from-duration-20',
   'fn-seconds-from-duration-21',
   'K-SecondsFromDurationFunc-1',
   'K-SecondsFromDurationFunc-2',
   'K-SecondsFromDurationFunc-3',
   'K-SecondsFromDurationFunc-4',
   'K-SecondsFromDurationFunc-5',
   'K-SecondsFromDurationFunc-6',
   'K-SecondsFromDurationFunc-7',
   'cbcl-seconds-from-duration-001'].
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
'fn-seconds-from-duration1args-1'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P0DT0H0M0S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration1args-2'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P15DT11H59M59S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         59
      ",
 Tst = xqerl:run("59"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration1args-3'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P31DT23H59M59S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         59
      ",
 Tst = xqerl:run("59"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-1'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P3DT10H12.5S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12.5
      ",
 Tst = xqerl:run("12.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-2'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"-PT256S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -16
      ",
 Tst = xqerl:run("-16"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-3'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT20H20M10S\")) lt fn:seconds-from-duration(xs:dayTimeDuration(\"P03DT02H10M20S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-4'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M09S\")) le fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT10H09M31S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-5'(_Config) ->
   Qry = "fn:count(fn:seconds-from-duration(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-6'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P01DT01H01M01S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-7'(_Config) ->
   Qry = "fn:avg((fn:seconds-from-duration(xs:dayTimeDuration(\"P23DT10H20M30S\")),fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M32S\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         31
      ",
 Tst = xqerl:run("31"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-8'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M09S\")) + fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT11H30M21S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
 Tst = xqerl:run("30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-9'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P30DT10H20M10S\")) - fn:seconds-from-duration(xs:dayTimeDuration(\"P10DT09H10M02S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         8
      ",
 Tst = xqerl:run("8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-10'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT09H04M20S\")) * fn:seconds-from-duration(xs:dayTimeDuration(\"P03DT10H10M03S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         60
      ",
 Tst = xqerl:run("60"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-11'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT10H10M30S\")) div fn:seconds-from-duration(xs:dayTimeDuration(\"P05DT05H02M02S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         15
      ",
 Tst = xqerl:run("15"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-12'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P25DT10H20M40S\")) idiv fn:seconds-from-duration(xs:dayTimeDuration(\"P05DT02H04M20S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-13'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P10DT10H20M10S\")) mod fn:seconds-from-duration(xs:dayTimeDuration(\"P03DT03H03M03S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-14'(_Config) ->
   Qry = "+fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M20S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         20
      ",
 Tst = xqerl:run("20"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-15'(_Config) ->
   Qry = "-fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT03H20M30S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -30
      ",
 Tst = xqerl:run("-30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-16'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT10H10M01S\")) eq fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT09H10M01S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-17'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P23DT08H20M02S\")) ne fn:seconds-from-duration(xs:dayTimeDuration(\"P12DT05H22M03S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-18'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT03H09M20S\")) le fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT15H21M31S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-19'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT07H12M59S\")) ge fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT01H13M01S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-20'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:duration(\"P1Y2M3DT10H30M911S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11
      ",
 Tst = xqerl:run("11"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-seconds-from-duration-21'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M90S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
 Tst = xqerl:run("30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SecondsFromDurationFunc-1'(_Config) ->
   Qry = "seconds-from-duration()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SecondsFromDurationFunc-2'(_Config) ->
   Qry = "seconds-from-duration((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SecondsFromDurationFunc-3'(_Config) ->
   Qry = "empty(seconds-from-duration(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SecondsFromDurationFunc-4'(_Config) ->
   Qry = "seconds-from-duration(()) instance of xs:decimal?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SecondsFromDurationFunc-5'(_Config) ->
   Qry = "seconds-from-duration(xs:dayTimeDuration(\"P3DT8H2M1.03S\")) eq 1.03",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SecondsFromDurationFunc-6'(_Config) ->
   Qry = "seconds-from-duration(xs:dayTimeDuration(\"-P3DT8H2M1.03S\")) eq -1.03",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SecondsFromDurationFunc-7'(_Config) ->
   Qry = "seconds-from-duration(xs:duration(\"-P3Y4M8DT1H23M2.34S\")) eq -2.34",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-seconds-from-duration-001'(_Config) ->
   Qry = "fn:seconds-from-duration(xs:yearMonthDuration('P1Y'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
