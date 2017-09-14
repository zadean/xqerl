-module('op_gMonth_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-gMonth-equal2args-1'/1]).
-export(['op-gMonth-equal2args-2'/1]).
-export(['op-gMonth-equal2args-3'/1]).
-export(['op-gMonth-equal2args-4'/1]).
-export(['op-gMonth-equal2args-5'/1]).
-export(['op-gMonth-equal2args-6'/1]).
-export(['op-gMonth-equal2args-7'/1]).
-export(['op-gMonth-equal2args-8'/1]).
-export(['op-gMonth-equal2args-9'/1]).
-export(['op-gMonth-equal2args-10'/1]).
-export(['op-gMonth-equal-2'/1]).
-export(['op-gMonth-equal-3'/1]).
-export(['op-gMonth-equal-4'/1]).
-export(['op-gMonth-equal-5'/1]).
-export(['op-gMonth-equal-6'/1]).
-export(['op-gMonth-equal-7'/1]).
-export(['op-gMonth-equal-8'/1]).
-export(['op-gMonth-equal-9'/1]).
-export(['op-gMonth-equal-10'/1]).
-export(['op-gMonth-equal-11'/1]).
-export(['op-gMonth-equal-12'/1]).
-export(['op-gMonth-equal-13'/1]).
-export(['op-gMonth-equal-14'/1]).
-export(['K-gMonthEQ-1'/1]).
-export(['K-gMonthEQ-2'/1]).
-export(['K-gMonthEQ-3'/1]).
-export(['K-gMonthEQ-4'/1]).
-export(['K-gMonthEQ-5'/1]).
-export(['K-gMonthEQ-6'/1]).
-export(['K-gMonthEQ-7'/1]).
-export(['K-gMonthEQ-8'/1]).
-export(['cbcl-gMonth-equal-001'/1]).
-export(['cbcl-gMonth-equal-002'/1]).
-export(['cbcl-gMonth-equal-003'/1]).
-export(['cbcl-gMonth-equal-004'/1]).
-export(['cbcl-gMonth-equal-005'/1]).
-export(['cbcl-gMonth-equal-006'/1]).
-export(['cbcl-gMonth-equal-007'/1]).
-export(['cbcl-gMonth-equal-008'/1]).
-export(['cbcl-gMonth-equal-009'/1]).
-export(['cbcl-gMonth-equal-010'/1]).
-export(['cbcl-gMonth-equal-011'/1]).
-export(['cbcl-gMonth-equal-012'/1]).
-export(['cbcl-gMonth-equal-013'/1]).
-export(['cbcl-gMonth-equal-014'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-gMonth-equal2args-1',
   'op-gMonth-equal2args-2',
   'op-gMonth-equal2args-3',
   'op-gMonth-equal2args-4',
   'op-gMonth-equal2args-5',
   'op-gMonth-equal2args-6',
   'op-gMonth-equal2args-7',
   'op-gMonth-equal2args-8',
   'op-gMonth-equal2args-9',
   'op-gMonth-equal2args-10',
   'op-gMonth-equal-2',
   'op-gMonth-equal-3',
   'op-gMonth-equal-4',
   'op-gMonth-equal-5',
   'op-gMonth-equal-6',
   'op-gMonth-equal-7',
   'op-gMonth-equal-8',
   'op-gMonth-equal-9',
   'op-gMonth-equal-10',
   'op-gMonth-equal-11',
   'op-gMonth-equal-12',
   'op-gMonth-equal-13',
   'op-gMonth-equal-14',
   'K-gMonthEQ-1',
   'K-gMonthEQ-2',
   'K-gMonthEQ-3',
   'K-gMonthEQ-4',
   'K-gMonthEQ-5',
   'K-gMonthEQ-6',
   'K-gMonthEQ-7',
   'K-gMonthEQ-8',
   'cbcl-gMonth-equal-001',
   'cbcl-gMonth-equal-002',
   'cbcl-gMonth-equal-003',
   'cbcl-gMonth-equal-004',
   'cbcl-gMonth-equal-005',
   'cbcl-gMonth-equal-006',
   'cbcl-gMonth-equal-007',
   'cbcl-gMonth-equal-008',
   'cbcl-gMonth-equal-009',
   'cbcl-gMonth-equal-010',
   'cbcl-gMonth-equal-011',
   'cbcl-gMonth-equal-012',
   'cbcl-gMonth-equal-013',
   'cbcl-gMonth-equal-014'].
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
'op-gMonth-equal2args-1'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-2'(_Config) ->
   Qry = "xs:gMonth(\"--07Z\") eq xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-3'(_Config) ->
   Qry = "xs:gMonth(\"--12Z\") eq xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-4'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--07Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-5'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-6'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") ne xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-7'(_Config) ->
   Qry = "xs:gMonth(\"--07Z\") ne xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-8'(_Config) ->
   Qry = "xs:gMonth(\"--12Z\") ne xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-9'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") ne xs:gMonth(\"--07Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal2args-10'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") ne xs:gMonth(\"--12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-2'(_Config) ->
   Qry = "(xs:gMonth(\"--12-05:00\") eq xs:gMonth(\"--12Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-3'(_Config) ->
   Qry = "fn:not((xs:gMonth(\"--12Z\") eq xs:gMonth(\"--12Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-4'(_Config) ->
   Qry = "fn:not(xs:gMonth(\"--05Z\") ne xs:gMonth(\"--06Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-5'(_Config) ->
   Qry = "fn:not(xs:gMonth(\"--11Z\") eq xs:gMonth(\"--10Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-6'(_Config) ->
   Qry = "fn:not(xs:gMonth(\"--05Z\") ne xs:gMonth(\"--05Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-7'(_Config) ->
   Qry = "(xs:gMonth(\"--04Z\") eq xs:gMonth(\"--02Z\")) and (xs:gMonth(\"--01Z\") eq xs:gMonth(\"--12Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-8'(_Config) ->
   Qry = "(xs:gMonth(\"--12Z\") ne xs:gMonth(\"--03Z\")) and (xs:gMonth(\"--05Z\") ne xs:gMonth(\"--08Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-9'(_Config) ->
   Qry = "(xs:gMonth(\"--02Z\") eq xs:gMonth(\"--02Z\")) or (xs:gMonth(\"--06Z\") eq xs:gMonth(\"--06Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-10'(_Config) ->
   Qry = "(xs:gMonth(\"--06Z\") ne xs:gMonth(\"--06Z\")) or (xs:gMonth(\"--08Z\") ne xs:gMonth(\"--09Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-11'(_Config) ->
   Qry = "(xs:gMonth(\"--03Z\") eq xs:gMonth(\"--01Z\")) or (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-12'(_Config) ->
   Qry = "(xs:gMonth(\"--08Z\") ne xs:gMonth(\"--07Z\")) or (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-13'(_Config) ->
   Qry = "(xs:gMonth(\"--05Z\") eq xs:gMonth(\"--05Z\")) or (fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-gMonth-equal-14'(_Config) ->
   Qry = "(xs:gMonth(\"--09Z\") ne xs:gMonth(\"--09Z\")) or (fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-1'(_Config) ->
   Qry = "xs:gMonth(\"--11 \") eq xs:gMonth(\"--11\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-2'(_Config) ->
   Qry = "not(xs:gMonth(\"--11\") eq xs:gMonth(\"--01\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-3'(_Config) ->
   Qry = "xs:gMonth(\"--12\") ne xs:gMonth(\"--10\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-4'(_Config) ->
   Qry = "not(xs:gMonth(\"--03\") ne xs:gMonth(\"--03\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-5'(_Config) ->
   Qry = "xs:gMonth(\"--01-00:00\") eq xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-6'(_Config) ->
   Qry = "xs:gMonth(\"--01+00:00\") eq xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-7'(_Config) ->
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-gMonthEQ-8'(_Config) ->
   Qry = "xs:gMonth(\"--01-00:00\") eq xs:gMonth(\"--01+00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-001'(_Config) ->
   Qry = "declare function local:gMonth($month as xs:integer) { if ($month lt 10) then xs:gMonth(concat(\"--0\", $month)) else xs:gMonth(concat(\"--\", $month)) }; not(local:gMonth(1) eq xs:gMonth(\"--06\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-002'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06\") eq xs:gMonth(\"--06+09:01\")
            else xs:gMonth(\"--06\") eq xs:gMonth(\"--06+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-003'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06+09:01\") eq xs:gMonth(\"--06\")
            else xs:gMonth(\"--06+09:00\") eq xs:gMonth(\"--06\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-004'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06\") eq xs:gMonth(\"--06-09:01\")
            else xs:gMonth(\"--06\") eq xs:gMonth(\"--06-09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-005'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06-09:01\") eq xs:gMonth(\"--06\")
            else xs:gMonth(\"--06-09:00\") eq xs:gMonth(\"--06\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-006'(_Config) ->
   Qry = "declare function local:gMonth($month as xs:integer) { if ($month lt 10) then xs:gMonth(concat(\"--0\", $month)) else xs:gMonth(concat(\"--\", $month)) }; not(local:gMonth(1) ne xs:gMonth(\"--06\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-007'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06\") ne xs:gMonth(\"--06+09:01\")
            else xs:gMonth(\"--06\") ne xs:gMonth(\"--06+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-008'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06+09:01\") ne xs:gMonth(\"--06\")
            else xs:gMonth(\"--06+09:00\") ne xs:gMonth(\"--06\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-009'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06\") ne xs:gMonth(\"--06-09:01\")
            else xs:gMonth(\"--06\") ne xs:gMonth(\"--06-09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-010'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06-09:01\") ne xs:gMonth(\"--06\")
            else xs:gMonth(\"--06-09:00\") ne xs:gMonth(\"--06\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-011'(_Config) ->
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; exists(local:gMonth(xs:gMonth(\"--12\"), fn:true()) eq xs:gMonth(\"--12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-012'(_Config) ->
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; local:gMonth(xs:gMonth(\"--12\"), fn:false()) eq xs:gMonth(\"--12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-013'(_Config) ->
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; exists(local:gMonth(xs:gMonth(\"--12\"), fn:true()) ne xs:gMonth(\"--12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-gMonth-equal-014'(_Config) ->
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; local:gMonth(xs:gMonth(\"--12\"), fn:false()) ne xs:gMonth(\"--12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
