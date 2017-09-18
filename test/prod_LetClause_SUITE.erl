-module('prod_LetClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['letexprwith-1'/1]).
-export(['letexprwith-2'/1]).
-export(['letexprwith-3'/1]).
-export(['letexprwith-4'/1]).
-export(['letexprwith-5'/1]).
-export(['letexprwith-6'/1]).
-export(['letexprwith-7'/1]).
-export(['letexprwith-8'/1]).
-export(['letexprwith-9'/1]).
-export(['letexprwith-10'/1]).
-export(['letexprwith-11'/1]).
-export(['letexprwith-12'/1]).
-export(['letexprwith-13'/1]).
-export(['letexprwith-14'/1]).
-export(['letexprwith-15'/1]).
-export(['letexprwith-16'/1]).
-export(['letexprwith-17'/1]).
-export(['letexprwith-18'/1]).
-export(['letexprwith-19'/1]).
-export(['letexprwith-20'/1]).
-export(['letexprwith-21'/1]).
-export(['letexprwith-22'/1]).
-export(['letexprwith-23'/1]).
-export(['letexprwith-24'/1]).
-export(['LetExpr001'/1]).
-export(['LetExpr002'/1]).
-export(['LetExpr003'/1]).
-export(['LetExpr004'/1]).
-export(['LetExpr005'/1]).
-export(['LetExpr006'/1]).
-export(['LetExpr007'/1]).
-export(['LetExpr008'/1]).
-export(['LetExpr009'/1]).
-export(['LetExpr010'/1]).
-export(['LetExpr011'/1]).
-export(['LetExpr012'/1]).
-export(['LetExpr013'/1]).
-export(['LetExpr014'/1]).
-export(['LetExpr015'/1]).
-export(['LetExpr016'/1]).
-export(['LetExpr017'/1]).
-export(['LetExpr018'/1]).
-export(['LetExpr019'/1]).
-export(['LetExpr020'/1]).
-export(['LetExpr020a'/1]).
-export(['LetExpr021'/1]).
-export(['K-LetExprWithout-1'/1]).
-export(['K-LetExprWithout-2'/1]).
-export(['K-LetExprWithout-3'/1]).
-export(['K-LetExprWithout-4'/1]).
-export(['K2-LetExprWithout-1'/1]).
-export(['K2-LetExprWithout-2'/1]).
-export(['K2-LetExprWithout-3'/1]).
-export(['K2-LetExprWithout-4'/1]).
-export(['K2-LetExprWithout-5'/1]).
-export(['K2-LetExprWithout-6'/1]).
-export(['K2-LetExprWithout-7'/1]).
-export(['K2-LetExprWithout-8'/1]).
-export(['K2-LetExprWithout-9'/1]).
-export(['K2-LetExprWithout-10'/1]).
-export(['K2-LetExprWithout-11'/1]).
-export(['K2-LetExprWithout-12'/1]).
-export(['K2-LetExprWithout-13'/1]).
-export(['K2-LetExprWithout-14'/1]).
-export(['K2-LetExprWithout-15'/1]).
-export(['K2-LetExprWithout-16'/1]).
-export(['K2-LetExprWithout-17'/1]).
-export(['K2-LetExprWithout-18'/1]).
-export(['K2-LetExprWithout-19'/1]).
-export(['K2-LetExprWithout-20'/1]).
-export(['K2-LetExprWithout-21'/1]).
-export(['K2-LetExprWithout-22'/1]).
-export(['K2-LetExprWithout-23'/1]).
-export(['K2-LetExprWithout-24'/1]).
-export(['K2-LetExprWithout-25'/1]).
-export(['K2-LetExprWithout-26'/1]).
-export(['xquery10keywords'/1]).
-export(['xquery10keywords2'/1]).
-export(['xquery10keywords3'/1]).
-export(['xquery30keywords'/1]).
-export(['xquery30keywords2'/1]).
-export(['xquery30keywords3'/1]).
-export(['xquery30keywords4'/1]).
-export(['xquery30keywords5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'letexprwith-1',
   'letexprwith-2',
   'letexprwith-3',
   'letexprwith-4',
   'letexprwith-5',
   'letexprwith-6',
   'letexprwith-7',
   'letexprwith-8',
   'letexprwith-9',
   'letexprwith-10',
   'letexprwith-11',
   'letexprwith-12',
   'letexprwith-13',
   'letexprwith-14',
   'letexprwith-15',
   'letexprwith-16',
   'letexprwith-17',
   'letexprwith-18',
   'letexprwith-19',
   'letexprwith-20',
   'letexprwith-21',
   'letexprwith-22',
   'letexprwith-23',
   'letexprwith-24',
   'LetExpr001',
   'LetExpr002',
   'LetExpr003',
   'LetExpr004',
   'LetExpr005',
   'LetExpr006',
   'LetExpr007',
   'LetExpr008',
   'LetExpr009',
   'LetExpr010',
   'LetExpr011',
   'LetExpr012',
   'LetExpr013',
   'LetExpr014',
   'LetExpr015',
   'LetExpr016',
   'LetExpr017',
   'LetExpr018',
   'LetExpr019',
   'LetExpr020',
   'LetExpr020a',
   'LetExpr021',
   'K-LetExprWithout-1',
   'K-LetExprWithout-2',
   'K-LetExprWithout-3',
   'K-LetExprWithout-4',
   'K2-LetExprWithout-1',
   'K2-LetExprWithout-2',
   'K2-LetExprWithout-3',
   'K2-LetExprWithout-4',
   'K2-LetExprWithout-5',
   'K2-LetExprWithout-6',
   'K2-LetExprWithout-7',
   'K2-LetExprWithout-8',
   'K2-LetExprWithout-9',
   'K2-LetExprWithout-10',
   'K2-LetExprWithout-11',
   'K2-LetExprWithout-12',
   'K2-LetExprWithout-13',
   'K2-LetExprWithout-14',
   'K2-LetExprWithout-15',
   'K2-LetExprWithout-16',
   'K2-LetExprWithout-17',
   'K2-LetExprWithout-18',
   'K2-LetExprWithout-19',
   'K2-LetExprWithout-20',
   'K2-LetExprWithout-21',
   'K2-LetExprWithout-22',
   'K2-LetExprWithout-23',
   'K2-LetExprWithout-24',
   'K2-LetExprWithout-25',
   'K2-LetExprWithout-26',
   'xquery10keywords',
   'xquery10keywords2',
   'xquery10keywords3',
   'xquery30keywords',
   'xquery30keywords2',
   'xquery30keywords3',
   'xquery30keywords4',
   'xquery30keywords5'].
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
];
environment('acme_corp') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/op/union/acme_corp.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'letexprwith-1'(_Config) ->
   Qry = "let $salary as xs:decimal := \"cat\" return $salary * 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'letexprwith-2'(_Config) ->
   Qry = "let $var as xs:decimal := 100 return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         100\n      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-3'(_Config) ->
   Qry = "let $var as xs:integer := 100 return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         100\n      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-4'(_Config) ->
   Qry = "let $var as xs:double := 100E1 return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1000\n      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-5'(_Config) ->
   Qry = "let $var as xs:string := \"A String\" return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A String\n      ",
   case xqerl_test:string_value(Res) of
             "A String" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-6'(_Config) ->
   Qry = "let $var as xs:boolean := fn:true() return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'letexprwith-7'(_Config) ->
   Qry = "let $var as xs:boolean := fn:false() return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'letexprwith-8'(_Config) ->
   Qry = "let $var as xs:date := xs:date(\"1999-05-31Z\") return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1999-05-31Z\n      ",
   case xqerl_test:string_value(Res) of
             "1999-05-31Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-9'(_Config) ->
   Qry = "let $var as xs:time := xs:time(\"21:23:00Z\") return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         21:23:00Z\n      ",
   case xqerl_test:string_value(Res) of
             "21:23:00Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-10'(_Config) ->
   Qry = "let $var as xs:dateTime := xs:dateTime(\"1999-05-31T13:20:00Z\") return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1999-05-31T13:20:00Z\n      ",
   case xqerl_test:string_value(Res) of
             "1999-05-31T13:20:00Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-11'(_Config) ->
   Qry = "let $var as xs:float := xs:float(100) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         100\n      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-12'(_Config) ->
   Qry = "let $var as xs:integer := 100+200 return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         300\n      ",
 Tst = xqerl:run("300"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-13'(_Config) ->
   Qry = "let $var as xs:integer := fn:count((100,200)) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-14'(_Config) ->
   Qry = "let $var as xs:boolean := fn:not(fn:true()) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'letexprwith-15'(_Config) ->
   Qry = "let $var as xs:boolean := fn:true() and fn:true() return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'letexprwith-16'(_Config) ->
   Qry = "let $var as xs:boolean := fn:true() and fn:true() return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'letexprwith-17'(_Config) ->
   Qry = "let $var as xs:integer := fn:string-length(\"A String\") return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         8\n      ",
 Tst = xqerl:run("8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-18'(_Config) ->
   Qry = "let $var as xs:string := xs:string((xs:integer(100))) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         100\n      ",
   case xqerl_test:string_value(Res) of
             "100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-19'(_Config) ->
   Qry = "let $var as xs:string := xs:string((xs:decimal(100))) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         100\n      ",
   case xqerl_test:string_value(Res) of
             "100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-20'(_Config) ->
   Qry = "let $var as xs:string := xs:string((xs:double(100E2))) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         10000\n      ",
   case xqerl_test:string_value(Res) of
             "10000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-21'(_Config) ->
   Qry = "let $var as xs:string := xs:string(fn:true()) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true\n      ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'letexprwith-22'(_Config) ->
   Qry = "let $var as xs:integer := 100 return $var + 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         101\n      ",
 Tst = xqerl:run("101"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'letexprwith-23'(_Config) ->
   Qry = "let $var as xs:boolean := if (fn:true()) then fn:true() else fn:false() return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'letexprwith-24'(_Config) ->
   Qry = "let $var as xs:string := typeswitch(fn:true()) case $i as xs:boolean return \"Test Passed\" default return \"Test failed\" return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         Test Passed\n      ",
   case xqerl_test:string_value(Res) of
             "Test Passed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr001'(_Config) ->
   Qry = "let $x := \"92233720368547758\" return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         92233720368547758\n      ",
   case xqerl_test:string_value(Res) of
             "92233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr002'(_Config) ->
   Qry = "let $x := 92233720368547758 return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         92233720368547758\n      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'LetExpr003'(_Config) ->
   Qry = "let $x := 92233720368547758+1 return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         92233720368547759\n      ",
 Tst = xqerl:run("92233720368547759"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'LetExpr004'(_Config) ->
   Qry = "let $x := xs:long(\"92233720368547758\") return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         92233720368547758\n      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'LetExpr005'(_Config) ->
   Qry = "let $x := xs:long(\"-92233720368547758\")+1 return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547757\n      ",
 Tst = xqerl:run("-92233720368547757"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'LetExpr006'(_Config) ->
   Qry = "let $x := xs:double(\"1.7976931348623157E308\") return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1.7976931348623157E308\n      ",
   case xqerl_test:string_value(Res) of
             "1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr007'(_Config) ->
   Qry = "let $x:=<a>{1+1}</a> return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a>2</a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>2</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>2</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'LetExpr008'(_Config) ->
   Qry = "let $x:=1, $y:=$x+1 return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'LetExpr009'(_Config) ->
   Qry = "let $x:=1, $y:=<a>{$x+1}</a> return $y",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a>2</a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>2</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>2</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'LetExpr010'(_Config) ->
   Qry = "let $x:=(1,2,3), $y:=$x+1 return $y",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'LetExpr011'(_Config) ->
   Qry = "let $x :=(1 to 100)[. mod 5 eq 0] return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100\n      ",
   case xqerl_test:string_value(Res) of
             "5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr012'(_Config) ->
   Qry = "let $x :=(1 to 100)[. mod 5 eq 0], $y := $x[. mod 10 eq 0] return $y",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         10 20 30 40 50 60 70 80 90 100\n      ",
   case xqerl_test:string_value(Res) of
             "10 20 30 40 50 60 70 80 90 100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr013'(_Config) ->
   Qry = "let $x:=\"hello\", $y:=concat($x,\" there\") return $y",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         hello there\n      ",
   case xqerl_test:string_value(Res) of
             "hello there" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr014'(_Config) ->
   Qry = "let $x := \"1\", $y := $x+1 return $y",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'LetExpr015'(_Config) ->
   Qry = "let $x := (0,0.1e-1,2.0,'a',\"cat\",'',true()) return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0 0.01 2 a cat  true\n      ",
   case xqerl_test:string_value(Res) of
             "0 0.01 2 a cat  true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'LetExpr016'(_Config) ->
   Qry = "let $a := (<elem1/>, <elem2/>, <elem3 att=\"test\"/>) return <root>{$a}</root>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <root><elem1/><elem2/><elem3 att=\"test\"/></root>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><elem1/><elem2/><elem3 att=\"test\"/></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><elem1/><elem2/><elem3 att=\"test\"/></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'LetExpr017'(_Config) ->
   Qry = "let $x := (<a> <b> <c> 123 </c> </b> </a>) return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a><b><c> 123 </c></b></a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><b><c> 123 </c></b></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><b><c> 123 </c></b></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'LetExpr018'(_Config) ->
   Qry = "let $x := (0,0.1e-1,2.0,'a',\"cat\",'',true(), ('<a> <b> <c> 123 </c> </b> </a>')/a/b) return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0019" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0019'}) end.
'LetExpr019'(_Config) ->
   Qry = "let $a := <elem/> let $b := <elem2/> return ($a,$b)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem/><elem2/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem/><elem2/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem/><elem2/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'LetExpr020'(_Config) ->
   Qry = "let $a := 1 let $b := $a let $c := $a+$b return ($c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'LetExpr020a'(_Config) ->
   {skip,"XP30+"}.
'LetExpr021'(_Config) ->
   Qry = "let $a := $b return ($a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-LetExprWithout-1'(_Config) ->
   Qry = "let $i := 5, $j := 20 * $i return $i, $j",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-LetExprWithout-2'(_Config) ->
   Qry = "let $i = 5 return 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-LetExprWithout-3'(_Config) ->
   Qry = "let $i in 5 return 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-LetExprWithout-4'(_Config) ->
   Qry = "\n        declare variable $i := false(); \n        declare variable $t := false(); \n        deep-equal((let $i := true(), $t := true() return ($i, $t)), (true(), true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-LetExprWithout-1'(_Config) ->
   Qry = "deep-equal((<b/>, <b/>, <b/>, <b/>), (for $v1 in (1, 2, 3, 4) let $v2 := <b/> return ($v2))/.)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-LetExprWithout-2'(_Config) ->
   Qry = "deep-equal((<b/>, <b/>, <b/>, <b/>), (for $v1 in (1, 2, 3, 4) let $v2 := <b/> return ($v2)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-LetExprWithout-3'(_Config) ->
   Qry = "declare function local:myFunc() { let $v := . return $v }; local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-LetExprWithout-4'(_Config) ->
   Qry = "declare function local:myFunc($arg as node()) { let $v := . return $arg/$v }; local:myFunc(<e/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-LetExprWithout-5'(_Config) ->
   Qry = "declare function local:myFunc($arg as node()) { let $v := aNameTest return $arg/$v }; local:myFunc(<e/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-LetExprWithout-6'(_Config) ->
   Qry = "declare function local:myFunc($arg as node()) { let $v := aNameTest return $arg/$v }; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            1\n            \n         \n      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-LetExprWithout-7'(_Config) ->
   Qry = "let $i as xs:integer := xs:untypedAtomic(\"1\") return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-8'(_Config) ->
   Qry = "return 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-LetExprWithout-9'(_Config) ->
   Qry = "let $i as xs:float := 1.1 return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-10'(_Config) ->
   Qry = "let $i as xs:double := 1.1 return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-11'(_Config) ->
   Qry = "let $i as xs:float := 1 return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-12'(_Config) ->
   Qry = "let $i as xs:double := 1 return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-13'(_Config) ->
   Qry = "let $i as xs:double := xs:float(3) return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-14'(_Config) ->
   Qry = "let $i as xs:string := xs:untypedAtomic(\"a string\") return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-15'(_Config) ->
   Qry = "let $i as xs:string := xs:anyURI(\"http://www.example.com/\") return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-LetExprWithout-16'(_Config) ->
   Qry = "declare variable $e := <e/>; for $i in (<a/>, $e, <c/>) return $i is $e",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         false true false\n      ",
   case xqerl_test:string_value(Res) of
             "false true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-LetExprWithout-17'(_Config) ->
   Qry = "declare function local:function() { let $b := (i/a) return () }; empty(local:function())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-LetExprWithout-18'(_Config) ->
   Qry = "declare function local:foo($a as xs:integer) { if($a = 3) then $a else let $a := $a return local:foo($a + 1) }; local:foo(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-LetExprWithout-19'(_Config) ->
   Qry = "let $v := . return 1",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            1\n            \n         \n      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-LetExprWithout-20'(_Config) ->
   Qry = "\n        let $emps := //employee[location = \"Denver\"] \n        for $d in distinct-values($emps/deptno) \n        let $e := $emps[deptno = $d] \n        return <dept> <deptno>{$d}</deptno> <headcount> {count($e)} </headcount> <payroll> {sum($e/salary)} </payroll> </dept>\n      ",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-LetExprWithout-21'(_Config) ->
   Qry = "<e/>/(for $b in 1, $i in self::node() return $i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-LetExprWithout-22'(_Config) ->
   Qry = "<e/>/(for $i in self::node() return $i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-LetExprWithout-23'(_Config) ->
   Qry = "count(<e/>/(let $i := . return (string($i), data($i))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-LetExprWithout-24'(_Config) ->
   Qry = "declare function local:function() { let $b := (i/a) return 1 }; local:function()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            1\n            \n         \n      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-LetExprWithout-25'(_Config) ->
   Qry = "let $a := 1 return \n                for $b in 1 return \n                    if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else if ($b) then 1 \n                            else ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-LetExprWithout-26'(_Config) ->
   Qry = "let $e := <element/>, $outer as element() := $e/element() return $outer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'xquery10keywords'(_Config) ->
   Qry = "let $ancestor-or-self := 1 \n      let $ancestor := 1 \n      let $and := 1 \n      let $as := 1 \n      let $ascending := 1 \n      let $at := 1 \n      let $attribute := 1 \n      let $base-uri := 1 \n      let $boundary-space := 1 \n      let $by := 1 \n      let $case := 1 \n      let $cast := 1 \n      let $castable := 1 \n      let $child := 1 \n      let $collation := 1 \n      let $comment := 1 \n      let $construction := 1 \n      let $copy-namespaces := 1 \n      let $declare := 1 \n      let $default := 1 \n      let $descendant-or-self := 1 \n      let $descendant := 1 \n      let $descending := 1 \n      let $div := 1 \n      let $document-node := 1 \n      let $document := 1 \n      let $element := 1 \n      let $else := 1 \n      let $empty-sequence := 1 \n      let $empty := 1 \n      let $encoding := 1 \n      let $eq := 1 let $every := 1 let $except := 1 let $external := 1 let $following-sibling := 1 \n      let $following := 1 let $for := 1 let $function := 1 let $ge := 1 let $greatest := 1 \n      let $gt := 1 let $idiv := 1 let $if := 1 let $import := 1 let $in := 1 let $inherit := 1 \n      let $instance := 1 let $intersect := 1 let $is := 1 let $item := 1 let $lax := 1 \n      let $le := 1 let $least := 1 let $let := 1 let $lt := 1 let $mod := 1 let $module := 1 \n      let $module := 1 let $namespace := 1 let $ne := 1 let $no-inherit := 1 \n      let $no-preserve := 1 let $node := 1 let $of := 1 let $option := 1 let $or := 1 \n      let $order := 1 let $ordered := 1 let $ordering := 1 let $parent := 1 let $preceding-sibling := 1 \n      let $preceding := 1 let $preserve := 1 let $processing-instruction := 1 let $return := 1 \n      let $satisfies := 1 let $schema-attribute := 1 let $schema-element := 1 let $schema := 1 \n      let $self := 1 let $some := 1 let $stable := 1 let $strict := 1 let $strip := 1 \n      let $text := 1 let $then := 1 let $to := 1 let $treat := 1 let $typeswitch := 1 \n      let $union := 1 let $unordered := 1 let $validate := 1 let $variable := 1 let $version := 1 \n      let $where := 1 let $xquery := 1 return 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xquery10keywords2'(_Config) ->
   Qry = "\n      let $x := (/) \n      return $x /ancestor-or-self /ancestor /and /as /ascending /at /attribute \n      /base-uri /boundary-space /by \n      /case /cast /castable /child /collation /comment /construction /copy-namespaces \n      /declare /default /descendant-or-self /descendant /descending /div /document-node /document \n      /element /else /empty-sequence /empty /encoding /eq /every /except /external \n      /following-sibling /following /for /function \n      /ge /greatest /gt \n      /idiv /if /import /in /inherit /instance /intersect /is /item\n       /lax /le /least /let /lt \n       /mod /module /module \n       /namespace /ne /no-inherit /no-preserve /node \n       /of /option /or /order /ordered /ordering \n       /parent /preceding-sibling /preceding /preserve /processing-instruction \n       /return \n       /satisfies /schema-attribute /schema-element /schema /self /some /stable /strict /strip \n       /text /then /to /treat /typeswitch \n       /union /unordered \n       /validate /variable /version \n       /where\n       /xquery",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'xquery10keywords3'(_Config) ->
   Qry = "\n      <keywords> <ancestor-or-self/> <ancestor/> <and/> <as/> <ascending/> <at/> <attribute/> \n      <base-uri/> <boundary-space/> <by/> \n      <case/> <cast/> <castable/> <child/> <collation/> <comment/> <construction/> <copy-namespaces/> \n      <declare/> <default/> <descendant-or-self/> <descendant/> <descending/> <div/> <document-node/> <document/> \n      <element/> <else/> <empty-sequence/> <empty/> <encoding/> <eq/> <every/> <except/> <external/> \n      <following-sibling/> <following/> <for/> <function/> \n      <ge/> <greatest/> <gt/> \n      <idiv/> <if/> <import/> <in/> <inherit/> <instance/> <intersect/> <is/> <item/> \n      <lax/> <le/> <least/> <let/> <lt/> \n      <mod/> <module/> <module/> \n      <namespace/> <ne/> <no-inherit/> <no-preserve/> <node/> \n      <of/> <option/> <or/> <order/> <ordered/> <ordering/> \n      <parent/> <preceding-sibling/> <preceding/> <preserve/> <processing-instruction/> \n      <return/> \n      <satisfies/> <schema-attribute/> <schema-element/> <schema/> <self/> <some/> <stable/> <strict/> <strip/> \n      <text/> <then/> <to/> <treat/> <typeswitch/> \n      <union/> <unordered/> \n      <validate/> <variable/> <version/> \n      <where/> \n      <xquery/> </keywords>/name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         keywords\n      ",
   case xqerl_test:string_value(Res) of
             "keywords" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'xquery30keywords'(_Config) ->
   Qry = "\n        let $NaN := 1\n        let $allowing := 1\n        let $ancestor-or-self := 1\n        let $ancestor := 1\n        let $and := 1\n        let $as := 1\n        let $ascending := 1\n        let $at := 1\n        let $attribute := 1\n        let $base-uri := 1\n        let $boundary-space := 1\n        let $by := 1\n        let $case := 1\n        let $cast := 1\n        let $castable := 1\n        let $catch := 1\n        let $child := 1\n        let $collation := 1\n        let $comment := 1\n        let $construction := 1\n        let $context := 1\n        let $copy-namespaces := 1\n        let $count := 1\n        let $decimal-format := 1\n        let $decimal-separator := 1\n        let $declare := 1\n        let $default := 1\n        let $descendant-or-self := 1\n        let $descendant := 1\n        let $descending := 1\n        let $digit := 1\n        let $div := 1\n        let $document-node := 1\n        let $document := 1\n        let $element := 1\n        let $else := 1\n        let $empty-sequence := 1\n        let $empty := 1\n        let $encoding := 1\n        let $end := 1\n        let $eq := 1\n        let $every := 1\n        let $except := 1\n        let $external := 1\n        let $following-sibling := 1\n        let $following := 1\n        let $for := 1\n        let $function := 1\n        let $ge := 1\n        let $greatest := 1\n        let $group := 1\n        let $grouping-separator := 1\n        let $gt := 1\n        let $idiv := 1\n        let $if := 1\n        let $import := 1\n        let $in := 1\n        let $infinity := 1\n        let $inherit := 1\n        let $instance := 1\n        let $intersect := 1\n        let $is := 1\n        let $item := 1\n        let $lax := 1\n        let $le := 1\n        let $least := 1\n        let $let := 1\n        let $lt := 1\n        let $minus-sign := 1\n        let $mod := 1\n        let $module := 1\n        let $namespace-node := 1\n        let $namespace := 1\n        let $ne := 1\n        let $next := 1\n        let $no-inherit := 1\n        let $no-preserve := 1\n        let $node := 1\n        let $of := 1\n        let $only := 1\n        let $option := 1\n        let $or := 1\n        let $order := 1\n        let $ordered := 1\n        let $ordering := 1\n        let $parent := 1\n        let $pattern-separator := 1\n        let $per-mille := 1\n        let $percent := 1\n        let $preceding-sibling := 1\n        let $preceding := 1\n        let $preserve := 1\n        let $previous := 1\n        let $processing-instruction := 1\n        let $return := 1\n        let $satisfies := 1\n        let $schema-attribute := 1\n        let $schema-element := 1\n        let $schema := 1\n        let $self := 1\n        let $sliding := 1\n        let $some := 1\n        let $stable := 1\n        let $start := 1\n        let $strict := 1\n        let $strip := 1\n        let $switch := 1\n        let $text := 1\n        let $then := 1\n        let $to := 1\n        let $treat := 1\n        let $try := 1\n        let $tumbling := 1\n        let $type := 1\n        let $typeswitch := 1\n        let $union := 1\n        let $unordered := 1\n        let $validate := 1\n        let $variable := 1\n        let $version := 1\n        let $when := 1\n        let $where := 1\n        let $window := 1\n        let $xquery := 1\n        let $zero-digit := 1\n        return 2\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xquery30keywords2'(_Config) ->
   Qry = "\n        let $x := (/)\n        return $x\n        /NaN\n        /allowing\n        /ancestor-or-self\n        /ancestor\n        /and\n        /as\n        /ascending\n        /at\n        /attribute\n        /base-uri\n        /boundary-space\n        /by\n        /case\n        /cast\n        /castable\n        /catch\n        /child\n        /collation\n        /comment\n        /construction\n        /context\n        /copy-namespaces\n        /count\n        /decimal-format\n        /decimal-separator\n        /declare\n        /default\n        /descendant-or-self\n        /descendant\n        /descending\n        /digit\n        /div\n        /document-node\n        /document\n        /element\n        /else\n        /empty-sequence\n        /empty\n        /encoding\n        /end\n        /eq\n        /every\n        /except\n        /external\n        /following-sibling\n        /following\n        /for\n        /function\n        /ge\n        /greatest\n        /group\n        /grouping-separator\n        /gt\n        /idiv\n        /if\n        /import\n        /in\n        /infinity\n        /inherit\n        /instance\n        /intersect\n        /is\n        /item\n        /lax\n        /le\n        /least\n        /let\n        /lt\n        /minus-sign\n        /mod\n        /module\n        /namespace-node\n        /namespace\n        /ne\n        /next\n        /no-inherit\n        /no-preserve\n        /node\n        /of\n        /only\n        /option\n        /or\n        /order\n        /ordered\n        /ordering\n        /parent\n        /pattern-separator\n        /per-mille\n        /percent\n        /preceding-sibling\n        /preceding\n        /preserve\n        /previous\n        /processing-instruction\n        /return\n        /satisfies\n        /schema-attribute\n        /schema-element\n        /schema\n        /self\n        /sliding\n        /some\n        /stable\n        /start\n        /strict\n        /strip\n        /switch\n        /text\n        /then\n        /to\n        /treat\n        /try\n        /tumbling\n        /type\n        /typeswitch\n        /union\n        /unordered\n        /validate\n        /variable\n        /version\n        /when\n        /where\n        /window\n        /xquery\n        /zero-digit\n      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'xquery30keywords3'(_Config) ->
   Qry = "\n        <keywords>\n           <NaN/>\n           <allowing/>\n           <ancestor-or-self/>\n           <ancestor/>\n           <and/>\n           <as/>\n           <ascending/>\n           <at/>\n           <attribute/>\n           <base-uri/>\n           <boundary-space/>\n           <by/>\n           <case/>\n           <cast/>\n           <castable/>\n           <catch/>\n           <child/>\n           <collation/>\n           <comment/>\n           <construction/>\n           <context/>\n           <copy-namespaces/>\n           <count/>\n           <decimal-format/>\n           <decimal-separator/>\n           <declare/>\n           <default/>\n           <descendant-or-self/>\n           <descendant/>\n           <descending/>\n           <digit/>\n           <div/>\n           <document-node/>\n           <document/>\n           <element/>\n           <else/>\n           <empty-sequence/>\n           <empty/>\n           <encoding/>\n           <end/>\n           <eq/>\n           <every/>\n           <except/>\n           <external/>\n           <following-sibling/>\n           <following/>\n           <for/>\n           <function/>\n           <ge/>\n           <greatest/>\n           <group/>\n           <grouping-separator/>\n           <gt/>\n           <idiv/>\n           <if/>\n           <import/>\n           <in/>\n           <infinity/>\n           <inherit/>\n           <instance/>\n           <intersect/>\n           <is/>\n           <item/>\n           <lax/>\n           <le/>\n           <least/>\n           <let/>\n           <lt/>\n           <minus-sign/>\n           <mod/>\n           <module/>\n           <namespace-node/>\n           <namespace/>\n           <ne/>\n           <next/>\n           <no-inherit/>\n           <no-preserve/>\n           <node/>\n           <of/>\n           <only/>\n           <option/>\n           <or/>\n           <order/>\n           <ordered/>\n           <ordering/>\n           <parent/>\n           <pattern-separator/>\n           <per-mille/>\n           <percent/>\n           <preceding-sibling/>\n           <preceding/>\n           <preserve/>\n           <previous/>\n           <processing-instruction/>\n           <return/>\n           <satisfies/>\n           <schema-attribute/>\n           <schema-element/>\n           <schema/>\n           <self/>\n           <sliding/>\n           <some/>\n           <stable/>\n           <start/>\n           <strict/>\n           <strip/>\n           <switch/>\n           <text/>\n           <then/>\n           <to/>\n           <treat/>\n           <try/>\n           <tumbling/>\n           <type/>\n           <typeswitch/>\n           <union/>\n           <unordered/>\n           <validate/>\n           <variable/>\n           <version/>\n           <when/>\n           <where/>\n           <window/>\n           <xquery/>\n           <zero-digit/>\n        </keywords>/name()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         keywords\n      ",
   case xqerl_test:string_value(Res) of
             "keywords" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'xquery30keywords4'(_Config) ->
   Qry = "\n         declare function local:NaN () {1};\n         declare function local:allowing () {2};\n         declare function local:ancestor-or-self () {3};\n         declare function local:ancestor () {4};\n         declare function local:and () {5};\n         declare function local:as () {6};\n         declare function local:ascending () {7};\n         declare function local:at () {8};\n         declare function local:attribute () {9};\n         declare function local:base-uri () {10};\n         declare function local:boundary-space () {11};\n         declare function local:by () {12};\n         declare function local:case () {13};\n         declare function local:cast () {14};\n         declare function local:castable () {15};\n         declare function local:catch () {16};\n         declare function local:child () {17};\n         declare function local:collation () {18};\n         declare function local:comment () {19};\n         declare function local:construction () {20};\n         declare function local:context () {21};\n         declare function local:copy-namespaces () {22};\n         declare function local:count () {23};\n         declare function local:decimal-format () {24};\n         declare function local:decimal-separator () {25};\n         declare function local:declare () {26};\n         declare function local:default () {27};\n         declare function local:descendant-or-self () {28};\n         declare function local:descendant () {29};\n         declare function local:descending () {30};\n         declare function local:digit () {31};\n         declare function local:div () {32};\n         declare function local:document-node () {33};\n         declare function local:document () {34};\n         declare function local:element () {35};\n         declare function local:else () {36};\n         declare function local:empty-sequence () {37};\n         declare function local:empty () {38};\n         declare function local:encoding () {39};\n         declare function local:end () {40};\n         declare function local:eq () {41};\n         declare function local:every () {42};\n         declare function local:except () {43};\n         declare function local:external () {44};\n         declare function local:following-sibling () {45};\n         declare function local:following () {46};\n         declare function local:for () {47};\n         declare function local:function () {48};\n         declare function local:ge () {49};\n         declare function local:greatest () {50};\n         declare function local:group () {51};\n         declare function local:grouping-separator () {52};\n         declare function local:gt () {53};\n         declare function local:idiv () {54};\n         declare function local:if () {55};\n         declare function local:import () {56};\n         declare function local:in () {57};\n         declare function local:infinity () {58};\n         declare function local:inherit () {59};\n         declare function local:instance () {60};\n         declare function local:intersect () {61};\n         declare function local:is () {62};\n         declare function local:item () {63};\n         declare function local:lax () {64};\n         declare function local:le () {65};\n         declare function local:least () {66};\n         declare function local:let () {67};\n         declare function local:lt () {68};\n         declare function local:minus-sign () {69};\n         declare function local:mod () {70};\n         declare function local:module () {71};\n         declare function local:namespace-node () {72};\n         declare function local:namespace () {73};\n         declare function local:ne () {74};\n         declare function local:next () {75};\n         declare function local:no-inherit () {76};\n         declare function local:no-preserve () {77};\n         declare function local:node () {78};\n         declare function local:of () {79};\n         declare function local:only () {80};\n         declare function local:option () {81};\n         declare function local:or () {82};\n         declare function local:order () {83};\n         declare function local:ordered () {84};\n         declare function local:ordering () {85};\n         declare function local:parent () {86};\n         declare function local:pattern-separator () {87};\n         declare function local:per-mille () {88};\n         declare function local:percent () {89};\n         declare function local:preceding-sibling () {90};\n         declare function local:preceding () {91};\n         declare function local:preserve () {92};\n         declare function local:previous () {93};\n         declare function local:processing-instruction () {94};\n         declare function local:return () {95};\n         declare function local:satisfies () {96};\n         declare function local:schema-attribute () {97};\n         declare function local:schema-element () {98};\n         declare function local:schema () {99};\n         declare function local:self () {100};\n         declare function local:sliding () {101};\n         declare function local:some () {102};\n         declare function local:stable () {103};\n         declare function local:start () {104};\n         declare function local:strict () {105};\n         declare function local:strip () {106};\n         declare function local:switch () {107};\n         declare function local:text () {108};\n         declare function local:then () {109};\n         declare function local:to () {110};\n         declare function local:treat () {111};\n         declare function local:try () {112};\n         declare function local:tumbling () {113};\n         declare function local:type () {114};\n         declare function local:typeswitch () {115};\n         declare function local:union () {116};\n         declare function local:unordered () {117};\n         declare function local:validate () {118};\n         declare function local:variable () {119};\n         declare function local:version () {120};\n         declare function local:when () {121};\n         declare function local:where () {122};\n         declare function local:window () {123};\n         declare function local:xquery () {124};\n         declare function local:zero-digit () {125};\n         \n         local:NaN() +\n         local:allowing() +\n         local:ancestor-or-self() +\n         local:ancestor() +\n         local:and() +\n         local:as() +\n         local:ascending() +\n         local:at() +\n         local:attribute() +\n         local:base-uri() +\n         local:boundary-space() +\n         local:by() +\n         local:case() +\n         local:cast() +\n         local:castable() +\n         local:catch() +\n         local:child() +\n         local:collation() +\n         local:comment() +\n         local:construction() +\n         local:context() +\n         local:copy-namespaces() +\n         local:count() +\n         local:decimal-format() +\n         local:decimal-separator() +\n         local:declare() +\n         local:default() +\n         local:descendant-or-self() +\n         local:descendant() +\n         local:descending() +\n         local:digit() +\n         local:div() +\n         local:document-node() +\n         local:document() +\n         local:element() +\n         local:else() +\n         local:empty-sequence() +\n         local:empty() +\n         local:encoding() +\n         local:end() +\n         local:eq() +\n         local:every() +\n         local:except() +\n         local:external() +\n         local:following-sibling() +\n         local:following() +\n         local:for() +\n         local:function() +\n         local:ge() +\n         local:greatest() +\n         local:group() +\n         local:grouping-separator() +\n         local:gt() +\n         local:idiv() +\n         local:if() +\n         local:import() +\n         local:in() +\n         local:infinity() +\n         local:inherit() +\n         local:instance() +\n         local:intersect() +\n         local:is() +\n         local:item() +\n         local:lax() +\n         local:le() +\n         local:least() +\n         local:let() +\n         local:lt() +\n         local:minus-sign() +\n         local:mod() +\n         local:module() +\n         local:namespace-node() +\n         local:namespace() +\n         local:ne() +\n         local:next() +\n         local:no-inherit() +\n         local:no-preserve() +\n         local:node() +\n         local:of() +\n         local:only() +\n         local:option() +\n         local:or() +\n         local:order() +\n         local:ordered() +\n         local:ordering() +\n         local:parent() +\n         local:pattern-separator() +\n         local:per-mille() +\n         local:percent() +\n         local:preceding-sibling() +\n         local:preceding() +\n         local:preserve() +\n         local:previous() +\n         local:processing-instruction() +\n         local:return() +\n         local:satisfies() +\n         local:schema-attribute() +\n         local:schema-element() +\n         local:schema() +\n         local:self() +\n         local:sliding() +\n         local:some() +\n         local:stable() +\n         local:start() +\n         local:strict() +\n         local:strip() +\n         local:switch() +\n         local:text() +\n         local:then() +\n         local:to() +\n         local:treat() +\n         local:try() +\n         local:tumbling() +\n         local:type() +\n         local:typeswitch() +\n         local:union() +\n         local:unordered() +\n         local:validate() +\n         local:variable() +\n         local:version() +\n         local:when() +\n         local:where() +\n         local:window() +\n         local:xquery() +\n         local:zero-digit()\n         eq (125 * (125 + 1)) div 2\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'xquery30keywords5'(_Config) ->
   Qry = "\n         declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n         \n         declare function NaN () {1};\n         declare function allowing () {2};\n         declare function ancestor-or-self () {3};\n         declare function ancestor () {4};\n         declare function and () {5};\n         declare function as () {6};\n         declare function ascending () {7};\n         declare function at () {8};\n         declare function base-uri () {9};\n         declare function boundary-space () {10};\n         declare function by () {11};\n         declare function case () {12};\n         declare function cast () {13};\n         declare function castable () {14};\n         declare function catch () {15};\n         declare function child () {16};\n         declare function collation () {17};\n         declare function construction () {18};\n         declare function context () {19};\n         declare function copy-namespaces () {20};\n         declare function count () {21};\n         declare function decimal-format () {22};\n         declare function decimal-separator () {23};\n         declare function declare () {24};\n         declare function default () {25};\n         declare function descendant-or-self () {26};\n         declare function descendant () {27};\n         declare function descending () {28};\n         declare function digit () {29};\n         declare function div () {30};\n         declare function document () {31};\n         declare function else () {32};\n         declare function empty () {33};\n         declare function encoding () {34};\n         declare function end () {35};\n         declare function eq () {36};\n         declare function every () {37};\n         declare function except () {38};\n         declare function external () {39};\n         declare function following-sibling () {40};\n         declare function following () {41};\n         declare function for () {42};\n         declare function ge () {43};\n         declare function greatest () {44};\n         declare function group () {45};\n         declare function grouping-separator () {46};\n         declare function gt () {47};\n         declare function idiv () {48};\n         declare function import () {49};\n         declare function in () {50};\n         declare function infinity () {51};\n         declare function inherit () {52};\n         declare function instance () {53};\n         declare function intersect () {54};\n         declare function is () {55};\n         declare function lax () {56};\n         declare function le () {57};\n         declare function least () {58};\n         declare function let () {59};\n         declare function lt () {60};\n         declare function minus-sign () {61};\n         declare function mod () {62};\n         declare function module () {63};\n         declare function namespace () {64};\n         declare function ne () {65};\n         declare function next () {66};\n         declare function no-inherit () {67};\n         declare function no-preserve () {68};\n         declare function of () {69};\n         declare function only () {70};\n         declare function option () {71};\n         declare function or () {72};\n         declare function order () {73};\n         declare function ordered () {74};\n         declare function ordering () {75};\n         declare function parent () {76};\n         declare function pattern-separator () {77};\n         declare function per-mille () {78};\n         declare function percent () {79};\n         declare function preceding-sibling () {80};\n         declare function preceding () {81};\n         declare function preserve () {82};\n         declare function previous () {83};\n         declare function return () {84};\n         declare function satisfies () {85};\n         declare function schema () {86};\n         declare function self () {87};\n         declare function sliding () {88};\n         declare function some () {89};\n         declare function stable () {90};\n         declare function start () {91};\n         declare function strict () {92};\n         declare function strip () {93};\n         declare function then () {94};\n         declare function to () {95};\n         declare function treat () {96};\n         declare function try () {97};\n         declare function tumbling () {98};\n         declare function type () {99};\n         declare function union () {100};\n         declare function unordered () {101};\n         declare function validate () {102};\n         declare function variable () {103};\n         declare function version () {104};\n         declare function when () {105};\n         declare function where () {106};\n         declare function window () {107};\n         declare function xquery () {108};\n         declare function zero-digit () {109};\n         \n         NaN() +\n         allowing() +\n         ancestor-or-self() +\n         ancestor() +\n         and() +\n         as() +\n         ascending() +\n         at() +\n         base-uri() +\n         boundary-space() +\n         by() +\n         case() +\n         cast() +\n         castable() +\n         catch() +\n         child() +\n         collation() +\n         construction() +\n         context() +\n         copy-namespaces() +\n         count() +\n         decimal-format() +\n         decimal-separator() +\n         declare() +\n         default() +\n         descendant-or-self() +\n         descendant() +\n         descending() +\n         digit() +\n         div() +\n         document() +\n         else() +\n         empty() +\n         encoding() +\n         end() +\n         eq() +\n         every() +\n         except() +\n         external() +\n         following-sibling() +\n         following() +\n         for() +\n         ge() +\n         greatest() +\n         group() +\n         grouping-separator() +\n         gt() +\n         idiv() +\n         import() +\n         in() +\n         infinity() +\n         inherit() +\n         instance() +\n         intersect() +\n         is() +\n         lax() +\n         le() +\n         least() +\n         let() +\n         lt() +\n         minus-sign() +\n         mod() +\n         module() +\n         namespace() +\n         ne() +\n         next() +\n         no-inherit() +\n         no-preserve() +\n         of() +\n         only() +\n         option() +\n         or() +\n         order() +\n         ordered() +\n         ordering() +\n         parent() +\n         pattern-separator() +\n         per-mille() +\n         percent() +\n         preceding-sibling() +\n         preceding() +\n         preserve() +\n         previous() +\n         return() +\n         satisfies() +\n         schema() +\n         self() +\n         sliding() +\n         some() +\n         stable() +\n         start() +\n         strict() +\n         strip() +\n         then() +\n         to() +\n         treat() +\n         try() +\n         tumbling() +\n         type() +\n         union() +\n         unordered() +\n         validate() +\n         variable() +\n         version() +\n         when() +\n         where() +\n         window() +\n         xquery() +\n         zero-digit()\n         eq (109 * (109 + 1)) div 2\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
