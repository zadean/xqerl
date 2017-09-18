-module('op_time_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-time-less-than2args-1'/1]).
-export(['op-time-less-than2args-2'/1]).
-export(['op-time-less-than2args-3'/1]).
-export(['op-time-less-than2args-4'/1]).
-export(['op-time-less-than2args-5'/1]).
-export(['op-time-less-than2args-6'/1]).
-export(['op-time-less-than2args-7'/1]).
-export(['op-time-less-than2args-8'/1]).
-export(['op-time-less-than2args-9'/1]).
-export(['op-time-less-than2args-10'/1]).
-export(['op-time-less-than-1'/1]).
-export(['op-time-less-than-2'/1]).
-export(['op-time-less-than-3'/1]).
-export(['op-time-less-than-4'/1]).
-export(['op-time-less-than-5'/1]).
-export(['op-time-less-than-6'/1]).
-export(['op-time-less-than-7'/1]).
-export(['op-time-less-than-8'/1]).
-export(['op-time-less-than-9'/1]).
-export(['op-time-less-than-10'/1]).
-export(['op-time-less-than-11'/1]).
-export(['op-time-less-than-12'/1]).
-export(['op-time-less-than-13'/1]).
-export(['op-time-less-than-14'/1]).
-export(['K-TimeLT-1'/1]).
-export(['K-TimeLT-2'/1]).
-export(['K-TimeLT-3'/1]).
-export(['K-TimeLT-4'/1]).
-export(['K-TimeLT-5'/1]).
-export(['K-TimeLT-6'/1]).
-export(['cbcl-time-less-than-001'/1]).
-export(['cbcl-time-less-than-002'/1]).
-export(['cbcl-time-less-than-003'/1]).
-export(['cbcl-time-less-than-004'/1]).
-export(['cbcl-time-less-than-005'/1]).
-export(['cbcl-time-less-than-006'/1]).
-export(['cbcl-time-less-than-007'/1]).
-export(['cbcl-time-less-than-008'/1]).
-export(['cbcl-time-less-than-009'/1]).
-export(['cbcl-time-less-than-010'/1]).
-export(['cbcl-time-less-than-011'/1]).
-export(['cbcl-time-less-than-012'/1]).
-export(['cbcl-time-less-than-013'/1]).
-export(['cbcl-time-less-than-014'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-time-less-than2args-1',
   'op-time-less-than2args-2',
   'op-time-less-than2args-3',
   'op-time-less-than2args-4',
   'op-time-less-than2args-5',
   'op-time-less-than2args-6',
   'op-time-less-than2args-7',
   'op-time-less-than2args-8',
   'op-time-less-than2args-9',
   'op-time-less-than2args-10',
   'op-time-less-than-1',
   'op-time-less-than-2',
   'op-time-less-than-3',
   'op-time-less-than-4',
   'op-time-less-than-5',
   'op-time-less-than-6',
   'op-time-less-than-7',
   'op-time-less-than-8',
   'op-time-less-than-9',
   'op-time-less-than-10',
   'op-time-less-than-11',
   'op-time-less-than-12',
   'op-time-less-than-13',
   'op-time-less-than-14',
   'K-TimeLT-1',
   'K-TimeLT-2',
   'K-TimeLT-3',
   'K-TimeLT-4',
   'K-TimeLT-5',
   'K-TimeLT-6',
   'cbcl-time-less-than-001',
   'cbcl-time-less-than-002',
   'cbcl-time-less-than-003',
   'cbcl-time-less-than-004',
   'cbcl-time-less-than-005',
   'cbcl-time-less-than-006',
   'cbcl-time-less-than-007',
   'cbcl-time-less-than-008',
   'cbcl-time-less-than-009',
   'cbcl-time-less-than-010',
   'cbcl-time-less-than-011',
   'cbcl-time-less-than-012',
   'cbcl-time-less-than-013',
   'cbcl-time-less-than-014'].
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
'op-time-less-than2args-1'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") lt xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-2'(_Config) ->
   Qry = "xs:time(\"08:03:35Z\") lt xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-3'(_Config) ->
   Qry = "xs:time(\"23:59:59Z\") lt xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-4'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") lt xs:time(\"08:03:35Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-5'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") lt xs:time(\"23:59:59Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-6'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") ge xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-7'(_Config) ->
   Qry = "xs:time(\"08:03:35Z\") ge xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-8'(_Config) ->
   Qry = "xs:time(\"23:59:59Z\") ge xs:time(\"00:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-9'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") ge xs:time(\"08:03:35Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than2args-10'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") ge xs:time(\"23:59:59Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-1'(_Config) ->
   Qry = "(xs:time(\"12:00:00-05:00\") lt xs:time(\"23:00:00+06:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-2'(_Config) ->
   Qry = "xs:time(\"11:00:00-05:00\") lt xs:time(\"17:00:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-3'(_Config) ->
   Qry = "fn:not((xs:time(\"13:00:00Z\") lt xs:time(\"14:00:00Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-4'(_Config) ->
   Qry = "fn:not(xs:time(\"13:00:00Z\") le xs:time(\"14:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-5'(_Config) ->
   Qry = "fn:not(xs:time(\"13:00:00Z\") lt xs:time(\"10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-6'(_Config) ->
   Qry = "fn:not(xs:time(\"13:00:00Z\") le xs:time(\"12:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-7'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") lt xs:time(\"17:00:00Z\")) and (xs:time(\"13:00:00Z\") lt xs:time(\"17:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-8'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") le xs:time(\"17:00:00Z\")) and (xs:time(\"13:00:00Z\") le xs:time(\"17:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-9'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") lt xs:time(\"17:00:00Z\")) or (xs:time(\"13:00:00Z\") lt xs:time(\"17:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-10'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") le xs:time(\"17:00:00Z\")) or (xs:time(\"13:00:00Z\") le xs:time(\"17:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-11'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") lt xs:time(\"17:00:00Z\")) or (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-12'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") le xs:time(\"17:00:00Z\")) or (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-13'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") lt xs:time(\"17:00:00Z\")) or (fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-time-less-than-14'(_Config) ->
   Qry = "(xs:time(\"13:00:00Z\") le xs:time(\"17:00:00Z\")) or (fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeLT-1'(_Config) ->
   Qry = "xs:time(\"23:01:05.12\") gt xs:time(\"23:01:04.12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeLT-2'(_Config) ->
   Qry = "not(xs:time(\"23:01:03.12\") gt xs:time(\"23:01:04.12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeLT-3'(_Config) ->
   Qry = "not(xs:time(\"23:01:04.12\") gt xs:time(\"23:01:04.12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeLT-4'(_Config) ->
   Qry = "xs:time(\"23:01:04.12\") ge xs:time(\"23:01:04.12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeLT-5'(_Config) ->
   Qry = "xs:time(\"23:01:05.12\") ge xs:time(\"23:01:04.12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeLT-6'(_Config) ->
   Qry = "not(xs:time(\"23:01:03.12\") ge xs:time(\"23:01:04.12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-001'(_Config) ->
   Qry = "\n        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };\n        declare function local:time($hours as xs:integer, $mins as xs:integer, $seconds as xs:decimal) { let $h := local:two-digit($hours), $m := local:two-digit($mins) return xs:time(concat($h, ':', $m, ':', $seconds)) };\n        not(local:time(12, 59, 30) lt xs:time(\"12:32:05\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-002'(_Config) ->
   Qry = "xs:time(\"14:00:00-12:00\") lt xs:time(\"02:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-003'(_Config) ->
   Qry = "xs:time(\"02:00:00\") lt xs:time(\"14:00:00-12:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-004'(_Config) ->
   Qry = "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n            then xs:time(\"00:00:00\") lt xs:time(\"00:00:00+01:00\")\n            else xs:time(\"00:00:00+01:01\") lt xs:time(\"00:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-005'(_Config) ->
   Qry = "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n            then xs:time(\"00:00:00+01:00\") lt xs:time(\"00:00:00\")\n            else xs:time(\"00:00:00\") lt xs:time(\"00:00:00+01:01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-006'(_Config) ->
   Qry = "\n        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };\n        declare function local:time($hours as xs:integer, $mins as xs:integer, $seconds as xs:decimal) { let $h := local:two-digit($hours), $m := local:two-digit($mins) return xs:time(concat($h, ':', $m, ':', $seconds)) };\n        not(local:time(12, 59, 30) ge xs:time(\"12:32:05\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-007'(_Config) ->
   Qry = "xs:time(\"14:00:00-12:00\") ge xs:time(\"02:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-008'(_Config) ->
   Qry = "xs:time(\"02:00:00\") ge xs:time(\"14:00:00-12:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-009'(_Config) ->
   Qry = "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n            then xs:time(\"00:00:00\") ge xs:time(\"00:00:01+01:00\")  \n            else xs:time(\"00:00:00+01:01\") ge xs:time(\"00:00:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-010'(_Config) ->
   Qry = "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n            then xs:time(\"00:00:01+01:00\") ge xs:time(\"00:00:00\")\n            else xs:time(\"00:00:00\") ge xs:time(\"00:00:00+01:01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-011'(_Config) ->
   Qry = "\n        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n        exists(local:time(xs:time(\"23:58:00\"), fn:true()) lt xs:time(\"23:58:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-012'(_Config) ->
   Qry = "\n        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n        local:time(xs:time(\"23:58:00\"), fn:false()) lt xs:time(\"23:58:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-013'(_Config) ->
   Qry = "\n        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n        exists(local:time(xs:time(\"23:58:00\"), fn:true()) ge xs:time(\"23:58:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-time-less-than-014'(_Config) ->
   Qry = "\n        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n        local:time(xs:time(\"23:58:00\"), fn:false()) ge xs:time(\"23:58:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
