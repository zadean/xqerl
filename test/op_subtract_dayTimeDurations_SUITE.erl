-module('op_subtract_dayTimeDurations_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-dayTimeDurations2args-1'/1]).
-export(['op-subtract-dayTimeDurations2args-2'/1]).
-export(['op-subtract-dayTimeDurations2args-3'/1]).
-export(['op-subtract-dayTimeDurations2args-4'/1]).
-export(['op-subtract-dayTimeDurations2args-5'/1]).
-export(['op-subtract-dayTimeDurations-1'/1]).
-export(['op-subtract-dayTimeDurations-2'/1]).
-export(['op-subtract-dayTimeDurations-3'/1]).
-export(['op-subtract-dayTimeDurations-4'/1]).
-export(['op-subtract-dayTimeDurations-5'/1]).
-export(['op-subtract-dayTimeDurations-6'/1]).
-export(['op-subtract-dayTimeDurations-7'/1]).
-export(['op-subtract-dayTimeDurations-8'/1]).
-export(['op-subtract-dayTimeDurations-9'/1]).
-export(['op-subtract-dayTimeDurations-10'/1]).
-export(['op-subtract-dayTimeDurations-11'/1]).
-export(['op-subtract-dayTimeDurations-12'/1]).
-export(['op-subtract-dayTimeDurations-13'/1]).
-export(['op-subtract-dayTimeDurations-14'/1]).
-export(['op-subtract-dayTimeDurations-15'/1]).
-export(['op-subtract-dayTimeDurations-16'/1]).
-export(['K-DayTimeDurationSubtract-1'/1]).
-export(['K-DayTimeDurationSubtract-2'/1]).
-export(['K-DayTimeDurationSubtract-3'/1]).
-export(['K-DayTimeDurationSubtract-4'/1]).
-export(['K-DayTimeDurationSubtract-5'/1]).
-export(['K-DayTimeDurationSubtract-6'/1]).
-export(['K-DayTimeDurationSubtract-7'/1]).
-export(['K-DayTimeDurationSubtract-8'/1]).
-export(['K-DayTimeDurationSubtract-9'/1]).
-export(['K2-DayTimeDurationSubtract-1'/1]).
-export(['K2-DayTimeDurationSubtract-2'/1]).
-export(['cbcl-subtract-dayTimeDurations-001'/1]).
-export(['cbcl-subtract-dayTimeDurations-002'/1]).
-export(['cbcl-subtract-dayTimeDurations-003'/1]).
-export(['cbcl-minus-001'/1]).
-export(['cbcl-minus-002'/1]).
-export(['cbcl-minus-003'/1]).
-export(['cbcl-minus-004'/1]).
-export(['cbcl-minus-005'/1]).
-export(['cbcl-minus-006'/1]).
-export(['cbcl-minus-007'/1]).
-export(['cbcl-minus-008'/1]).
-export(['cbcl-minus-009'/1]).
-export(['cbcl-minus-010'/1]).
-export(['cbcl-minus-011'/1]).
-export(['cbcl-minus-012'/1]).
-export(['cbcl-minus-013'/1]).
-export(['cbcl-minus-014'/1]).
-export(['cbcl-minus-015'/1]).
-export(['cbcl-minus-016'/1]).
-export(['cbcl-minus-017'/1]).
-export(['cbcl-minus-018'/1]).
-export(['cbcl-minus-019'/1]).
-export(['cbcl-minus-020'/1]).
-export(['cbcl-minus-021'/1]).
-export(['cbcl-minus-022'/1]).
-export(['cbcl-minus-023'/1]).
-export(['cbcl-minus-024'/1]).
-export(['cbcl-minus-025'/1]).
-export(['cbcl-minus-026'/1]).
-export(['cbcl-minus-027'/1]).
-export(['cbcl-minus-028'/1]).
-export(['cbcl-minus-029'/1]).
-export(['cbcl-minus-030'/1]).
-export(['cbcl-minus-031'/1]).
-export(['cbcl-minus-032'/1]).
-export(['cbcl-minus-033'/1]).
-export(['cbcl-minus-034'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-subtract-dayTimeDurations2args-1',
   'op-subtract-dayTimeDurations2args-2',
   'op-subtract-dayTimeDurations2args-3',
   'op-subtract-dayTimeDurations2args-4',
   'op-subtract-dayTimeDurations2args-5',
   'op-subtract-dayTimeDurations-1',
   'op-subtract-dayTimeDurations-2',
   'op-subtract-dayTimeDurations-3',
   'op-subtract-dayTimeDurations-4',
   'op-subtract-dayTimeDurations-5',
   'op-subtract-dayTimeDurations-6',
   'op-subtract-dayTimeDurations-7',
   'op-subtract-dayTimeDurations-8',
   'op-subtract-dayTimeDurations-9',
   'op-subtract-dayTimeDurations-10',
   'op-subtract-dayTimeDurations-11',
   'op-subtract-dayTimeDurations-12',
   'op-subtract-dayTimeDurations-13',
   'op-subtract-dayTimeDurations-14',
   'op-subtract-dayTimeDurations-15',
   'op-subtract-dayTimeDurations-16',
   'K-DayTimeDurationSubtract-1',
   'K-DayTimeDurationSubtract-2',
   'K-DayTimeDurationSubtract-3',
   'K-DayTimeDurationSubtract-4',
   'K-DayTimeDurationSubtract-5',
   'K-DayTimeDurationSubtract-6',
   'K-DayTimeDurationSubtract-7',
   'K-DayTimeDurationSubtract-8',
   'K-DayTimeDurationSubtract-9',
   'K2-DayTimeDurationSubtract-1',
   'K2-DayTimeDurationSubtract-2',
   'cbcl-subtract-dayTimeDurations-001',
   'cbcl-subtract-dayTimeDurations-002',
   'cbcl-subtract-dayTimeDurations-003',
   'cbcl-minus-001',
   'cbcl-minus-002',
   'cbcl-minus-003',
   'cbcl-minus-004',
   'cbcl-minus-005',
   'cbcl-minus-006',
   'cbcl-minus-007',
   'cbcl-minus-008',
   'cbcl-minus-009',
   'cbcl-minus-010',
   'cbcl-minus-011',
   'cbcl-minus-012',
   'cbcl-minus-013',
   'cbcl-minus-014',
   'cbcl-minus-015',
   'cbcl-minus-016',
   'cbcl-minus-017',
   'cbcl-minus-018',
   'cbcl-minus-019',
   'cbcl-minus-020',
   'cbcl-minus-021',
   'cbcl-minus-022',
   'cbcl-minus-023',
   'cbcl-minus-024',
   'cbcl-minus-025',
   'cbcl-minus-026',
   'cbcl-minus-027',
   'cbcl-minus-028',
   'cbcl-minus-029',
   'cbcl-minus-030',
   'cbcl-minus-031',
   'cbcl-minus-032',
   'cbcl-minus-033',
   'cbcl-minus-034'].
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
'op-subtract-dayTimeDurations2args-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
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
'op-subtract-dayTimeDurations2args-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P15DT11H59M59S
      ",
   case xqerl_types:string_value(Res) of
             "P15DT11H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations2args-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P31DT23H59M59S
      ",
   case xqerl_types:string_value(Res) of
             "P31DT23H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations2args-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") - xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P15DT11H59M59S
      ",
   case xqerl_types:string_value(Res) of
             "-P15DT11H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations2args-5'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") - xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P31DT23H59M59S
      ",
   case xqerl_types:string_value(Res) of
             "-P31DT23H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P2DT12H\") - xs:dayTimeDuration(\"P1DT10H30M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1DT1H30M
      ",
   case xqerl_types:string_value(Res) of
             "P1DT1H30M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations-2'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P10DT10H11M\") - xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-3'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P20DT20H10M\") - xs:dayTimeDuration(\"P19DT13H10M\")) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:dayTimeDuration(\"P11DT12H04M\") - xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:dayTimeDuration(\"P05DT09H08M\") - xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-6'(_Config) ->
   Qry = "fn:number(xs:dayTimeDuration(\"P02DT06H09M\") - xs:dayTimeDuration(\"P10DT08H01M\"))",
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
'op-subtract-dayTimeDurations-7'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P03DT04H08M\") - xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1DT19H6M
      ",
   case xqerl_types:string_value(Res) of
             "P1DT19H6M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations-8'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P10DT01H01M\") - xs:dayTimeDuration(\"P11DT02H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P1DT1H1M
      ",
   case xqerl_types:string_value(Res) of
             "-P1DT1H1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations-9'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P01DT02H01M\") - xs:dayTimeDuration(\"P02DT09H02M\"))) and fn:string((xs:dayTimeDuration(\"P02DT03H03M\") - xs:dayTimeDuration(\"P04DT04H04M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-10'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P05DT09H02M\") - xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:dayTimeDuration(\"P05DT05H03M\") - xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-11'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P42DT10H10M\") - xs:dayTimeDuration(\"P10DT10H10M\")) div (xs:dayTimeDuration(\"P20DT10H10M\") - xs:dayTimeDuration(\"P18DT10H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         16
      ",
   case xqerl_types:string_value(Res) of
             "16" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-subtract-dayTimeDurations-12'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT08H11M\") - xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-13'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P23DT11H11M\") - xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:dayTimeDuration(\"P23DT11H11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-14'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P21DT08H12M\") - xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:dayTimeDuration(\"P08DT08H05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-15'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P10DT10H01M\") - xs:dayTimeDuration(\"P17DT10H02M\")) le xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dayTimeDurations-16'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P13DT09H09M\") - xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:dayTimeDuration(\"P18DT02H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationSubtract-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") - xs:dayTimeDuration(\"PT0S\") eq xs:dayTimeDuration(\"P3DT4H3M3.100S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationSubtract-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"PT0S\") - xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"-P3DT4H3M3.100S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationSubtract-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"PT0S\") - xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"-P3DT4H3M3.100S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationSubtract-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DayTimeDurationSubtract-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") - xs:dayTimeDuration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DayTimeDurationSubtract-6'(_Config) ->
   Qry = "xs:duration(\"P3D\") - xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DayTimeDurationSubtract-7'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") - xs:duration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DayTimeDurationSubtract-8'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:duration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DayTimeDurationSubtract-9'(_Config) ->
   Qry = "xs:duration(\"P3Y3M\") - xs:dayTimeDuration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-DayTimeDurationSubtract-1'(_Config) ->
   Qry = "(current-time() - xs:dayTimeDuration(\"PT3H\")) ne current-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DayTimeDurationSubtract-2'(_Config) ->
   Qry = "(current-dateTime() - xs:dayTimeDuration(\"PT3H\")) lt current-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-subtract-dayTimeDurations-001'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; local:dayTimeDuration(1, 1) - xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1DT1H
      ",
   case xqerl_types:string_value(Res) of
             "P1DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-subtract-dayTimeDurations-002'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; local:dayTimeDuration(1, 1) - local:dayTimeDuration(1, 1)",
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
'cbcl-subtract-dayTimeDurations-003'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; xs:dayTimeDuration(\"-P5000000000000000000D\") - local:dayTimeDuration(5000000000000000000, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-minus-001'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; xs:date(\"1997-01-01\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1996-12-31
      ",
   case xqerl_types:string_value(Res) of
             "1996-12-31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-002'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; xs:date(\"1997-01-01\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-003'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; xs:date(\"1997-01-01\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1996-12-01
      ",
   case xqerl_types:string_value(Res) of
             "1996-12-01" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-004'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; xs:date(\"1997-01-01\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-005'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; xs:dateTime(\"1997-01-01T12:00:00\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1996-12-31T12:00:00
      ",
   case xqerl_types:string_value(Res) of
             "1996-12-31T12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-006'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; xs:dateTime(\"1997-01-01T12:00:00\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-007'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; xs:dateTime(\"1997-01-01T12:00:00\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1996-12-01T12:00:00
      ",
   case xqerl_types:string_value(Res) of
             "1996-12-01T12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-008'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; xs:dateTime(\"1997-01-01T12:00:00\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-009'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"PT1H\") }; xs:time(\"12:00:00\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11:00:00
      ",
   case xqerl_types:string_value(Res) of
             "11:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-010'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1H\") }; xs:time(\"12:00:00\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-011'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; xs:dayTimeDuration(\"PT1H\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT23H
      ",
   case xqerl_types:string_value(Res) of
             "-PT23H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-012'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; xs:dayTimeDuration(\"PT1H\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-013'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; xs:yearMonthDuration(\"P1Y\") - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P11M
      ",
   case xqerl_types:string_value(Res) of
             "P11M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-014'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; xs:yearMonthDuration(\"P1Y\") - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-015'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(false()) - xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-016'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(true()) - xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-017'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; local:f(false()) - xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-018'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; local:f(true()) - xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-019'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(false()) - xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-020'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(true()) - xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-021'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; local:f(false()) - xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-022'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") }; local:f(true()) - xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-023'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"PT1H\") }; local:f(false()) - xs:time(\"12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-024'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1H\") }; local:f(true()) - xs:time(\"12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-025'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(false()) - xs:dayTimeDuration(\"PT1H\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT23H
      ",
   case xqerl_types:string_value(Res) of
             "PT23H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-026'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(true()) - xs:dayTimeDuration(\"PT1H\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-027'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(false()) - xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P11M
      ",
   case xqerl_types:string_value(Res) of
             "-P11M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-028'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(true()) - xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-029'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(false()) - local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_types:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-minus-030'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(true()) - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-031'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(false()) - local:f(false())",
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
'cbcl-minus-032'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(true()) - local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-033'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; declare function local:g($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(false()) - local:g(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-minus-034'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; declare function local:g($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(true()) - local:g(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
