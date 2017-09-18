-module('math_atan2_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['math-atan2-001'/1]).
-export(['math-atan2-002'/1]).
-export(['math-atan2-003'/1]).
-export(['math-atan2-004'/1]).
-export(['math-atan2-005'/1]).
-export(['math-atan2-006'/1]).
-export(['math-atan2-007'/1]).
-export(['math-atan2-008'/1]).
-export(['math-atan2-009'/1]).
-export(['math-atan2-010'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'math-atan2-001',
   'math-atan2-002',
   'math-atan2-003',
   'math-atan2-004',
   'math-atan2-005',
   'math-atan2-006',
   'math-atan2-007',
   'math-atan2-008',
   'math-atan2-009',
   'math-atan2-010'].
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
'math-atan2-001'(_Config) ->
   Qry = "math:atan2(+0.0e0, 0.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            0.0e0\n        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-atan2-002'(_Config) ->
   Qry = "math:atan2(-0.0e0, 0.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            -0.0e0\n        ",
 Tst = xqerl:run("-0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-atan2-003'(_Config) ->
   Qry = "math:atan2(+0.0e0, -0.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            abs($result - 3.141592653589793e0) lt 1e-14\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result - 3.141592653589793e0) lt 1e-14",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'math-atan2-004'(_Config) ->
   Qry = "math:atan2(-0.0e0, -0.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            abs($result + 3.141592653589793e0) lt 1e-14\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result + 3.141592653589793e0) lt 1e-14",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'math-atan2-005'(_Config) ->
   Qry = "math:atan2(-1, -0.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            abs($result + 1.5707963267948966e0) lt 1e-14\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result + 1.5707963267948966e0) lt 1e-14",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'math-atan2-006'(_Config) ->
   Qry = "math:atan2(+1, 0.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            abs($result - 1.5707963267948966e0) lt 1e-14\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result - 1.5707963267948966e0) lt 1e-14",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'math-atan2-007'(_Config) ->
   Qry = "math:atan2(-0.0e0, -1)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            abs($result + 3.141592653589793e0) lt 1e-14\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result + 3.141592653589793e0) lt 1e-14",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'math-atan2-008'(_Config) ->
   Qry = "math:atan2(+0.0e0, -1)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            abs($result - 3.141592653589793e0) lt 1e-14\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result - 3.141592653589793e0) lt 1e-14",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'math-atan2-009'(_Config) ->
   Qry = "math:atan2(-0.0e0, +1)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            -0.0e0\n        ",
 Tst = xqerl:run("-0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-atan2-010'(_Config) ->
   Qry = "math:atan2(+0.0e0, +1)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            +0.0e0\n        ",
 Tst = xqerl:run("+0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
