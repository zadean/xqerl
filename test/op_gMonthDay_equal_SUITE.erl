-module('op_gMonthDay_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-gMonthDay-equal2args-1'/1]).
-export(['op-gMonthDay-equal2args-2'/1]).
-export(['op-gMonthDay-equal2args-3'/1]).
-export(['op-gMonthDay-equal2args-4'/1]).
-export(['op-gMonthDay-equal2args-5'/1]).
-export(['op-gMonthDay-equal2args-6'/1]).
-export(['op-gMonthDay-equal2args-7'/1]).
-export(['op-gMonthDay-equal2args-8'/1]).
-export(['op-gMonthDay-equal2args-9'/1]).
-export(['op-gMonthDay-equal2args-10'/1]).
-export(['op-gMonthDay-equal-2'/1]).
-export(['op-gMonthDay-equal-3'/1]).
-export(['op-gMonthDay-equal-4'/1]).
-export(['op-gMonthDay-equal-5'/1]).
-export(['op-gMonthDay-equal-6'/1]).
-export(['op-gMonthDay-equal-7'/1]).
-export(['op-gMonthDay-equal-8'/1]).
-export(['op-gMonthDay-equal-9'/1]).
-export(['op-gMonthDay-equal-10'/1]).
-export(['op-gMonthDay-equal-11'/1]).
-export(['op-gMonthDay-equal-12'/1]).
-export(['op-gMonthDay-equal-13'/1]).
-export(['op-gMonthDay-equal-14'/1]).
-export(['K-gMonthDayEQ-1'/1]).
-export(['K-gMonthDayEQ-2'/1]).
-export(['K-gMonthDayEQ-3'/1]).
-export(['K-gMonthDayEQ-4'/1]).
-export(['K-gMonthDayEQ-5'/1]).
-export(['K-gMonthDayEQ-6'/1]).
-export(['K-gMonthDayEQ-7'/1]).
-export(['K-gMonthDayEQ-8'/1]).
-export(['cbcl-gMonthDay-equal-001'/1]).
-export(['cbcl-gMonthDay-equal-002'/1]).
-export(['cbcl-gMonthDay-equal-003'/1]).
-export(['cbcl-gMonthDay-equal-004'/1]).
-export(['cbcl-gMonthDay-equal-005'/1]).
-export(['cbcl-gMonthDay-equal-006'/1]).
-export(['cbcl-gMonthDay-equal-007'/1]).
-export(['cbcl-gMonthDay-equal-008'/1]).
-export(['cbcl-gMonthDay-equal-009'/1]).
-export(['cbcl-gMonthDay-equal-010'/1]).
-export(['cbcl-gMonthDay-equal-011'/1]).
-export(['cbcl-gMonthDay-equal-012'/1]).
-export(['cbcl-gMonthDay-equal-013'/1]).
-export(['cbcl-gMonthDay-equal-014'/1]).
-export(['cbcl-gMonthDay-equal-015'/1]).
-export(['cbcl-gMonthDay-equal-016'/1]).
-export(['cbcl-gMonthDay-equal-017'/1]).
-export(['cbcl-gMonthDay-equal-018'/1]).
-export(['cbcl-gMonthDay-equal-019'/1]).
-export(['cbcl-gMonthDay-equal-020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-gMonthDay-equal2args-1',
   'op-gMonthDay-equal2args-2',
   'op-gMonthDay-equal2args-3',
   'op-gMonthDay-equal2args-4',
   'op-gMonthDay-equal2args-5',
   'op-gMonthDay-equal2args-6',
   'op-gMonthDay-equal2args-7',
   'op-gMonthDay-equal2args-8',
   'op-gMonthDay-equal2args-9',
   'op-gMonthDay-equal2args-10',
   'op-gMonthDay-equal-2',
   'op-gMonthDay-equal-3',
   'op-gMonthDay-equal-4',
   'op-gMonthDay-equal-5',
   'op-gMonthDay-equal-6',
   'op-gMonthDay-equal-7',
   'op-gMonthDay-equal-8',
   'op-gMonthDay-equal-9',
   'op-gMonthDay-equal-10',
   'op-gMonthDay-equal-11',
   'op-gMonthDay-equal-12',
   'op-gMonthDay-equal-13',
   'op-gMonthDay-equal-14',
   'K-gMonthDayEQ-1',
   'K-gMonthDayEQ-2',
   'K-gMonthDayEQ-3',
   'K-gMonthDayEQ-4',
   'K-gMonthDayEQ-5',
   'K-gMonthDayEQ-6',
   'K-gMonthDayEQ-7',
   'K-gMonthDayEQ-8',
   'cbcl-gMonthDay-equal-001',
   'cbcl-gMonthDay-equal-002',
   'cbcl-gMonthDay-equal-003',
   'cbcl-gMonthDay-equal-004',
   'cbcl-gMonthDay-equal-005',
   'cbcl-gMonthDay-equal-006',
   'cbcl-gMonthDay-equal-007',
   'cbcl-gMonthDay-equal-008',
   'cbcl-gMonthDay-equal-009',
   'cbcl-gMonthDay-equal-010',
   'cbcl-gMonthDay-equal-011',
   'cbcl-gMonthDay-equal-012',
   'cbcl-gMonthDay-equal-013',
   'cbcl-gMonthDay-equal-014',
   'cbcl-gMonthDay-equal-015',
   'cbcl-gMonthDay-equal-016',
   'cbcl-gMonthDay-equal-017',
   'cbcl-gMonthDay-equal-018',
   'cbcl-gMonthDay-equal-019',
   'cbcl-gMonthDay-equal-020'].
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
'op-gMonthDay-equal2args-1'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-01Z\") eq xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-2'(_Config) ->
   Qry = "xs:gMonthDay(\"--04-10Z\") eq xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-3'(_Config) ->
   Qry = "xs:gMonthDay(\"--12-31Z\") eq xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-4'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-01Z\") eq xs:gMonthDay(\"--04-10Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-5'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-01Z\") eq xs:gMonthDay(\"--12-31Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-6'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-01Z\") ne xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-7'(_Config) ->
   Qry = "xs:gMonthDay(\"--04-10Z\") ne xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-8'(_Config) ->
   Qry = "xs:gMonthDay(\"--12-31Z\") ne xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-9'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-01Z\") ne xs:gMonthDay(\"--04-10Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal2args-10'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-01Z\") ne xs:gMonthDay(\"--12-31Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-2'(_Config) ->
   Qry = "(xs:gMonthDay(\"--12-25Z\") eq xs:gMonthDay(\"--12-26Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-3'(_Config) ->
   Qry = "fn:not((xs:gMonthDay(\"--12-10Z\") eq xs:gMonthDay(\"--12-10Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-4'(_Config) ->
   Qry = "fn:not(xs:gMonthDay(\"--05-01Z\") ne xs:gMonthDay(\"--06-12Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-5'(_Config) ->
   Qry = "fn:not(xs:gMonthDay(\"--11-10Z\") eq xs:gMonthDay(\"--10-02Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-6'(_Config) ->
   Qry = "fn:not(xs:gMonthDay(\"--05-10Z\") ne xs:gMonthDay(\"--05-10Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-7'(_Config) ->
   Qry = "(xs:gMonthDay(\"--04-02Z\") eq xs:gMonthDay(\"--02-03Z\")) and (xs:gMonthDay(\"--01-07Z\") eq xs:gMonthDay(\"--12-10Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-8'(_Config) ->
   Qry = "(xs:gMonthDay(\"--12-10Z\") ne xs:gMonthDay(\"--03-11Z\")) and (xs:gMonthDay(\"--05-12Z\") ne xs:gMonthDay(\"--08-08Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-9'(_Config) ->
   Qry = "(xs:gMonthDay(\"--02-01Z\") eq xs:gMonthDay(\"--02-10Z\")) or (xs:gMonthDay(\"--06-02Z\") eq xs:gMonthDay(\"--06-03Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-10'(_Config) ->
   Qry = "(xs:gMonthDay(\"--06-02Z\") ne xs:gMonthDay(\"--06-09Z\")) or (xs:gMonthDay(\"--08-06Z\") ne xs:gMonthDay(\"--09-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-11'(_Config) ->
   Qry = "(xs:gMonthDay(\"--03-04Z\") eq xs:gMonthDay(\"--01-07Z\")) or (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-12'(_Config) ->
   Qry = "(xs:gMonthDay(\"--08-04Z\") ne xs:gMonthDay(\"--07-12Z\")) or (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-13'(_Config) ->
   Qry = "(xs:gMonthDay(\"--05-05Z\") eq xs:gMonthDay(\"--05-05Z\")) or (fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonthDay-equal-14'(_Config) ->
   Qry = "(xs:gMonthDay(\"--09-09Z\") ne xs:gMonthDay(\"--09-10Z\")) or (fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-1'(_Config) ->
   Qry = "xs:gMonthDay(\"--04-01 \") eq xs:gMonthDay(\"--04-01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-2'(_Config) ->
   Qry = "not(xs:gMonthDay(\"--03-03\") eq xs:gMonthDay(\"--04-03\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-3'(_Config) ->
   Qry = "xs:gMonthDay(\"--04-12\") ne xs:gMonthDay(\"--04-11\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-4'(_Config) ->
   Qry = "not(xs:gMonthDay(\"--04-11\") ne xs:gMonthDay(\"--04-11\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-5'(_Config) ->
   Qry = "xs:gMonthDay(\"--03-01-00:00\") eq xs:gMonthDay(\"--03-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-6'(_Config) ->
   Qry = "xs:gMonthDay(\"--03-01+00:00\") eq xs:gMonthDay(\"--03-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-7'(_Config) ->
   Qry = "xs:gMonthDay(\"--03-01Z\") eq xs:gMonthDay(\"--03-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthDayEQ-8'(_Config) ->
   Qry = "xs:gMonthDay(\"--03-01-00:00\") eq xs:gMonthDay(\"--03-01+00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-001'(_Config) ->
   Qry = "declare function local:gMonthDay($day as xs:integer) { if ($day lt 10) then xs:gMonthDay(concat(\"--12-0\", $day)) else xs:gMonthDay(concat(\"--12-\", $day)) }; not(local:gMonthDay(1) eq xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-002'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+09:01\")
            else xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-003'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-31+09:01\") eq xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31+09:00\") eq xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-004'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31-09:01\")
            else xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31-09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-005'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-31-09:01\") eq xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31-09:00\") eq xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-006'(_Config) ->
   Qry = "declare function local:gMonthDay($day as xs:integer) { if ($day lt 10) then xs:gMonthDay(concat(\"--12-0\", $day)) else xs:gMonthDay(concat(\"--12-\", $day)) }; not(local:gMonthDay(1) ne xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-007'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31+09:01\")
            else xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-008'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-31+09:01\") ne xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31+09:00\") ne xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-009'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31-09:01\")
            else xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31-09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-010'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-31-09:01\") ne xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31-09:00\") ne xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-011'(_Config) ->
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; exists(local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:true()) eq xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-012'(_Config) ->
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:false()) eq xs:gMonthDay(\"--12-31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-013'(_Config) ->
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; exists(local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:true()) ne xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-014'(_Config) ->
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:false()) ne xs:gMonthDay(\"--12-31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-015'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-30-12:00\") eq xs:gMonthDay(\"--01-31+12:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-016'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-31+12:00\") eq xs:gMonthDay(\"--01-30-12:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-017'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-30-12:00\") ne xs:gMonthDay(\"--01-31+12:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-018'(_Config) ->
   Qry = "xs:gMonthDay(\"--01-31+12:00\") ne xs:gMonthDay(\"--01-30-12:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-019'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1M'))
            then xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+01:01\")
            else xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+01:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonthDay-equal-020'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1M'))
            then xs:gMonthDay(\"--12-31+01:01\") eq xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31+01:00\") eq xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
