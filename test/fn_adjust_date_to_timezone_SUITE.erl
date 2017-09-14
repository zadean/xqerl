-module('fn_adjust_date_to_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-adjust-date-to-timezone1args-1'/1]).
-export(['fn-adjust-date-to-timezone1args-2'/1]).
-export(['fn-adjust-date-to-timezone1args-3'/1]).
-export(['fn-adjust-date-to-timezone-1'/1]).
-export(['fn-adjust-date-to-timezone-2'/1]).
-export(['fn-adjust-date-to-timezone-3'/1]).
-export(['fn-adjust-date-to-timezone-4'/1]).
-export(['fn-adjust-date-to-timezone-5'/1]).
-export(['fn-adjust-date-to-timezone-6'/1]).
-export(['fn-adjust-date-to-timezone-7'/1]).
-export(['fn-adjust-date-to-timezone-9'/1]).
-export(['fn-adjust-date-to-timezone-10'/1]).
-export(['fn-adjust-date-to-timezone-11'/1]).
-export(['fn-adjust-date-to-timezone-12'/1]).
-export(['fn-adjust-date-to-timezone-13'/1]).
-export(['fn-adjust-date-to-timezone-14'/1]).
-export(['fn-adjust-date-to-timezone-15'/1]).
-export(['fn-adjust-date-to-timezone-16'/1]).
-export(['fn-adjust-date-to-timezone-17'/1]).
-export(['fn-adjust-date-to-timezone-18'/1]).
-export(['fn-adjust-date-to-timezone-19'/1]).
-export(['fn-adjust-date-to-timezone-20'/1]).
-export(['K-AdjDateToTimezoneFunc-1'/1]).
-export(['K-AdjDateToTimezoneFunc-2'/1]).
-export(['K-AdjDateToTimezoneFunc-3'/1]).
-export(['K-AdjDateToTimezoneFunc-4'/1]).
-export(['K-AdjDateToTimezoneFunc-5'/1]).
-export(['K-AdjDateToTimezoneFunc-6'/1]).
-export(['K-AdjDateToTimezoneFunc-7'/1]).
-export(['K-AdjDateToTimezoneFunc-8'/1]).
-export(['K-AdjDateToTimezoneFunc-9'/1]).
-export(['K-AdjDateToTimezoneFunc-10'/1]).
-export(['K-AdjDateToTimezoneFunc-11'/1]).
-export(['K-AdjDateToTimezoneFunc-12'/1]).
-export(['K-AdjDateToTimezoneFunc-13'/1]).
-export(['K-AdjDateToTimezoneFunc-14'/1]).
-export(['cbcl-adjust-date-to-timezone-001'/1]).
-export(['cbcl-adjust-date-to-timezone-002'/1]).
-export(['cbcl-adjust-date-to-timezone-003'/1]).
-export(['cbcl-adjust-date-to-timezone-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-adjust-date-to-timezone1args-1',
   'fn-adjust-date-to-timezone1args-2',
   'fn-adjust-date-to-timezone1args-3',
   'fn-adjust-date-to-timezone-1',
   'fn-adjust-date-to-timezone-2',
   'fn-adjust-date-to-timezone-3',
   'fn-adjust-date-to-timezone-4',
   'fn-adjust-date-to-timezone-5',
   'fn-adjust-date-to-timezone-6',
   'fn-adjust-date-to-timezone-7',
   'fn-adjust-date-to-timezone-9',
   'fn-adjust-date-to-timezone-10',
   'fn-adjust-date-to-timezone-11',
   'fn-adjust-date-to-timezone-12',
   'fn-adjust-date-to-timezone-13',
   'fn-adjust-date-to-timezone-14',
   'fn-adjust-date-to-timezone-15',
   'fn-adjust-date-to-timezone-16',
   'fn-adjust-date-to-timezone-17',
   'fn-adjust-date-to-timezone-18',
   'fn-adjust-date-to-timezone-19',
   'fn-adjust-date-to-timezone-20',
   'K-AdjDateToTimezoneFunc-1',
   'K-AdjDateToTimezoneFunc-2',
   'K-AdjDateToTimezoneFunc-3',
   'K-AdjDateToTimezoneFunc-4',
   'K-AdjDateToTimezoneFunc-5',
   'K-AdjDateToTimezoneFunc-6',
   'K-AdjDateToTimezoneFunc-7',
   'K-AdjDateToTimezoneFunc-8',
   'K-AdjDateToTimezoneFunc-9',
   'K-AdjDateToTimezoneFunc-10',
   'K-AdjDateToTimezoneFunc-11',
   'K-AdjDateToTimezoneFunc-12',
   'K-AdjDateToTimezoneFunc-13',
   'K-AdjDateToTimezoneFunc-14',
   'cbcl-adjust-date-to-timezone-001',
   'cbcl-adjust-date-to-timezone-002',
   'cbcl-adjust-date-to-timezone-003',
   'cbcl-adjust-date-to-timezone-004'].
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
'fn-adjust-date-to-timezone1args-1'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"1970-01-01Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1969-12-31-10:00
      ",
   case xqerl_types:string_value(Res) of
             "1969-12-31-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone1args-2'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"1983-11-17Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1983-11-16-10:00
      ",
   case xqerl_types:string_value(Res) of
             "1983-11-16-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone1args-3'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2030-12-31Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2030-12-30-10:00
      ",
   case xqerl_types:string_value(Res) of
             "2030-12-30-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-1'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-07-05:00
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-07-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-2'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-07-05:00
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-07-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-3'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"), $tz)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-07-10:00
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-07-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-4'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), $tz)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-06-10:00
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-06-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-5'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-07
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-07" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-6'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-07
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-07" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-7'(_Config) ->
   Qry = "fn:count(fn:adjust-date-to-timezone(()))",
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
'fn-adjust-date-to-timezone-9'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\")) - fn:adjust-date-to-timezone(xs:date(\"2006-03-07-07:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P1461D
      ",
   case xqerl_types:string_value(Res) of
             "-P1461D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-10'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\")) - fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"))",
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
'fn-adjust-date-to-timezone-11'(_Config) ->
   Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2002-03-07
      ",
   case xqerl_types:string_value(Res) of
             "2002-03-07" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-12'(_Config) ->
   Qry = "fn:boolean(fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-date-to-timezone-13'(_Config) ->
   Qry = "fn:not(fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-date-to-timezone-14'(_Config) ->
   Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) or fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-date-to-timezone-15'(_Config) ->
   Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-date-to-timezone-16'(_Config) ->
   Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-date-to-timezone-17'(_Config) ->
   Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-adjust-date-to-timezone-18'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-date-to-timezone(xs:date(\"2002-03-07Z\"),$tz) - xs:date(\"2006-03-07Z\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P1461DT10H
      ",
   case xqerl_types:string_value(Res) of
             "-P1461DT10H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-19'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-date-to-timezone(xs:date(\"2004-03-07Z\"),$tz) - xs:date(\"2001-03-07Z\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1095DT14H
      ",
   case xqerl_types:string_value(Res) of
             "P1095DT14H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-adjust-date-to-timezone-20'(_Config) ->
   Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\")) ge fn:adjust-date-to-timezone(xs:date(\"2005-03-07-04:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-1'(_Config) ->
   Qry = "adjust-date-to-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-AdjDateToTimezoneFunc-2'(_Config) ->
   Qry = "adjust-date-to-timezone((), (), \"WRONG PARAM\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-AdjDateToTimezoneFunc-3'(_Config) ->
   Qry = "empty(adjust-date-to-timezone(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-4'(_Config) ->
   Qry = "empty(adjust-date-to-timezone((), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-5'(_Config) ->
   Qry = "adjust-date-to-timezone(()) instance of xs:date?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-6'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2001-02-03\"), xs:dayTimeDuration(\"PT14H1M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'K-AdjDateToTimezoneFunc-7'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2001-02-03\"), xs:dayTimeDuration(\"-PT14H1M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'K-AdjDateToTimezoneFunc-8'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2001-02-03\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'K-AdjDateToTimezoneFunc-9'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:date(\"2002-03-07-05:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-10'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:date(\"2002-03-07-05:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-11'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:date(\"2002-03-07-10:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-12'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:date(\"2002-03-06-10:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-13'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07\"), ()) eq xs:date(\"2002-03-07\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-AdjDateToTimezoneFunc-14'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), ()) eq xs:date(\"2002-03-07\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-adjust-date-to-timezone-001'(_Config) ->
   Qry = "adjust-date-to-timezone(current-date(), implicit-timezone()) eq current-date()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-adjust-date-to-timezone-002'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"-25252734927766555-06-07+02:00\"), xs:dayTimeDuration(\"PT0S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-adjust-date-to-timezone-003'(_Config) ->
   Qry = "adjust-date-to-timezone(xs:date(\"25252734927766555-07-28-12:00\"), xs:dayTimeDuration(\"PT12H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-adjust-date-to-timezone-004'(_Config) ->
   Qry = "adjust-date-to-timezone(current-date(), xs:dayTimeDuration(\"PT12H\")) eq adjust-date-to-timezone(current-date(), xs:dayTimeDuration(\"-PT12H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
