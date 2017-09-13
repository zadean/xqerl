-module('fn_current_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-current-dateTime-1'/1]).
-export(['fn-current-dateTime-2'/1]).
-export(['fn-current-dateTime-3'/1]).
-export(['fn-current-dateTime-4'/1]).
-export(['fn-current-dateTime-5'/1]).
-export(['fn-current-dateTime-6'/1]).
-export(['fn-current-datetime-7'/1]).
-export(['fn-current-dateTime-8'/1]).
-export(['fn-current-dateTime-9'/1]).
-export(['fn-current-dateTime-10'/1]).
-export(['fn-current-dateTime-11'/1]).
-export(['fn-current-dateTime-12'/1]).
-export(['fn-current-dateTime-13'/1]).
-export(['fn-current-dateTime-14'/1]).
-export(['fn-current-dateTime-15'/1]).
-export(['fn-current-dateTime-16'/1]).
-export(['fn-current-dateTime-17'/1]).
-export(['fn-current-dateTime-18'/1]).
-export(['fn-current-dateTime-19'/1]).
-export(['fn-current-dateTime-20'/1]).
-export(['fn-current-dateTime-21'/1]).
-export(['fn-current-dateTime-22'/1]).
-export(['fn-current-dateTime-23'/1]).
-export(['fn-current-dateTime-24'/1]).
-export(['fn-current-dateTime-25'/1]).
-export(['K-ContextCurrentDatetimeFunc-1'/1]).
-export(['K-ContextCurrentDatetimeFunc-2'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-current-dateTime-1',
   'fn-current-dateTime-2',
   'fn-current-dateTime-3',
   'fn-current-dateTime-4',
   'fn-current-dateTime-5',
   'fn-current-dateTime-6',
   'fn-current-datetime-7',
   'fn-current-dateTime-8',
   'fn-current-dateTime-9',
   'fn-current-dateTime-10',
   'fn-current-dateTime-11',
   'fn-current-dateTime-12',
   'fn-current-dateTime-13',
   'fn-current-dateTime-14',
   'fn-current-dateTime-15',
   'fn-current-dateTime-16',
   'fn-current-dateTime-17',
   'fn-current-dateTime-18',
   'fn-current-dateTime-19',
   'fn-current-dateTime-20',
   'fn-current-dateTime-21',
   'fn-current-dateTime-22',
   'fn-current-dateTime-23',
   'fn-current-dateTime-24',
   'fn-current-dateTime-25',
   'K-ContextCurrentDatetimeFunc-1',
   'K-ContextCurrentDatetimeFunc-2'].
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
'fn-current-dateTime-1'(_Config) ->
   Qry = "fn:current-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-2'(_Config) ->
   Qry = "fn:year-from-dateTime(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-3'(_Config) ->
   Qry = "fn:month-from-dateTime(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-4'(_Config) ->
   Qry = "fn:day-from-dateTime(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-5'(_Config) ->
   Qry = "fn:current-dateTime() - fn:current-dateTime()",
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
'fn-current-dateTime-6'(_Config) ->
   Qry = "fn:current-dateTime() + xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-datetime-7'(_Config) ->
   Qry = "fn:current-dateTime() - xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-8'(_Config) ->
   Qry = "fn:current-dateTime(\"Argument 1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-current-dateTime-9'(_Config) ->
   Qry = "fn:current-dateTime() - fn:current-dateTime()",
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
'fn-current-dateTime-10'(_Config) ->
   Qry = "xs:string(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-11'(_Config) ->
   Qry = "fn:timezone-from-dateTime(current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dayTimeDuration
      ",
   case xqerl_types:type(Res) of
           'xs:dayTimeDuration' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-12'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) eq fn:string(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-13'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) ne fn:string(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-14'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) le fn:string(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-15'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) ge fn:string(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-16'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-17'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-18'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) or fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-19'(_Config) ->
   Qry = "fn:string(fn:current-dateTime()) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-20'(_Config) ->
   Qry = "fn:not(fn:string(fn:current-dateTime()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-21'(_Config) ->
   Qry = "fn:current-dateTime() - xs:yearMonthDuration(\"P1Y2M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-22'(_Config) ->
   Qry = "fn:hours-from-dateTime(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-23'(_Config) ->
   Qry = "fn:minutes-from-dateTime(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-24'(_Config) ->
   Qry = "fn:seconds-from-dateTime(fn:current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:decimal
      ",
   case xqerl_types:type(Res) of
           'xs:decimal' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-dateTime-25'(_Config) ->
   Qry = "exists(timezone-from-dateTime(current-dateTime()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextCurrentDatetimeFunc-1'(_Config) ->
   Qry = "current-dateTime(\"WRONG PARAM\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ContextCurrentDatetimeFunc-2'(_Config) ->
   Qry = "current-dateTime() eq current-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
