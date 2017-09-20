-module('fn_subsequence_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-subsequence-mix-args-001'/1]).
-export(['fn-subsequence-mix-args-002'/1]).
-export(['fn-subsequence-mix-args-003'/1]).
-export(['fn-subsequence-mix-args-004'/1]).
-export(['fn-subsequence-mix-args-005'/1]).
-export(['fn-subsequence-mix-args-006'/1]).
-export(['fn-subsequence-mix-args-007'/1]).
-export(['fn-subsequence-mix-args-008'/1]).
-export(['fn-subsequence-mix-args-009'/1]).
-export(['fn-subsequence-mix-args-010'/1]).
-export(['fn-subsequence-mix-args-011'/1]).
-export(['fn-subsequence-mix-args-012'/1]).
-export(['fn-subsequence-mix-args-013'/1]).
-export(['fn-subsequence-mix-args-014'/1]).
-export(['fn-subsequence-mix-args-015'/1]).
-export(['fn-subsequence-mix-args-016'/1]).
-export(['fn-subsequence-mix-args-017'/1]).
-export(['fn-subsequence-mix-args-018'/1]).
-export(['fn-subsequence-mix-args-019'/1]).
-export(['fn-subsequence-mix-args-020'/1]).
-export(['fn-subsequence-mix-args-021'/1]).
-export(['fn-subsequence-mix-args-022'/1]).
-export(['fn-subsequence-mix-args-023'/1]).
-export(['fn-subsequence-mix-args-024'/1]).
-export(['K-SeqSubsequenceFunc-1'/1]).
-export(['K-SeqSubsequenceFunc-2'/1]).
-export(['K-SeqSubsequenceFunc-3'/1]).
-export(['K-SeqSubsequenceFunc-4'/1]).
-export(['K-SeqSubsequenceFunc-5'/1]).
-export(['K-SeqSubsequenceFunc-6'/1]).
-export(['K-SeqSubsequenceFunc-7'/1]).
-export(['K-SeqSubsequenceFunc-8'/1]).
-export(['K-SeqSubsequenceFunc-9'/1]).
-export(['K-SeqSubsequenceFunc-10'/1]).
-export(['K-SeqSubsequenceFunc-11'/1]).
-export(['K-SeqSubsequenceFunc-12'/1]).
-export(['K-SeqSubsequenceFunc-13'/1]).
-export(['K-SeqSubsequenceFunc-14'/1]).
-export(['K-SeqSubsequenceFunc-15'/1]).
-export(['K-SeqSubsequenceFunc-16'/1]).
-export(['K-SeqSubsequenceFunc-17'/1]).
-export(['K-SeqSubsequenceFunc-18'/1]).
-export(['K-SeqSubsequenceFunc-19'/1]).
-export(['K-SeqSubsequenceFunc-20'/1]).
-export(['K-SeqSubsequenceFunc-21'/1]).
-export(['K-SeqSubsequenceFunc-22'/1]).
-export(['K-SeqSubsequenceFunc-23'/1]).
-export(['K-SeqSubsequenceFunc-24'/1]).
-export(['K-SeqSubsequenceFunc-25'/1]).
-export(['K-SeqSubsequenceFunc-26'/1]).
-export(['K-SeqSubsequenceFunc-27'/1]).
-export(['K-SeqSubsequenceFunc-28'/1]).
-export(['K-SeqSubsequenceFunc-29'/1]).
-export(['K-SeqSubsequenceFunc-30'/1]).
-export(['K-SeqSubsequenceFunc-31'/1]).
-export(['K-SeqSubsequenceFunc-32'/1]).
-export(['K-SeqSubsequenceFunc-33'/1]).
-export(['K-SeqSubsequenceFunc-34'/1]).
-export(['K-SeqSubsequenceFunc-35'/1]).
-export(['K-SeqSubsequenceFunc-36'/1]).
-export(['K-SeqSubsequenceFunc-37'/1]).
-export(['K-SeqSubsequenceFunc-38'/1]).
-export(['K-SeqSubsequenceFunc-39'/1]).
-export(['K-SeqSubsequenceFunc-40'/1]).
-export(['K-SeqSubsequenceFunc-41'/1]).
-export(['K-SeqSubsequenceFunc-42'/1]).
-export(['K-SeqSubsequenceFunc-43'/1]).
-export(['K-SeqSubsequenceFunc-44'/1]).
-export(['K2-SeqSubsequenceFunc-1'/1]).
-export(['K2-SeqSubsequenceFunc-2'/1]).
-export(['K2-SeqSubsequenceFunc-3'/1]).
-export(['K2-SeqSubsequenceFunc-4'/1]).
-export(['K2-SeqSubsequenceFunc-5'/1]).
-export(['K2-SeqSubsequenceFunc-6'/1]).
-export(['K2-SeqSubsequenceFunc-7'/1]).
-export(['K2-SeqSubsequenceFunc-8'/1]).
-export(['K2-SeqSubsequenceFunc-9'/1]).
-export(['K2-SeqSubsequenceFunc-10'/1]).
-export(['cbcl-subsequence-001'/1]).
-export(['cbcl-subsequence-002'/1]).
-export(['cbcl-subsequence-003'/1]).
-export(['cbcl-subsequence-004'/1]).
-export(['cbcl-subsequence-005'/1]).
-export(['cbcl-subsequence-006'/1]).
-export(['cbcl-subsequence-007'/1]).
-export(['cbcl-subsequence-008'/1]).
-export(['cbcl-subsequence-009'/1]).
-export(['cbcl-subsequence-010'/1]).
-export(['cbcl-subsequence-011'/1]).
-export(['cbcl-subsequence-012'/1]).
-export(['cbcl-subsequence-013'/1]).
-export(['cbcl-subsequence-014'/1]).
-export(['cbcl-subsequence-015'/1]).
-export(['cbcl-subsequence-016'/1]).
-export(['cbcl-subsequence-017'/1]).
-export(['cbcl-subsequence-018'/1]).
-export(['cbcl-subsequence-019'/1]).
-export(['cbcl-subsequence-020'/1]).
-export(['cbcl-subsequence-021'/1]).
-export(['cbcl-subsequence-022'/1]).
-export(['cbcl-subsequence-023'/1]).
-export(['cbcl-subsequence-024'/1]).
-export(['cbcl-subsequence-025'/1]).
-export(['cbcl-subsequence-026'/1]).
-export(['cbcl-subsequence-027'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-subsequence-mix-args-001',
   'fn-subsequence-mix-args-002',
   'fn-subsequence-mix-args-003',
   'fn-subsequence-mix-args-004',
   'fn-subsequence-mix-args-005',
   'fn-subsequence-mix-args-006',
   'fn-subsequence-mix-args-007',
   'fn-subsequence-mix-args-008',
   'fn-subsequence-mix-args-009',
   'fn-subsequence-mix-args-010',
   'fn-subsequence-mix-args-011',
   'fn-subsequence-mix-args-012',
   'fn-subsequence-mix-args-013',
   'fn-subsequence-mix-args-014',
   'fn-subsequence-mix-args-015',
   'fn-subsequence-mix-args-016',
   'fn-subsequence-mix-args-017',
   'fn-subsequence-mix-args-018',
   'fn-subsequence-mix-args-019',
   'fn-subsequence-mix-args-020',
   'fn-subsequence-mix-args-021',
   'fn-subsequence-mix-args-022',
   'fn-subsequence-mix-args-023',
   'fn-subsequence-mix-args-024',
   'K-SeqSubsequenceFunc-1',
   'K-SeqSubsequenceFunc-2',
   'K-SeqSubsequenceFunc-3',
   'K-SeqSubsequenceFunc-4',
   'K-SeqSubsequenceFunc-5',
   'K-SeqSubsequenceFunc-6',
   'K-SeqSubsequenceFunc-7',
   'K-SeqSubsequenceFunc-8',
   'K-SeqSubsequenceFunc-9',
   'K-SeqSubsequenceFunc-10',
   'K-SeqSubsequenceFunc-11',
   'K-SeqSubsequenceFunc-12',
   'K-SeqSubsequenceFunc-13',
   'K-SeqSubsequenceFunc-14',
   'K-SeqSubsequenceFunc-15',
   'K-SeqSubsequenceFunc-16',
   'K-SeqSubsequenceFunc-17',
   'K-SeqSubsequenceFunc-18',
   'K-SeqSubsequenceFunc-19',
   'K-SeqSubsequenceFunc-20',
   'K-SeqSubsequenceFunc-21',
   'K-SeqSubsequenceFunc-22',
   'K-SeqSubsequenceFunc-23',
   'K-SeqSubsequenceFunc-24',
   'K-SeqSubsequenceFunc-25',
   'K-SeqSubsequenceFunc-26',
   'K-SeqSubsequenceFunc-27',
   'K-SeqSubsequenceFunc-28',
   'K-SeqSubsequenceFunc-29',
   'K-SeqSubsequenceFunc-30',
   'K-SeqSubsequenceFunc-31',
   'K-SeqSubsequenceFunc-32',
   'K-SeqSubsequenceFunc-33',
   'K-SeqSubsequenceFunc-34',
   'K-SeqSubsequenceFunc-35',
   'K-SeqSubsequenceFunc-36',
   'K-SeqSubsequenceFunc-37',
   'K-SeqSubsequenceFunc-38',
   'K-SeqSubsequenceFunc-39',
   'K-SeqSubsequenceFunc-40',
   'K-SeqSubsequenceFunc-41',
   'K-SeqSubsequenceFunc-42',
   'K-SeqSubsequenceFunc-43',
   'K-SeqSubsequenceFunc-44',
   'K2-SeqSubsequenceFunc-1',
   'K2-SeqSubsequenceFunc-2',
   'K2-SeqSubsequenceFunc-3',
   'K2-SeqSubsequenceFunc-4',
   'K2-SeqSubsequenceFunc-5',
   'K2-SeqSubsequenceFunc-6',
   'K2-SeqSubsequenceFunc-7',
   'K2-SeqSubsequenceFunc-8',
   'K2-SeqSubsequenceFunc-9',
   'K2-SeqSubsequenceFunc-10',
   'cbcl-subsequence-001',
   'cbcl-subsequence-002',
   'cbcl-subsequence-003',
   'cbcl-subsequence-004',
   'cbcl-subsequence-005',
   'cbcl-subsequence-006',
   'cbcl-subsequence-007',
   'cbcl-subsequence-008',
   'cbcl-subsequence-009',
   'cbcl-subsequence-010',
   'cbcl-subsequence-011',
   'cbcl-subsequence-012',
   'cbcl-subsequence-013',
   'cbcl-subsequence-014',
   'cbcl-subsequence-015',
   'cbcl-subsequence-016',
   'cbcl-subsequence-017',
   'cbcl-subsequence-018',
   'cbcl-subsequence-019',
   'cbcl-subsequence-020',
   'cbcl-subsequence-021',
   'cbcl-subsequence-022',
   'cbcl-subsequence-023',
   'cbcl-subsequence-024',
   'cbcl-subsequence-025',
   'cbcl-subsequence-026',
   'cbcl-subsequence-027'].
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
'fn-subsequence-mix-args-001'(_Config) ->
   Qry = "fn:subsequence( (\"a\", \"b\", \"c\"), 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\"
      ",
 Tst = xqerl:run("\"a\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-002'(_Config) ->
   Qry = "fn:subsequence( (\"a\", \"b\", \"c\"), 3, 12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"c\"
      ",
 Tst = xqerl:run("\"c\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-003'(_Config) ->
   Qry = "fn:subsequence( (\"a\", xs:string(\"\"),\"b\", \"c\"), 1, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"\", \"b\"
      ",
 Tst = xqerl:run("\"a\", \"\", \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-004'(_Config) ->
   Qry = "fn:subsequence( (\"a\", xs:string(\"hello\"),\"b\", \"c\"), 1, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"hello\", \"b\"
      ",
 Tst = xqerl:run("\"a\", \"hello\", \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-005'(_Config) ->
   Qry = "fn:subsequence( (\"a\", xs:anyURI(\"www.example.com\"),\"b\", \"c\"), 1, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"www.example.com\", \"b\"
      ",
 Tst = xqerl:run("\"a\", \"www.example.com\", \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-006'(_Config) ->
   Qry = "fn:subsequence( (\"a\", (), (), \"b\", \"c\"), 1, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", \"b\", \"c\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-007'(_Config) ->
   Qry = "fn:subsequence( (\"a\", xs:integer(\"100\"), xs:integer(\"-100\"), \"b\", \"c\"),2,4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100, -100, \"b\", \"c\"
      ",
 Tst = xqerl:run("100, -100, \"b\", \"c\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-008'(_Config) ->
   Qry = "fn:subsequence( (\"a\", xs:decimal(\"-1.000000000001\"), xs:integer(\"-100\"), \"b\", \"c\"), 2,3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.000000000001, -100, \"b\"
      ",
 Tst = xqerl:run("-1.000000000001, -100, \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-009'(_Config) ->
   Qry = "fn:subsequence( (\"a\", xs:float(\"INF\"), \"b\", \"c\"),-2,3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-subsequence-mix-args-010'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:float(\"-INF\"), \"b\", \"c\"), 1,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:float(\"-INF\")
      ",
 Tst = xqerl:run("\"a\", xs:float(\"-INF\")"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-011'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:float(\"NaN\"), \"b\", \"c\"), 0, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\"
      ",
 Tst = xqerl:run("\"a\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-012'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:float(\"1.01\"), \"b\", \"c\"), 2,4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.01, \"b\", \"c\"
      ",
 Tst = xqerl:run("1.01, \"b\", \"c\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-013'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:double(\"NaN\"), \"b\", \"c\"), 2, 20)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:double('NaN'), \"b\", \"c\"
      ",
 Tst = xqerl:run("xs:double('NaN'), \"b\", \"c\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-014'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:double(\"1.01\"), \"b\", \"c\"), 2,3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.01, \"b\", \"c\"
      ",
 Tst = xqerl:run("1.01, \"b\", \"c\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-015'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:double(\"-INF\"), \"b\", \"c\"), 2,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:double('-INF'), \"b\"
      ",
 Tst = xqerl:run("xs:double('-INF'), \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-016'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:double(\"INF\"), \"b\", \"c\"), 2, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:double(\"INF\")
      ",
 Tst = xqerl:run("xs:double(\"INF\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-017'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"1\"), \"b\", \"c\"), 1,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", true()
      ",
 Tst = xqerl:run("\"a\", true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-018'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"0\"), \"b\", \"c\"), 2,1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-019'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"true\"), \"b\", \"c\"), 1,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", true()
      ",
 Tst = xqerl:run("\"a\", true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-020'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"false\"), \"b\", \"c\"), 1, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", false(), \"b\"
      ",
 Tst = xqerl:run("\"a\", false(), \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-021'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:date(\"1993-03-31\"), \"b\", \"c\"), 1,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:date('1993-03-31')
      ",
 Tst = xqerl:run("\"a\", xs:date('1993-03-31')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-022'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:dateTime(\"1972-12-31T00:00:00\"), \"b\", \"c\"), 0,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\"
      ",
 Tst = xqerl:run("\"a\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-023'(_Config) ->
   Qry = "fn:subsequence ( (\"a\", xs:time(\"12:30:00\"), \"b\", \"c\"), 1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:time('12:30:00')
      ",
 Tst = xqerl:run("\"a\", xs:time('12:30:00')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-subsequence-mix-args-024'(_Config) ->
   Qry = "fn:subsequence (1 to 10, xs:double('-INF'), xs:double('INF'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'K-SeqSubsequenceFunc-1'(_Config) ->
   Qry = "subsequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqSubsequenceFunc-2'(_Config) ->
   Qry = "subsequence(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqSubsequenceFunc-3'(_Config) ->
   Qry = "subsequence(1, 1, 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqSubsequenceFunc-4'(_Config) ->
   Qry = "empty(subsequence((), 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqSubsequenceFunc-5'(_Config) ->
   Qry = "empty(subsequence((1, 2, 3), 2, -10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-6'(_Config) ->
   Qry = "count(subsequence((1, 2, 3, \"four\"), 4)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-7'(_Config) ->
   Qry = "count(subsequence((1, 2, 3, \"four\"), 4, 1)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-8'(_Config) ->
   Qry = "subsequence((1, 2, 3.1, \"four\"), 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"four\"
      ",
 Tst = xqerl:run("\"four\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-9'(_Config) ->
   Qry = "subsequence((1, 2, 3.1, \"four\"), 4, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"four\"
      ",
 Tst = xqerl:run("\"four\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-10'(_Config) ->
   Qry = "subsequence((1, 2, 3.1, \"four\"), 3, 1) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-11'(_Config) ->
   Qry = "subsequence((1, 2, 3.1, \"four\"), 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-12'(_Config) ->
   Qry = "empty(subsequence((1, 2, 3, \"four\"), 4, -3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-13'(_Config) ->
   Qry = "empty(subsequence((1, 2, 3, \"four\"), -4, -3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-14'(_Config) ->
   Qry = "subsequence((1, 2, 3), 1, 1) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-15'(_Config) ->
   Qry = "subsequence((1, 2, 3), 1, 1) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-16'(_Config) ->
   Qry = "subsequence((1, 2, 3), 3) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-17'(_Config) ->
   Qry = "count(subsequence((1, 2, 3), 1, 1)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-18'(_Config) ->
   Qry = "count(subsequence((1, 2, 3), 1, 3)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-19'(_Config) ->
   Qry = "count(subsequence((1, 2, 3, \"four\"), 4)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-20'(_Config) ->
   Qry = "count(subsequence(1 to 3, 1, 1)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-21'(_Config) ->
   Qry = "empty(subsequence((1, 2), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-22'(_Config) ->
   Qry = "subsequence((5, 6, 7, 8), 2, 1) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-23'(_Config) ->
   Qry = "count(subsequence((1, 2), 2)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-24'(_Config) ->
   Qry = "count(subsequence((1, 2, 3, \"four\"), 2)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-25'(_Config) ->
   Qry = "count(subsequence((1, 2, 3, \"four\"), 2, 2)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-26'(_Config) ->
   Qry = "subsequence((1, 2, 3.1, \"four\"), 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-27'(_Config) ->
   Qry = "1 eq \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqSubsequenceFunc-28'(_Config) ->
   Qry = "1 eq subsequence((\"1\", 2, 3.1, \"four\"), 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqSubsequenceFunc-29'(_Config) ->
   Qry = "subsequence((\"1\", 2, 3.1, \"four\"), 1, 1) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqSubsequenceFunc-30'(_Config) ->
   Qry = "subsequence(error(), 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqSubsequenceFunc-31'(_Config) ->
   Qry = "count(subsequence((1, 2, 2, current-time()), 2, 2)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-32'(_Config) ->
   Qry = "count(subsequence(remove(current-time(), 1), 1, 1)) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-33'(_Config) ->
   Qry = "deep-equal(1, subsequence((1, 2, current-time()), 1, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-34'(_Config) ->
   Qry = "(1)[deep-equal(1, subsequence((1, 2, current-time()), 1, 1))] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-35'(_Config) ->
   Qry = "empty(subsequence((current-time(), 1), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-36'(_Config) ->
   Qry = "count(subsequence((current-time(), 1), 4)) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-37'(_Config) ->
   Qry = "count(subsequence((current-time(), 2 , 3), 1)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-38'(_Config) ->
   Qry = "count(subsequence((current-time(), 2 , 3), 3)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-39'(_Config) ->
   Qry = "count(subsequence((current-time(), 2 , 3, 4), 2, 2)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-40'(_Config) ->
   Qry = "subsequence((1, 2, 3, current-time(), 5, 6, 7), 1, 1)[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-41'(_Config) ->
   Qry = "subsequence((1, 2, 3, current-time(), 5, 6, 9), 7)[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9
      ",
 Tst = xqerl:run("9"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-42'(_Config) ->
   Qry = "subsequence((1, 2, 3, current-time(), 5, 6, 7), 4)[last() - 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-43'(_Config) ->
   Qry = "empty(subsequence((1, 2, 3, current-time(), 5, 6, 7), 4, 1)[last() - 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSubsequenceFunc-44'(_Config) ->
   Qry = "empty(subsequence((1, 2, 3, current-time(), 5, 6, 7), 1, 1)[2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-1'(_Config) ->
   Qry = "let $start := (current-time(), 2)[2] treat as xs:integer,
                $len := (current-time(), 1)[2] treat as xs:integer
                return subsequence((1, 2, 3), $start, $len)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-2'(_Config) ->
   Qry = "subsequence((1, 2, 3), 1, 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'K2-SeqSubsequenceFunc-3'(_Config) ->
   Qry = "subsequence((1, 2, 3, 4, 5), 4, -1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'K2-SeqSubsequenceFunc-4'(_Config) ->
   Qry = "fn:subsequence((1,2,3), 1.1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-5'(_Config) ->
   Qry = "fn:subsequence((1,2,3), 1.8, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-6'(_Config) ->
   Qry = "fn:subsequence((1,2,3), 1.4, 1.4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-7'(_Config) ->
   Qry = "fn:subsequence((1,2,3), 1.5, 1.5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2, 3
      ",
 Tst = xqerl:run("2, 3"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-8'(_Config) ->
   Qry = "let $f :=function() { subsequence(subsequence((1, 2, 3, 4), 3, 1), 1, 4) } return $f()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-9'(_Config) ->
   Qry = "let $f :=function() { subsequence((1, 2, 3), 1) } return $f()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3
      ",
 Tst = xqerl:run("1, 2, 3"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqSubsequenceFunc-10'(_Config) ->
   Qry = "subsequence((1, 2, 3), 1, \"string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-subsequence-001'(_Config) ->
   Qry = "
        count(subsequence(1 to 10, xs:double(\"-INF\"), xs:double(\"INF\")))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-002'(_Config) ->
   Qry = "count(subsequence(1 to 10, 2, xs:double(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-003'(_Config) ->
   Qry = "count(subsequence(1 to 10, xs:double(\"NaN\"), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-004'(_Config) ->
   Qry = "count(subsequence(1 to 10, xs:double(\"-INF\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-005'(_Config) ->
   Qry = "count(subsequence(1 to 10, xs:double(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-006'(_Config) ->
   Qry = "
        subsequence((1, 2, for $x in 1 to 10 return 2*$x), 2, year-from-date(current-date()))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 2 4 6 8 10 12 14 16 18 20
      ",
   case xqerl_test:string_value(Res) of
             "2 2 4 6 8 10 12 14 16 18 20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-007'(_Config) ->
   Qry = "
        subsequence((1, 2, for $x in 1 to 10 return 2*$x), -1, sum((1 to 10)[. mod 10 = 3]))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-008'(_Config) ->
   Qry = "subsequence(1 to 100, 99, 2147483648)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          
	        99 100
              
          
      ",
 case (xqerl_test:string_value(Res) == "99 100") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0130") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-subsequence-009'(_Config) ->
   Qry = "count(subsequence(1 to 100, -2147483648, 20))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-010'(_Config) ->
   Qry = "count(subsequence(1 to 3000000000, -2147483648, 2147483647))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            0
         
      ",
 case ( begin Tst2 = xqerl:run("0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0130") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-subsequence-011'(_Config) ->
   Qry = "count(subsequence(1 to 3000000000, -2147483649))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            3000000000
            
         
      ",
 case ( begin Tst1 = xqerl:run("3000000000"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-subsequence-012'(_Config) ->
   Qry = "count(subsequence(1 to 3000000000, 2147483648))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            852516353
            
         
      ",
 case ( begin Tst1 = xqerl:run("852516353"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-subsequence-013'(_Config) ->
   Qry = "count(subsequence(1 to 3000000000, 2147483647))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            852516354
            
         
      ",
 case ( begin Tst1 = xqerl:run("852516354"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-subsequence-014'(_Config) ->
   Qry = "subsequence(1 to 3000000000, 2147483647, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            2147483647 2147483648 2147483649 2147483650 2147483651
            
                  
      ",
 case (xqerl_test:string_value(Res) == "2147483647 2147483648 2147483649 2147483650 2147483651") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-subsequence-015'(_Config) ->
   Qry = "subsequence(for $x in (1 to 100) return -$x, 3, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3 -4 -5 -6 -7
      ",
   case xqerl_test:string_value(Res) of
             "-3 -4 -5 -6 -7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-016'(_Config) ->
   Qry = "
        subsequence( for $x in 1 to 10 return 1 to $x, count(for $x in 0 to 10 return 1 to $x), 1)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-017'(_Config) ->
   Qry = "
        subsequence(for $x in 1 to 10 return 1 to $x, 1.2, xs:double(\"INF\"))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 1 2 1 2 3 1 2 3 4 1 2 3 4 5 1 2 3 4 5 6 1 2 3 4 5 6 7 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10
      ",
   case xqerl_test:string_value(Res) of
             "1 1 2 1 2 3 1 2 3 4 1 2 3 4 5 1 2 3 4 5 6 1 2 3 4 5 6 7 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-018'(_Config) ->
   Qry = "
        subsequence(for $x in 1 to 10 return 1 to $x, 4.2, xs:double(\"INF\"))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 1 2 3 4 1 2 3 4 5 1 2 3 4 5 6 1 2 3 4 5 6 7 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 1 2 3 4 1 2 3 4 5 1 2 3 4 5 6 1 2 3 4 5 6 7 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-019'(_Config) ->
   Qry = "
        let $y := for $x in 1 to 10 return $x * $x return subsequence($y, count($y), 3)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
   case xqerl_test:string_value(Res) of
             "100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-020'(_Config) ->
   Qry = "subsequence(for $x in 1 to 10 return $x[. mod 2 = 0],2,4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 6 8 10
      ",
   case xqerl_test:string_value(Res) of
             "4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-021'(_Config) ->
   Qry = "subsequence(for $x in 1 to 10 return $x[. mod 2 = 0],2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 6 8 10
      ",
   case xqerl_test:string_value(Res) of
             "4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-022'(_Config) ->
   Qry = "subsequence((1 to 20)[. mod 2 = 0][position() < 5],2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 6 8
      ",
   case xqerl_test:string_value(Res) of
             "4 6 8" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-023'(_Config) ->
   Qry = "subsequence(for $x in 1 to 10 return $x * $x,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 9 16 25 36 49 64 81 100
      ",
   case xqerl_test:string_value(Res) of
             "4 9 16 25 36 49 64 81 100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-024'(_Config) ->
   Qry = "
        subsequence((1 to 100)[. mod 2 = 0],1,xs:double(string-join(('I','N','F')[position() mod 2 >= 0],'')))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100
      ",
   case xqerl_test:string_value(Res) of
             "2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-025'(_Config) ->
   Qry = "count(<a><b/></a>/*/subsequence(.,1,1)/..)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-026'(_Config) ->
   Qry = "
        let $x := (1 to 10)[. mod 2 = 0] return subsequence((0,$x),3,count($x) div 2)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 6 8
      ",
   case xqerl_test:string_value(Res) of
             "4 6 8" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subsequence-027'(_Config) ->
   Qry = "
        let $z := (1 to 10)[. mod 2 = 0] return subsequence(for $x in $z return floor($x),2,4)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 6 8 10
      ",
   case xqerl_test:string_value(Res) of
             "4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
