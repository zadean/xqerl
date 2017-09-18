-module('op_date_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-date-equal2args-1'/1]).
-export(['op-date-equal2args-2'/1]).
-export(['op-date-equal2args-3'/1]).
-export(['op-date-equal2args-4'/1]).
-export(['op-date-equal2args-5'/1]).
-export(['op-date-equal2args-6'/1]).
-export(['op-date-equal2args-7'/1]).
-export(['op-date-equal2args-8'/1]).
-export(['op-date-equal2args-9'/1]).
-export(['op-date-equal2args-10'/1]).
-export(['op-date-equal2args-11'/1]).
-export(['op-date-equal2args-12'/1]).
-export(['op-date-equal2args-13'/1]).
-export(['op-date-equal2args-14'/1]).
-export(['op-date-equal2args-15'/1]).
-export(['op-date-equal2args-16'/1]).
-export(['op-date-equal2args-17'/1]).
-export(['op-date-equal2args-18'/1]).
-export(['op-date-equal2args-19'/1]).
-export(['op-date-equal2args-20'/1]).
-export(['K-DateEQ-1'/1]).
-export(['K-DateEQ-2'/1]).
-export(['K-DateEQ-3'/1]).
-export(['K-DateEQ-4'/1]).
-export(['K-DateEQ-5'/1]).
-export(['K-DateEQ-6'/1]).
-export(['K-DateEQ-7'/1]).
-export(['K-DateEQ-8'/1]).
-export(['K2-DateEQ-1'/1]).
-export(['cbcl-date-eq-001'/1]).
-export(['cbcl-date-ne-001'/1]).
-export(['cbcl-date-equal-001'/1]).
-export(['cbcl-date-equal-002'/1]).
-export(['cbcl-date-equal-003'/1]).
-export(['cbcl-date-equal-004'/1]).
-export(['cbcl-date-equal-005'/1]).
-export(['cbcl-date-equal-006'/1]).
-export(['cbcl-date-equal-007'/1]).
-export(['cbcl-date-equal-008'/1]).
-export(['cbcl-date-equal-009'/1]).
-export(['cbcl-date-equal-010'/1]).
-export(['cbcl-date-equal-011'/1]).
-export(['cbcl-date-equal-012'/1]).
-export(['cbcl-date-equal-013'/1]).
-export(['cbcl-date-equal-014'/1]).
-export(['cbcl-date-equal-015'/1]).
-export(['cbcl-date-equal-016'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-date-equal2args-1',
   'op-date-equal2args-2',
   'op-date-equal2args-3',
   'op-date-equal2args-4',
   'op-date-equal2args-5',
   'op-date-equal2args-6',
   'op-date-equal2args-7',
   'op-date-equal2args-8',
   'op-date-equal2args-9',
   'op-date-equal2args-10',
   'op-date-equal2args-11',
   'op-date-equal2args-12',
   'op-date-equal2args-13',
   'op-date-equal2args-14',
   'op-date-equal2args-15',
   'op-date-equal2args-16',
   'op-date-equal2args-17',
   'op-date-equal2args-18',
   'op-date-equal2args-19',
   'op-date-equal2args-20',
   'K-DateEQ-1',
   'K-DateEQ-2',
   'K-DateEQ-3',
   'K-DateEQ-4',
   'K-DateEQ-5',
   'K-DateEQ-6',
   'K-DateEQ-7',
   'K-DateEQ-8',
   'K2-DateEQ-1',
   'cbcl-date-eq-001',
   'cbcl-date-ne-001',
   'cbcl-date-equal-001',
   'cbcl-date-equal-002',
   'cbcl-date-equal-003',
   'cbcl-date-equal-004',
   'cbcl-date-equal-005',
   'cbcl-date-equal-006',
   'cbcl-date-equal-007',
   'cbcl-date-equal-008',
   'cbcl-date-equal-009',
   'cbcl-date-equal-010',
   'cbcl-date-equal-011',
   'cbcl-date-equal-012',
   'cbcl-date-equal-013',
   'cbcl-date-equal-014',
   'cbcl-date-equal-015',
   'cbcl-date-equal-016'].
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
'op-date-equal2args-1'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") eq xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-2'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") eq xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-3'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") eq xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-4'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") eq xs:date(\"1983-11-17Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-5'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") eq xs:date(\"2030-12-31Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-6'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") ne xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-7'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") ne xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-8'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") ne xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-9'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") ne xs:date(\"1983-11-17Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-10'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") ne xs:date(\"2030-12-31Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-11'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") le xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-12'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") le xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-13'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") le xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-14'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") le xs:date(\"1983-11-17Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-15'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") le xs:date(\"2030-12-31Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-16'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") ge xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-17'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") ge xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-18'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") ge xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-19'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") ge xs:date(\"1983-11-17Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-date-equal2args-20'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") ge xs:date(\"2030-12-31Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-1'(_Config) ->
   Qry = "xs:date(\"2004-08-12\") eq xs:date(\"2004-08-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-2'(_Config) ->
   Qry = "not(xs:date(\"2004-08-12\") eq xs:date(\"2003-08-12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-3'(_Config) ->
   Qry = "xs:date(\"2004-08-12\") ne xs:date(\"2004-07-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-4'(_Config) ->
   Qry = "not(xs:date(\"2004-07-12\") ne xs:date(\"2004-07-12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-5'(_Config) ->
   Qry = "xs:date(\"1999-12-04-00:00\") eq xs:date(\"1999-12-04Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-6'(_Config) ->
   Qry = "xs:date(\"1999-12-04+00:00\") eq xs:date(\"1999-12-04Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-7'(_Config) ->
   Qry = "xs:date(\"1999-12-04Z\") eq xs:date(\"1999-12-04Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateEQ-8'(_Config) ->
   Qry = "xs:date(\"1999-12-04-00:00\") eq xs:date(\"1999-12-04+00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DateEQ-1'(_Config) ->
   Qry = "xs:time(\"01:01:01-03:00\") ne xs:time(\"01:01:01+03:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-eq-001'(_Config) ->
   Qry = "xs:date(\"-25252734927766555-06-07+02:00\") = xs:date(\"25252734927766555-07-28\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n           \n           \n           \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-date-ne-001'(_Config) ->
   Qry = "xs:date(\"25252734927766555-07-28\") != xs:date(\"-25252734927766555-06-07+02:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n           \n           \n          \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-date-equal-001'(_Config) ->
   Qry = "declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; not(local:date(2008, 05, 12) eq xs:date(\"1972-12-15\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-002'(_Config) ->
   Qry = "xs:date(\"2008-01-30\") eq xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-003'(_Config) ->
   Qry = "xs:date(\"2008-01-31+09:00\") eq xs:date(\"2008-01-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-004'(_Config) ->
   Qry = "xs:date(\"2008-01-31\") eq xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-005'(_Config) ->
   Qry = "xs:date(\"2008-01-31+09:00\") eq xs:date(\"2008-01-31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-006'(_Config) ->
   Qry = "declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; not(local:date(2008, 05, 12) ne xs:date(\"1972-12-15\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-007'(_Config) ->
   Qry = "xs:date(\"2008-01-30\") ne xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-008'(_Config) ->
   Qry = "xs:date(\"2008-01-31+09:00\") ne xs:date(\"2008-01-30\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-009'(_Config) ->
   Qry = "xs:date(\"2008-01-31\") ne xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-010'(_Config) ->
   Qry = "xs:date(\"2008-01-31+09:00\") ne xs:date(\"2008-01-31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-011'(_Config) ->
   Qry = "declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; exists(local:date(xs:date(\"1972-12-15\"), fn:true()) eq xs:date(\"1972-12-15\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-012'(_Config) ->
   Qry = "declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; local:date(xs:date(\"1972-12-15\"), fn:false()) eq xs:date(\"1972-12-15\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-013'(_Config) ->
   Qry = "declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; exists(local:date(xs:date(\"1972-12-15\"), fn:true()) ne xs:date(\"1972-12-15\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-014'(_Config) ->
   Qry = "declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; local:date(xs:date(\"1972-12-15\"), fn:false()) ne xs:date(\"1972-12-15\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-015'(_Config) ->
   Qry = "declare function local:date($date as xs:string, $timezone as xs:string) { xs:date( concat($date, $timezone) ) }; adjust-date-to-timezone(local:date(\"1972-12-14\", \"-12:00\")) eq adjust-date-to-timezone(xs:date(\"1972-12-15+12:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-date-equal-016'(_Config) ->
   Qry = "declare function local:date($date as xs:string, $timezone as xs:string) { xs:date( concat($date, $timezone) ) }; adjust-date-to-timezone(local:date(\"1972-12-14\", \"-12:00\")) ne adjust-date-to-timezone(xs:date(\"1972-12-15+12:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
