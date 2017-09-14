-module('math_pow_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['math-pow-001'/1]).
-export(['math-pow-002'/1]).
-export(['math-pow-003'/1]).
-export(['math-pow-004'/1]).
-export(['math-pow-005'/1]).
-export(['math-pow-006'/1]).
-export(['math-pow-007'/1]).
-export(['math-pow-008'/1]).
-export(['math-pow-009'/1]).
-export(['math-pow-010'/1]).
-export(['math-pow-011'/1]).
-export(['math-pow-012'/1]).
-export(['math-pow-013'/1]).
-export(['math-pow-014'/1]).
-export(['math-pow-015'/1]).
-export(['math-pow-016'/1]).
-export(['math-pow-017'/1]).
-export(['math-pow-018'/1]).
-export(['math-pow-019'/1]).
-export(['math-pow-020'/1]).
-export(['math-pow-021'/1]).
-export(['math-pow-022'/1]).
-export(['math-pow-023'/1]).
-export(['math-pow-024'/1]).
-export(['math-pow-025'/1]).
-export(['math-pow-026'/1]).
-export(['math-pow-027'/1]).
-export(['math-pow-028'/1]).
-export(['math-pow-029'/1]).
-export(['math-pow-030'/1]).
-export(['math-pow-031'/1]).
-export(['math-pow-032'/1]).
-export(['math-pow-033'/1]).
-export(['math-pow-034'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'math-pow-001',
   'math-pow-002',
   'math-pow-003',
   'math-pow-004',
   'math-pow-005',
   'math-pow-006',
   'math-pow-007',
   'math-pow-008',
   'math-pow-009',
   'math-pow-010',
   'math-pow-011',
   'math-pow-012',
   'math-pow-013',
   'math-pow-014',
   'math-pow-015',
   'math-pow-016',
   'math-pow-017',
   'math-pow-018',
   'math-pow-019',
   'math-pow-020',
   'math-pow-021',
   'math-pow-022',
   'math-pow-023',
   'math-pow-024',
   'math-pow-025',
   'math-pow-026',
   'math-pow-027',
   'math-pow-028',
   'math-pow-029',
   'math-pow-030',
   'math-pow-031',
   'math-pow-032',
   'math-pow-033',
   'math-pow-034'].
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
'math-pow-001'(_Config) ->
   Qry = "math:pow((), 93.7)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'math-pow-002'(_Config) ->
   Qry = "math:pow(2, 3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            8.0e0
        ",
 Tst = xqerl:run("8.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-003'(_Config) ->
   Qry = "math:pow(-2, 3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            -8.0e0
        ",
 Tst = xqerl:run("-8.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-004'(_Config) ->
   Qry = "math:pow(-2, -3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            -0.125e0
        ",
 Tst = xqerl:run("-0.125e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-005'(_Config) ->
   Qry = "math:pow(2, 0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-006'(_Config) ->
   Qry = "math:pow(0, 0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-007'(_Config) ->
   Qry = "math:pow(xs:double('INF'), 0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-008'(_Config) ->
   Qry = "math:pow(xs:double('NaN'), 0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-009'(_Config) ->
   Qry = "math:pow(-math:pi(), 0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-010'(_Config) ->
   Qry = "math:pow(0e0, 3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            0.0e0
        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-011'(_Config) ->
   Qry = "math:pow(0e0, 4)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            0.0e0
        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-012'(_Config) ->
   Qry = "math:pow(-0e0, 3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            -0.0e0
        ",
 Tst = xqerl:run("-0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-013'(_Config) ->
   Qry = "math:pow(0, 4)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            0.0e0
        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-014'(_Config) ->
   Qry = "math:pow(0e0, -3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('INF')
        ",
 Tst = xqerl:run("xs:double('INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-015'(_Config) ->
   Qry = "math:pow(0e0, -4)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('INF')
        ",
 Tst = xqerl:run("xs:double('INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-016'(_Config) ->
   Qry = "math:pow(-0e0, -3)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('-INF')
        ",
 Tst = xqerl:run("xs:double('-INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-017'(_Config) ->
   Qry = "math:pow(0, -4)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('INF')
        ",
 Tst = xqerl:run("xs:double('INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-018'(_Config) ->
   Qry = "math:pow(16, 0.5e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            4.0e0
        ",
 Tst = xqerl:run("4.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-019'(_Config) ->
   Qry = "math:pow(16, 0.25e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            2.0e0
        ",
 Tst = xqerl:run("2.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-020'(_Config) ->
   Qry = "math:pow(0e0, -3.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('INF')
        ",
 Tst = xqerl:run("xs:double('INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-021'(_Config) ->
   Qry = "math:pow(-0e0, -3.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('-INF')
        ",
 Tst = xqerl:run("xs:double('-INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-022'(_Config) ->
   Qry = "math:pow(0e0, -3.1e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('INF')
        ",
 Tst = xqerl:run("xs:double('INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-023'(_Config) ->
   Qry = "math:pow(-0e0, -3.1e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            xs:double('INF')
        ",
 Tst = xqerl:run("xs:double('INF')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-024'(_Config) ->
   Qry = "math:pow(0e0, 3.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            0.0e0
        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-025'(_Config) ->
   Qry = "math:pow(-0e0, 3.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            -0.0e0
        ",
 Tst = xqerl:run("-0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-026'(_Config) ->
   Qry = "math:pow(0e0, 3.1e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            0.0e0
        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-027'(_Config) ->
   Qry = "math:pow(-0e0, 3.1e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            0.0e0
        ",
 Tst = xqerl:run("0.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-028'(_Config) ->
   Qry = "math:pow(-1, xs:double('INF'))",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-029'(_Config) ->
   Qry = "math:pow(-1, xs:double('-INF'))",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-030'(_Config) ->
   Qry = "math:pow(1, xs:double('INF'))",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-031'(_Config) ->
   Qry = "math:pow(1, xs:double('-INF'))",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-032'(_Config) ->
   Qry = "math:pow(1, xs:double('NaN'))",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1.0e0
        ",
 Tst = xqerl:run("1.0e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-033'(_Config) ->
   Qry = "math:pow(-2.5e0, 2.0e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            6.25e0
        ",
 Tst = xqerl:run("6.25e0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'math-pow-034'(_Config) ->
   Qry = "math:pow(-2.5e0, 2.00000001e0)",
   Env = xqerl_test:handle_environment(environment('math')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            NaN
        ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
