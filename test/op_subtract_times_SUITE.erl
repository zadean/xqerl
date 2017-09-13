-module('op_subtract_times_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-times2args-1'/1]).
-export(['op-subtract-times2args-2'/1]).
-export(['op-subtract-times2args-3'/1]).
-export(['op-subtract-times2args-4'/1]).
-export(['op-subtract-times2args-5'/1]).
-export(['op-subtract-times-1'/1]).
-export(['op-subtract-times-2'/1]).
-export(['op-subtract-times-3'/1]).
-export(['op-subtract-times-4'/1]).
-export(['op-subtract-times-5'/1]).
-export(['op-subtract-times-6'/1]).
-export(['op-subtract-times-7'/1]).
-export(['op-subtract-times-8'/1]).
-export(['op-subtract-times-9'/1]).
-export(['op-subtract-times-10'/1]).
-export(['op-subtract-times-11'/1]).
-export(['op-subtract-times-12'/1]).
-export(['op-subtract-times-13'/1]).
-export(['op-subtract-times-14'/1]).
-export(['op-subtract-times-15'/1]).
-export(['op-subtract-times-16'/1]).
-export(['K-TimeSubtract-1'/1]).
-export(['K-TimeSubtract-2'/1]).
-export(['K-TimeSubtract-3'/1]).
-export(['K-TimeSubtract-4'/1]).
-export(['K-TimeSubtract-5'/1]).
-export(['K-TimeSubtract-6'/1]).
-export(['K-TimeSubtract-7'/1]).
-export(['K-TimeSubtract-8'/1]).
-export(['cbcl-subtract-times-001'/1]).
-export(['cbcl-subtract-times-002'/1]).
-export(['cbcl-subtract-times-003'/1]).
-export(['cbcl-subtract-times-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-subtract-times2args-1',
   'op-subtract-times2args-2',
   'op-subtract-times2args-3',
   'op-subtract-times2args-4',
   'op-subtract-times2args-5',
   'op-subtract-times-1',
   'op-subtract-times-2',
   'op-subtract-times-3',
   'op-subtract-times-4',
   'op-subtract-times-5',
   'op-subtract-times-6',
   'op-subtract-times-7',
   'op-subtract-times-8',
   'op-subtract-times-9',
   'op-subtract-times-10',
   'op-subtract-times-11',
   'op-subtract-times-12',
   'op-subtract-times-13',
   'op-subtract-times-14',
   'op-subtract-times-15',
   'op-subtract-times-16',
   'K-TimeSubtract-1',
   'K-TimeSubtract-2',
   'K-TimeSubtract-3',
   'K-TimeSubtract-4',
   'K-TimeSubtract-5',
   'K-TimeSubtract-6',
   'K-TimeSubtract-7',
   'K-TimeSubtract-8',
   'cbcl-subtract-times-001',
   'cbcl-subtract-times-002',
   'cbcl-subtract-times-003',
   'cbcl-subtract-times-004'].
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
'op-subtract-times2args-1'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") - xs:time(\"00:00:00Z\")",
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
'op-subtract-times2args-2'(_Config) ->
   Qry = "xs:time(\"08:03:35Z\") - xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT8H3M35S
      ",
   case xqerl_types:string_value(Res) of
             "PT8H3M35S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times2args-3'(_Config) ->
   Qry = "xs:time(\"23:59:59Z\") - xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT23H59M59S
      ",
   case xqerl_types:string_value(Res) of
             "PT23H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times2args-4'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") - xs:time(\"08:03:35Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT8H3M35S
      ",
   case xqerl_types:string_value(Res) of
             "-PT8H3M35S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times2args-5'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") - xs:time(\"23:59:59Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT23H59M59S
      ",
   case xqerl_types:string_value(Res) of
             "-PT23H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-1'(_Config) ->
   Qry = "xs:time(\"11:12:00Z\") - xs:time(\"04:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT7H12M
      ",
   case xqerl_types:string_value(Res) of
             "PT7H12M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-2'(_Config) ->
   Qry = "xs:time(\"11:00:00-05:00\") - xs:time(\"21:30:00+05:30\")",
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
'op-subtract-times-3'(_Config) ->
   Qry = "xs:time(\"17:00:00-06:00\") - xs:time(\"08:00:00+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1D
      ",
   case xqerl_types:string_value(Res) of
             "P1D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:time(\"13:00:00Z\") - xs:time(\"14:00:00Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:time(\"13:00:00Z\") - xs:time(\"10:00:00Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-6'(_Config) ->
   Qry = "fn:number(xs:time(\"13:00:00Z\") - xs:time(\"12:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-7'(_Config) ->
   Qry = "fn:string(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT4H
      ",
   case xqerl_types:string_value(Res) of
             "-PT4H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-8'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT4H
      ",
   case xqerl_types:string_value(Res) of
             "-PT4H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-9'(_Config) ->
   Qry = "fn:string((xs:time(\"13:00:00Z\") - xs:time(\"12:00:00Z\"))) and fn:string((xs:time(\"13:00:00Z\") - xs:time(\"10:00:00Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-10'(_Config) ->
   Qry = "fn:string((xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\"))) or fn:string((xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-11'(_Config) ->
   Qry = "(xs:time(\"23:00:00Z\") - xs:time(\"17:00:00Z\")) div (xs:time(\"13:00:00Z\") - xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-times-12'(_Config) ->
   Qry = "fn:string((xs:time(\"17:00:00Z\") - xs:time(\"13:00:00Z\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-13'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) eq xs:dayTimeDuration(\"P20DT01H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-14'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) ne xs:dayTimeDuration(\"P10DT01H01M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-15'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) le xs:dayTimeDuration(\"P10DT02H10M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-times-16'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) ge xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeSubtract-1'(_Config) ->
   Qry = "xs:time(\"08:12:32\") - xs:time(\"18:12:32\") eq xs:dayTimeDuration(\"-PT10H\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeSubtract-2'(_Config) ->
   Qry = "xs:time(\"08:12:32\") - xs:time(\"08:12:32\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeSubtract-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:time(\"08:01:23\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-TimeSubtract-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:date(\"1999-08-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-TimeSubtract-5'(_Config) ->
   Qry = "xs:time(\"08:01:23\") + xs:time(\"08:01:23\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-TimeSubtract-6'(_Config) ->
   Qry = "xs:time(\"08:01:23\") * xs:time(\"08:01:23\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-TimeSubtract-7'(_Config) ->
   Qry = "xs:time(\"08:01:23\") div xs:time(\"08:01:23\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-TimeSubtract-8'(_Config) ->
   Qry = "xs:time(\"08:01:23\") mod xs:time(\"08:01:23\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-subtract-times-001'(_Config) ->
   Qry = "xs:time(\"12:00:00+01:00\") - xs:time(\"12:00:00\") - implicit-timezone()",
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
'cbcl-subtract-times-002'(_Config) ->
   Qry = "xs:time(\"12:00:00\") - xs:time(\"12:00:00+01:00\") + implicit-timezone()",
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
'cbcl-subtract-times-003'(_Config) ->
   Qry = "
      fn:adjust-time-to-timezone(xs:time(\"12:00:00\")) - fn:adjust-time-to-timezone(xs:time(\"08:00:00+05:00\"), xs:dayTimeDuration(\"PT1H\")) + implicit-timezone()
   ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT9H
      ",
   case xqerl_types:string_value(Res) of
             "PT9H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-subtract-times-004'(_Config) ->
   Qry = "
      fn:adjust-time-to-timezone(xs:time(\"08:00:00+05:00\"), xs:dayTimeDuration(\"PT1H\")) - fn:adjust-time-to-timezone(xs:time(\"12:00:00\")) - implicit-timezone()
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
