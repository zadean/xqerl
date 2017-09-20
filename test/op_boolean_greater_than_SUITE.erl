-module('op_boolean_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-boolean-greater-than2args-1'/1]).
-export(['op-boolean-greater-than2args-2'/1]).
-export(['op-boolean-greater-than2args-3'/1]).
-export(['op-boolean-greater-than2args-4'/1]).
-export(['op-boolean-greater-than2args-5'/1]).
-export(['op-boolean-greater-than2args-6'/1]).
-export(['op-boolean-greater-than2args-7'/1]).
-export(['op-boolean-greater-than2args-8'/1]).
-export(['op-boolean-greater-than2args-9'/1]).
-export(['op-boolean-greater-than2args-10'/1]).
-export(['op-boolean-greater-than-1'/1]).
-export(['op-boolean-greater-than-2'/1]).
-export(['op-boolean-greater-than-3'/1]).
-export(['op-boolean-greater-than-4'/1]).
-export(['op-boolean-greater-than-5'/1]).
-export(['op-boolean-greater-than-6'/1]).
-export(['op-boolean-greater-than-7'/1]).
-export(['op-boolean-greater-than-8'/1]).
-export(['op-boolean-greater-than-9'/1]).
-export(['op-boolean-greater-than-10'/1]).
-export(['op-boolean-greater-than-11'/1]).
-export(['op-boolean-greater-than-12'/1]).
-export(['op-boolean-greater-than-more-args-001'/1]).
-export(['op-boolean-greater-than-more-args-002'/1]).
-export(['op-boolean-greater-than-more-args-003'/1]).
-export(['op-boolean-greater-than-more-args-004'/1]).
-export(['op-boolean-greater-than-more-args-005'/1]).
-export(['op-boolean-greater-than-more-args-006'/1]).
-export(['op-boolean-greater-than-more-args-007'/1]).
-export(['op-boolean-greater-than-more-args-008'/1]).
-export(['op-boolean-greater-than-more-args-009'/1]).
-export(['op-boolean-greater-than-more-args-010'/1]).
-export(['op-boolean-greater-than-more-args-011'/1]).
-export(['op-boolean-greater-than-more-args-012'/1]).
-export(['op-boolean-greater-than-more-args-013'/1]).
-export(['op-boolean-greater-than-more-args-014'/1]).
-export(['K-BooleanGT-1'/1]).
-export(['K-BooleanGT-2'/1]).
-export(['K-BooleanGT-3'/1]).
-export(['cbcl-boolean-greater-than-001'/1]).
-export(['cbcl-boolean-greater-than-002'/1]).
-export(['cbcl-boolean-greater-than-003'/1]).
-export(['cbcl-boolean-greater-than-004'/1]).
-export(['cbcl-boolean-greater-than-005'/1]).
-export(['cbcl-boolean-greater-than-006'/1]).
-export(['cbcl-boolean-greater-than-007'/1]).
-export(['cbcl-boolean-greater-than-008'/1]).
-export(['cbcl-boolean-greater-than-009'/1]).
-export(['cbcl-boolean-greater-than-010'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-boolean-greater-than2args-1',
   'op-boolean-greater-than2args-2',
   'op-boolean-greater-than2args-3',
   'op-boolean-greater-than2args-4',
   'op-boolean-greater-than2args-5',
   'op-boolean-greater-than2args-6',
   'op-boolean-greater-than2args-7',
   'op-boolean-greater-than2args-8',
   'op-boolean-greater-than2args-9',
   'op-boolean-greater-than2args-10',
   'op-boolean-greater-than-1',
   'op-boolean-greater-than-2',
   'op-boolean-greater-than-3',
   'op-boolean-greater-than-4',
   'op-boolean-greater-than-5',
   'op-boolean-greater-than-6',
   'op-boolean-greater-than-7',
   'op-boolean-greater-than-8',
   'op-boolean-greater-than-9',
   'op-boolean-greater-than-10',
   'op-boolean-greater-than-11',
   'op-boolean-greater-than-12',
   'op-boolean-greater-than-more-args-001',
   'op-boolean-greater-than-more-args-002',
   'op-boolean-greater-than-more-args-003',
   'op-boolean-greater-than-more-args-004',
   'op-boolean-greater-than-more-args-005',
   'op-boolean-greater-than-more-args-006',
   'op-boolean-greater-than-more-args-007',
   'op-boolean-greater-than-more-args-008',
   'op-boolean-greater-than-more-args-009',
   'op-boolean-greater-than-more-args-010',
   'op-boolean-greater-than-more-args-011',
   'op-boolean-greater-than-more-args-012',
   'op-boolean-greater-than-more-args-013',
   'op-boolean-greater-than-more-args-014',
   'K-BooleanGT-1',
   'K-BooleanGT-2',
   'K-BooleanGT-3',
   'cbcl-boolean-greater-than-001',
   'cbcl-boolean-greater-than-002',
   'cbcl-boolean-greater-than-003',
   'cbcl-boolean-greater-than-004',
   'cbcl-boolean-greater-than-005',
   'cbcl-boolean-greater-than-006',
   'cbcl-boolean-greater-than-007',
   'cbcl-boolean-greater-than-008',
   'cbcl-boolean-greater-than-009',
   'cbcl-boolean-greater-than-010'].
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
'op-boolean-greater-than2args-1'(_Config) ->
   Qry = "xs:boolean(\"false\") gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-2'(_Config) ->
   Qry = "xs:boolean(\"1\") gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-3'(_Config) ->
   Qry = "xs:boolean(\"0\") gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-4'(_Config) ->
   Qry = "xs:boolean(\"false\") gt xs:boolean(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-5'(_Config) ->
   Qry = "xs:boolean(\"false\") gt xs:boolean(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-6'(_Config) ->
   Qry = "xs:boolean(\"false\") le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-7'(_Config) ->
   Qry = "xs:boolean(\"1\") le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-8'(_Config) ->
   Qry = "xs:boolean(\"0\") le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-9'(_Config) ->
   Qry = "xs:boolean(\"false\") le xs:boolean(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than2args-10'(_Config) ->
   Qry = "xs:boolean(\"false\") le xs:boolean(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-1'(_Config) ->
   Qry = "fn:not(xs:boolean(\"true\")) gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-2'(_Config) ->
   Qry = "fn:not(xs:boolean(\"true\")) le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-3'(_Config) ->
   Qry = "fn:not(xs:boolean(\"true\")) gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-4'(_Config) ->
   Qry = "fn:not(xs:boolean(\"true\")) le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-5'(_Config) ->
   Qry = "fn:not(xs:boolean(\"false\")) gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-6'(_Config) ->
   Qry = "fn:not(xs:boolean(\"false\")) le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-7'(_Config) ->
   Qry = "fn:not(xs:boolean(\"false\")) gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-8'(_Config) ->
   Qry = "fn:not(xs:boolean(\"false\")) le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-9'(_Config) ->
   Qry = "(7 eq 7) gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-10'(_Config) ->
   Qry = "(7 eq 7) le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-11'(_Config) ->
   Qry = "(7 eq 7) gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-12'(_Config) ->
   Qry = "(7 eq 7) le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-001'(_Config) ->
   Qry = "xs:boolean(\"true\") gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-002'(_Config) ->
   Qry = "xs:boolean(\"1\") gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-003'(_Config) ->
   Qry = "xs:boolean(\"0\") gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-004'(_Config) ->
   Qry = "xs:boolean(\"true\") gt xs:boolean(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-005'(_Config) ->
   Qry = "xs:boolean(\"true\") gt xs:boolean(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-006'(_Config) ->
   Qry = "xs:boolean(\"true\") gt xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-007'(_Config) ->
   Qry = "xs:boolean(\"false\") gt xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-008'(_Config) ->
   Qry = "xs:boolean(\"true\") le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-009'(_Config) ->
   Qry = "xs:boolean(\"1\") le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-010'(_Config) ->
   Qry = "xs:boolean(\"0\") le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-011'(_Config) ->
   Qry = "xs:boolean(\"true\") le xs:boolean(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-012'(_Config) ->
   Qry = "xs:boolean(\"true\") le xs:boolean(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-013'(_Config) ->
   Qry = "xs:boolean(\"true\") le xs:boolean(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-boolean-greater-than-more-args-014'(_Config) ->
   Qry = "xs:boolean(\"false\") le xs:boolean(\"true\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-BooleanGT-1'(_Config) ->
   Qry = "true() gt false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-BooleanGT-2'(_Config) ->
   Qry = "true() ge false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-BooleanGT-3'(_Config) ->
   Qry = "true() ge true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-001'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      not(local:is-even(15) ge local:is-even(17))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-002'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      fn:true() ge local:is-even(17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-003'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      fn:false() ge local:is-even(17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-004'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      not(local:is-even(15) gt local:is-even(17))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-005'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      fn:true() gt local:is-even(17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-006'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      fn:false() gt local:is-even(17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-007'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      local:is-even(17) ge fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-008'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      local:is-even(17) ge fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-009'(_Config) ->
   Qry = "declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      local:is-even(17) gt fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-boolean-greater-than-010'(_Config) ->
   Qry = "
      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; 
      local:is-even(17) gt fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
