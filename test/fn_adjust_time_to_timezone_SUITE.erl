-module('fn_adjust_time_to_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-adjust-time-to-timezone1args-1'/1]).
-export(['fn-adjust-time-to-timezone1args-2'/1]).
-export(['fn-adjust-time-to-timezone1args-3'/1]).
-export(['fn-adjust-time-to-timezone-1'/1]).
-export(['fn-adjust-time-to-timezone-2'/1]).
-export(['fn-adjust-time-to-timezone-3'/1]).
-export(['fn-adjust-time-to-timezone-4'/1]).
-export(['fn-adjust-time-to-timezone-5'/1]).
-export(['fn-adjust-time-to-timezone-6'/1]).
-export(['fn-adjust-time-to-timezone-7'/1]).
-export(['fn-adjust-time-to-timezone-8'/1]).
-export(['fn-adjust-time-to-timezone-9'/1]).
-export(['fn-adjust-time-to-timezone-10'/1]).
-export(['fn-adjust-time-to-timezone-11'/1]).
-export(['fn-adjust-time-to-timezone-12'/1]).
-export(['fn-adjust-time-to-timezone-13'/1]).
-export(['fn-adjust-time-to-timezone-14'/1]).
-export(['fn-adjust-time-to-timezone-15'/1]).
-export(['fn-adjust-time-to-timezone-16'/1]).
-export(['fn-adjust-time-to-timezone-17'/1]).
-export(['fn-adjust-time-to-timezone-18'/1]).
-export(['fn-adjust-time-to-timezone-19'/1]).
-export(['fn-adjust-time-to-timezone-20'/1]).
-export(['K-AdjTimeToTimezoneFunc-1'/1]).
-export(['K-AdjTimeToTimezoneFunc-2'/1]).
-export(['K-AdjTimeToTimezoneFunc-3'/1]).
-export(['K-AdjTimeToTimezoneFunc-4'/1]).
-export(['K-AdjTimeToTimezoneFunc-5'/1]).
-export(['K-AdjTimeToTimezoneFunc-6'/1]).
-export(['K-AdjTimeToTimezoneFunc-7'/1]).
-export(['K-AdjTimeToTimezoneFunc-8'/1]).
-export(['K-AdjTimeToTimezoneFunc-9'/1]).
-export(['K-AdjTimeToTimezoneFunc-10'/1]).
-export(['K-AdjTimeToTimezoneFunc-11'/1]).
-export(['K-AdjTimeToTimezoneFunc-12'/1]).
-export(['K-AdjTimeToTimezoneFunc-13'/1]).
-export(['K-AdjTimeToTimezoneFunc-14'/1]).
-export(['K-AdjTimeToTimezoneFunc-15'/1]).
-export(['K-AdjTimeToTimezoneFunc-16'/1]).
-export(['cbcl-adjust-time-to-timezone-001'/1]).
-export(['cbcl-adjust-time-to-timezone-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-adjust-time-to-timezone1args-1',
   'fn-adjust-time-to-timezone1args-2',
   'fn-adjust-time-to-timezone1args-3',
   'fn-adjust-time-to-timezone-1',
   'fn-adjust-time-to-timezone-2',
   'fn-adjust-time-to-timezone-3',
   'fn-adjust-time-to-timezone-4',
   'fn-adjust-time-to-timezone-5',
   'fn-adjust-time-to-timezone-6',
   'fn-adjust-time-to-timezone-7',
   'fn-adjust-time-to-timezone-8',
   'fn-adjust-time-to-timezone-9',
   'fn-adjust-time-to-timezone-10',
   'fn-adjust-time-to-timezone-11',
   'fn-adjust-time-to-timezone-12',
   'fn-adjust-time-to-timezone-13',
   'fn-adjust-time-to-timezone-14',
   'fn-adjust-time-to-timezone-15',
   'fn-adjust-time-to-timezone-16',
   'fn-adjust-time-to-timezone-17',
   'fn-adjust-time-to-timezone-18',
   'fn-adjust-time-to-timezone-19',
   'fn-adjust-time-to-timezone-20',
   'K-AdjTimeToTimezoneFunc-1',
   'K-AdjTimeToTimezoneFunc-2',
   'K-AdjTimeToTimezoneFunc-3',
   'K-AdjTimeToTimezoneFunc-4',
   'K-AdjTimeToTimezoneFunc-5',
   'K-AdjTimeToTimezoneFunc-6',
   'K-AdjTimeToTimezoneFunc-7',
   'K-AdjTimeToTimezoneFunc-8',
   'K-AdjTimeToTimezoneFunc-9',
   'K-AdjTimeToTimezoneFunc-10',
   'K-AdjTimeToTimezoneFunc-11',
   'K-AdjTimeToTimezoneFunc-12',
   'K-AdjTimeToTimezoneFunc-13',
   'K-AdjTimeToTimezoneFunc-14',
   'K-AdjTimeToTimezoneFunc-15',
   'K-AdjTimeToTimezoneFunc-16',
   'cbcl-adjust-time-to-timezone-001',
   'cbcl-adjust-time-to-timezone-002'].
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
'fn-adjust-time-to-timezone1args-1'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         14:00:00-10:00
      ",
   case xqerl_types:string_value(Res) of
             "14:00:00-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone1args-2'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"08:03:35Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         22:03:35-10:00
      ",
   case xqerl_types:string_value(Res) of
             "22:03:35-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone1args-3'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"23:59:59Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         13:59:59-10:00
      ",
   case xqerl_types:string_value(Res) of
             "13:59:59-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-1'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10:00:00-05:00
      ",
   case xqerl_types:string_value(Res) of
             "10:00:00-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-2'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12:00:00-05:00
      ",
   case xqerl_types:string_value(Res) of
             "12:00:00-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-3'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00\"), $tz)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10:00:00-10:00
      ",
   case xqerl_types:string_value(Res) of
             "10:00:00-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-4'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), $tz)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         07:00:00-10:00
      ",
   case xqerl_types:string_value(Res) of
             "07:00:00-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-5'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-05:00\"),())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10:00:00
      ",
   case xqerl_types:string_value(Res) of
             "10:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-6'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10:00:00
      ",
   case xqerl_types:string_value(Res) of
             "10:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-7'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         03:00:00+10:00
      ",
   case xqerl_types:string_value(Res) of
             "03:00:00+10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-8'(_Config) ->
   Qry = "fn:count(fn:adjust-time-to-timezone((),()))",
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
'fn-adjust-time-to-timezone-9'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"09:00:00Z\"),()) - fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT1H
      ",
   case xqerl_types:string_value(Res) of
             "-PT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-10'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()) - fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT0S
      ",
   case xqerl_types:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-11'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10:00:00
      ",
   case xqerl_types:string_value(Res) of
             "10:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-12'(_Config) ->
   Qry = "fn:boolean(fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-time-to-timezone-13'(_Config) ->
   Qry = "fn:not(fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-time-to-timezone-14'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) or fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-time-to-timezone-15'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-time-to-timezone-16'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-time-to-timezone-17'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-time-to-timezone-18'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"01:00:00Z\"),$tz) - xs:time(\"10:00:00Z\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT9H
      ",
   case xqerl_types:string_value(Res) of
             "-PT9H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-19'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),$tz) - xs:time(\"09:00:00Z\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT1H
      ",
   case xqerl_types:string_value(Res) of
             "PT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-time-to-timezone-20'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()) ge fn:adjust-time-to-timezone(xs:time(\"11:00:00Z\"),())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-1'(_Config) ->
   Qry = "adjust-time-to-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-AdjTimeToTimezoneFunc-2'(_Config) ->
   Qry = "adjust-time-to-timezone((), (), \"WRONG PARAM\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-AdjTimeToTimezoneFunc-3'(_Config) ->
   Qry = "empty(adjust-time-to-timezone(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-4'(_Config) ->
   Qry = "empty(adjust-time-to-timezone((), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-5'(_Config) ->
   Qry = "adjust-time-to-timezone(()) instance of xs:time?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-6'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"PT14H1M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'K-AdjTimeToTimezoneFunc-7'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"-PT14H1M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'K-AdjTimeToTimezoneFunc-8'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'K-AdjTimeToTimezoneFunc-9'(_Config) ->
   Qry = "timezone-from-time(adjust-time-to-timezone(xs:time(\"00:00:00\"))) eq implicit-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-10'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:time(\"10:00:00-05:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-11'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:time(\"12:00:00-05:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-12'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:time(\"10:00:00-10:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-13'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:time(\"07:00:00-10:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-14'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), ()) eq xs:time(\"10:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-15'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), ()) eq xs:time(\"10:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjTimeToTimezoneFunc-16'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\")) eq xs:time(\"03:00:00+10:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-adjust-time-to-timezone-001'(_Config) ->
   Qry = "adjust-time-to-timezone(current-time(), implicit-timezone()) eq current-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-adjust-time-to-timezone-002'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"12:00:00Z\")) eq adjust-time-to-timezone(xs:time(\"13:00:00+01:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
