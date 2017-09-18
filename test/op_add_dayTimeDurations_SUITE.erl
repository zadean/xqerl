-module('op_add_dayTimeDurations_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-dayTimeDurations2args-1'/1]).
-export(['op-add-dayTimeDurations2args-2'/1]).
-export(['op-add-dayTimeDurations2args-3'/1]).
-export(['op-add-dayTimeDurations2args-4'/1]).
-export(['op-add-dayTimeDurations2args-5'/1]).
-export(['op-add-dayTimeDurations-1'/1]).
-export(['op-add-dayTimeDurations-2'/1]).
-export(['op-add-dayTimeDurations-3'/1]).
-export(['op-add-dayTimeDurations-4'/1]).
-export(['op-add-dayTimeDurations-5'/1]).
-export(['op-add-dayTimeDurations-6'/1]).
-export(['op-add-dayTimeDurations-7'/1]).
-export(['op-add-dayTimeDurations-8'/1]).
-export(['op-add-dayTimeDurations-9'/1]).
-export(['op-add-dayTimeDurations-10'/1]).
-export(['op-add-dayTimeDurations-11'/1]).
-export(['op-add-dayTimeDurations-12'/1]).
-export(['op-add-dayTimeDurations-13'/1]).
-export(['op-add-dayTimeDurations-14'/1]).
-export(['op-add-dayTimeDurations-15'/1]).
-export(['op-add-dayTimeDurations-16'/1]).
-export(['K-DayTimeDurationAdd-1'/1]).
-export(['K-DayTimeDurationAdd-2'/1]).
-export(['K-DayTimeDurationAdd-3'/1]).
-export(['cbcl-add-dayTimeDurations-001'/1]).
-export(['cbcl-add-dayTimeDurations-002'/1]).
-export(['cbcl-add-dayTimeDurations-003'/1]).
-export(['cbcl-plus-001'/1]).
-export(['cbcl-plus-002'/1]).
-export(['cbcl-plus-003'/1]).
-export(['cbcl-plus-004'/1]).
-export(['cbcl-plus-005'/1]).
-export(['cbcl-plus-006'/1]).
-export(['cbcl-plus-007'/1]).
-export(['cbcl-plus-008'/1]).
-export(['cbcl-plus-009'/1]).
-export(['cbcl-plus-010'/1]).
-export(['cbcl-plus-011'/1]).
-export(['cbcl-plus-012'/1]).
-export(['cbcl-plus-013'/1]).
-export(['cbcl-plus-014'/1]).
-export(['cbcl-plus-015'/1]).
-export(['cbcl-plus-016'/1]).
-export(['cbcl-plus-017'/1]).
-export(['cbcl-plus-018'/1]).
-export(['cbcl-plus-019'/1]).
-export(['cbcl-plus-020'/1]).
-export(['cbcl-plus-021'/1]).
-export(['cbcl-plus-022'/1]).
-export(['cbcl-plus-023'/1]).
-export(['cbcl-plus-024'/1]).
-export(['cbcl-plus-025'/1]).
-export(['cbcl-plus-026'/1]).
-export(['cbcl-plus-027'/1]).
-export(['cbcl-plus-028'/1]).
-export(['cbcl-plus-029'/1]).
-export(['cbcl-plus-030'/1]).
-export(['cbcl-plus-031'/1]).
-export(['cbcl-plus-032'/1]).
-export(['cbcl-plus-033'/1]).
-export(['cbcl-plus-034'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-dayTimeDurations2args-1',
   'op-add-dayTimeDurations2args-2',
   'op-add-dayTimeDurations2args-3',
   'op-add-dayTimeDurations2args-4',
   'op-add-dayTimeDurations2args-5',
   'op-add-dayTimeDurations-1',
   'op-add-dayTimeDurations-2',
   'op-add-dayTimeDurations-3',
   'op-add-dayTimeDurations-4',
   'op-add-dayTimeDurations-5',
   'op-add-dayTimeDurations-6',
   'op-add-dayTimeDurations-7',
   'op-add-dayTimeDurations-8',
   'op-add-dayTimeDurations-9',
   'op-add-dayTimeDurations-10',
   'op-add-dayTimeDurations-11',
   'op-add-dayTimeDurations-12',
   'op-add-dayTimeDurations-13',
   'op-add-dayTimeDurations-14',
   'op-add-dayTimeDurations-15',
   'op-add-dayTimeDurations-16',
   'K-DayTimeDurationAdd-1',
   'K-DayTimeDurationAdd-2',
   'K-DayTimeDurationAdd-3',
   'cbcl-add-dayTimeDurations-001',
   'cbcl-add-dayTimeDurations-002',
   'cbcl-add-dayTimeDurations-003',
   'cbcl-plus-001',
   'cbcl-plus-002',
   'cbcl-plus-003',
   'cbcl-plus-004',
   'cbcl-plus-005',
   'cbcl-plus-006',
   'cbcl-plus-007',
   'cbcl-plus-008',
   'cbcl-plus-009',
   'cbcl-plus-010',
   'cbcl-plus-011',
   'cbcl-plus-012',
   'cbcl-plus-013',
   'cbcl-plus-014',
   'cbcl-plus-015',
   'cbcl-plus-016',
   'cbcl-plus-017',
   'cbcl-plus-018',
   'cbcl-plus-019',
   'cbcl-plus-020',
   'cbcl-plus-021',
   'cbcl-plus-022',
   'cbcl-plus-023',
   'cbcl-plus-024',
   'cbcl-plus-025',
   'cbcl-plus-026',
   'cbcl-plus-027',
   'cbcl-plus-028',
   'cbcl-plus-029',
   'cbcl-plus-030',
   'cbcl-plus-031',
   'cbcl-plus-032',
   'cbcl-plus-033',
   'cbcl-plus-034'].
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
'op-add-dayTimeDurations2args-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations2args-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P15DT11H59M59S\n      ",
   case xqerl_test:string_value(Res) of
             "P15DT11H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations2args-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P31DT23H59M59S\n      ",
   case xqerl_test:string_value(Res) of
             "P31DT23H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations2args-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") + xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P15DT11H59M59S\n      ",
   case xqerl_test:string_value(Res) of
             "P15DT11H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations2args-5'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") + xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P31DT23H59M59S\n      ",
   case xqerl_test:string_value(Res) of
             "P31DT23H59M59S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P2DT12H5M\") + xs:dayTimeDuration(\"P5DT12H\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P8DT5M\n      ",
   case xqerl_test:string_value(Res) of
             "P8DT5M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations-2'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P10DT10H11M\") + xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-3'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P20DT20H10M\") + xs:dayTimeDuration(\"P19DT13H10M\")) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:dayTimeDuration(\"P11DT12H04M\") + xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:dayTimeDuration(\"P05DT09H08M\") + xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-6'(_Config) ->
   Qry = "fn:number(xs:dayTimeDuration(\"P02DT06H09M\") + xs:dayTimeDuration(\"P10DT08H01M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         NaN\n      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations-7'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P03DT04H08M\") + xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P4DT13H10M\n      ",
   case xqerl_test:string_value(Res) of
             "P4DT13H10M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations-8'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P10DT01H01M\") + xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -P1DT1H1M\n      ",
   case xqerl_test:string_value(Res) of
             "-P1DT1H1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations-9'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P01DT02H01M\") + xs:dayTimeDuration(\"P02DT09H02M\"))) and fn:string((xs:dayTimeDuration(\"P02DT03H03M\") + xs:dayTimeDuration(\"P04DT04H04M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-10'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P05DT09H02M\") + xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:dayTimeDuration(\"P05DT05H03M\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-11'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P42DT10H10M\") + xs:dayTimeDuration(\"P10DT10H10M\")) div (xs:dayTimeDuration(\"P42DT10H10M\") + xs:dayTimeDuration(\"P10DT10H10M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-add-dayTimeDurations-12'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT08H11M\") + xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-13'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P23DT11H11M\") + xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:dayTimeDuration(\"P23DT11H11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-14'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P21DT08H12M\") + xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:dayTimeDuration(\"P08DT08H05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-15'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P10DT10H01M\") + xs:dayTimeDuration(\"P17DT10H02M\")) le xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDurations-16'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P13DT09H09M\") + xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:dayTimeDuration(\"P18DT02H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationAdd-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") + xs:dayTimeDuration(\"PT0S\") eq xs:dayTimeDuration(\"P3DT4H3M3.100S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationAdd-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"PT0S\") + xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"P3DT4H3M3.100S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationAdd-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") + xs:dayTimeDuration(\"P3DT12H31M56.303S\") eq xs:dayTimeDuration(\"P6DT16H34M59.403S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-add-dayTimeDurations-001'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; local:dayTimeDuration(1, 1) + xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P1DT1H\n      ",
   case xqerl_test:string_value(Res) of
             "P1DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-add-dayTimeDurations-002'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; xs:dayTimeDuration(\"P0D\") + local:dayTimeDuration(1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P1DT1H\n      ",
   case xqerl_test:string_value(Res) of
             "P1DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-add-dayTimeDurations-003'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; local:dayTimeDuration(1, 1) + local:dayTimeDuration(1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2DT2H\n      ",
   case xqerl_test:string_value(Res) of
             "P2DT2H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-001'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        xs:date(\"1997-01-01\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-01-02\n      ",
   case xqerl_test:string_value(Res) of
             "1997-01-02" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-002'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        xs:date(\"1997-01-01\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-003'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        xs:date(\"1997-01-01\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-02-01\n      ",
   case xqerl_test:string_value(Res) of
             "1997-02-01" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-004'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        xs:date(\"1997-01-01\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-005'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        xs:dateTime(\"1997-01-01T12:00:00\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-01-02T12:00:00\n      ",
   case xqerl_test:string_value(Res) of
             "1997-01-02T12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-006'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        xs:dateTime(\"1997-01-01T12:00:00\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-007'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        xs:dateTime(\"1997-01-01T12:00:00\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-02-01T12:00:00\n      ",
   case xqerl_test:string_value(Res) of
             "1997-02-01T12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-008'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        xs:dateTime(\"1997-01-01T12:00:00\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-009'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"PT1H\") };\n        xs:time(\"12:00:00\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         13:00:00\n      ",
   case xqerl_test:string_value(Res) of
             "13:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-010'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1H\") };\n        xs:time(\"12:00:00\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-011'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        xs:dayTimeDuration(\"PT1H\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P1DT1H\n      ",
   case xqerl_test:string_value(Res) of
             "P1DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-012'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        xs:dayTimeDuration(\"PT1H\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-013'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        xs:yearMonthDuration(\"P1Y\") + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P1Y1M\n      ",
   case xqerl_test:string_value(Res) of
             "P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-014'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        xs:yearMonthDuration(\"P1Y\") + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-015'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(false()) + xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-01-02\n      ",
   case xqerl_test:string_value(Res) of
             "1997-01-02" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-016'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(true()) + xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-017'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(false()) + xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-02-01\n      ",
   case xqerl_test:string_value(Res) of
             "1997-02-01" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-018'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(true()) + xs:date(\"1997-01-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-019'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(false()) + xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-01-02T12:00:00\n      ",
   case xqerl_test:string_value(Res) of
             "1997-01-02T12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-020'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(true()) + xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-021'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(false()) + xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1997-02-01T12:00:00\n      ",
   case xqerl_test:string_value(Res) of
             "1997-02-01T12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-022'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(true()) + xs:dateTime(\"1997-01-01T12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-023'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"PT1H\") };\n        local:f(false()) + xs:time(\"12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         13:00:00\n      ",
   case xqerl_test:string_value(Res) of
             "13:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-024'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"PT1H\") };\n        local:f(true()) + xs:time(\"12:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-025'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(false()) + xs:dayTimeDuration(\"PT1H\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P1DT1H\n      ",
   case xqerl_test:string_value(Res) of
             "P1DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-026'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(true()) + xs:dayTimeDuration(\"PT1H\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-027'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(false()) + xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P1Y1M\n      ",
   case xqerl_test:string_value(Res) of
             "P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-028'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(true()) + xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-029'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(false()) + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2M\n      ",
   case xqerl_test:string_value(Res) of
             "P2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-030'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(true()) + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-031'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(false()) + local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2D\n      ",
   case xqerl_test:string_value(Res) of
             "P2D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-plus-032'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(true()) + local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-033'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        declare function local:g($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(false()) + local:g(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-plus-034'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") };\n        declare function local:g($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(true()) + local:g(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
