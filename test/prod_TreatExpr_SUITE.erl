-module('prod_TreatExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['treat-as-1'/1]).
-export(['treat-as-2'/1]).
-export(['treat-as-3'/1]).
-export(['treat-as-4'/1]).
-export(['treat-as-5'/1]).
-export(['treat-as-6'/1]).
-export(['treat-as-7'/1]).
-export(['treat-as-8'/1]).
-export(['treat-as-9'/1]).
-export(['treat-as-10'/1]).
-export(['treat-as-11'/1]).
-export(['treat-as-12'/1]).
-export(['treat-as-13'/1]).
-export(['treat-as-14'/1]).
-export(['treat-as-15'/1]).
-export(['treat-as-16'/1]).
-export(['treat-as-17'/1]).
-export(['treat-as-18'/1]).
-export(['treat-as-19'/1]).
-export(['treat-as-20'/1]).
-export(['treat-as-21'/1]).
-export(['treat-as-22'/1]).
-export(['treat-as-23'/1]).
-export(['treat-as-24'/1]).
-export(['treat-as-25'/1]).
-export(['K-SeqExprTreat-1'/1]).
-export(['K-SeqExprTreat-2'/1]).
-export(['K-SeqExprTreat-3'/1]).
-export(['K-SeqExprTreat-4'/1]).
-export(['K-SeqExprTreat-5'/1]).
-export(['K-SeqExprTreat-6'/1]).
-export(['K-SeqExprTreat-7'/1]).
-export(['K-SeqExprTreat-8'/1]).
-export(['K-SeqExprTreat-9'/1]).
-export(['K-SeqExprTreat-10'/1]).
-export(['K-SeqExprTreat-11'/1]).
-export(['K-SeqExprTreat-12'/1]).
-export(['K-SeqExprTreat-13'/1]).
-export(['K-SeqExprTreat-14'/1]).
-export(['K-SeqExprTreat-15'/1]).
-export(['K-SeqExprTreat-16'/1]).
-export(['K-SeqExprTreat-17'/1]).
-export(['K2-SeqExprTreat-1'/1]).
-export(['K2-SeqExprTreat-2'/1]).
-export(['K2-SeqExprTreat-3'/1]).
-export(['K2-SeqExprTreat-4'/1]).
-export(['cbcl-treat-as-001'/1]).
-export(['cbcl-treat-as-002'/1]).
-export(['cbcl-treat-as-003'/1]).
-export(['cbcl-treat-as-004'/1]).
-export(['cbcl-treat-as-005'/1]).
-export(['cbcl-treat-as-006'/1]).
-export(['cbcl-treat-as-007'/1]).
-export(['cbcl-treat-as-008'/1]).
-export(['cbcl-treat-as-009'/1]).
-export(['cbcl-treat-as-010'/1]).
-export(['cbcl-treat-as-011'/1]).
-export(['cbcl-treat-as-012'/1]).
-export(['cbcl-treat-as-013'/1]).
-export(['cbcl-treat-as-014'/1]).
-export(['cbcl-treat-as-015'/1]).
-export(['cbcl-treat-as-016'/1]).
-export(['cbcl-treat-as-017'/1]).
-export(['cbcl-treat-as-018'/1]).
-export(['cbcl-treat-as-019'/1]).
-export(['cbcl-treat-as-020'/1]).
-export(['cbcl-treat-as-021'/1]).
-export(['cbcl-treat-as-022'/1]).
-export(['cbcl-treat-as-023'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'treat-as-1',
   'treat-as-2',
   'treat-as-3',
   'treat-as-4',
   'treat-as-5',
   'treat-as-6',
   'treat-as-7',
   'treat-as-8',
   'treat-as-9',
   'treat-as-10',
   'treat-as-11',
   'treat-as-12',
   'treat-as-13',
   'treat-as-14',
   'treat-as-15',
   'treat-as-16',
   'treat-as-17',
   'treat-as-18',
   'treat-as-19',
   'treat-as-20',
   'treat-as-21',
   'treat-as-22',
   'treat-as-23',
   'treat-as-24',
   'treat-as-25',
   'K-SeqExprTreat-1',
   'K-SeqExprTreat-2',
   'K-SeqExprTreat-3',
   'K-SeqExprTreat-4',
   'K-SeqExprTreat-5',
   'K-SeqExprTreat-6',
   'K-SeqExprTreat-7',
   'K-SeqExprTreat-8',
   'K-SeqExprTreat-9',
   'K-SeqExprTreat-10',
   'K-SeqExprTreat-11',
   'K-SeqExprTreat-12',
   'K-SeqExprTreat-13',
   'K-SeqExprTreat-14',
   'K-SeqExprTreat-15',
   'K-SeqExprTreat-16',
   'K-SeqExprTreat-17',
   'K2-SeqExprTreat-1',
   'K2-SeqExprTreat-2',
   'K2-SeqExprTreat-3',
   'K2-SeqExprTreat-4',
   'cbcl-treat-as-001',
   'cbcl-treat-as-002',
   'cbcl-treat-as-003',
   'cbcl-treat-as-004',
   'cbcl-treat-as-005',
   'cbcl-treat-as-006',
   'cbcl-treat-as-007',
   'cbcl-treat-as-008',
   'cbcl-treat-as-009',
   'cbcl-treat-as-010',
   'cbcl-treat-as-011',
   'cbcl-treat-as-012',
   'cbcl-treat-as-013',
   'cbcl-treat-as-014',
   'cbcl-treat-as-015',
   'cbcl-treat-as-016',
   'cbcl-treat-as-017',
   'cbcl-treat-as-018',
   'cbcl-treat-as-019',
   'cbcl-treat-as-020',
   'cbcl-treat-as-021',
   'cbcl-treat-as-022',
   'cbcl-treat-as-023'].
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
'treat-as-1'(_Config) ->
   Qry = "let $var := (100+200) div 2 return fn:concat($var treat as xs:string,\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'treat-as-2'(_Config) ->
   Qry = "let $var := \"String 1\" return fn:concat($var treat as xs:string,\"String 2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         String 1String 2
      ",
   case xqerl_test:string_value(Res) of
             "String 1String 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'treat-as-3'(_Config) ->
   Qry = "let $var := 100 return ($var treat as xs:integer) div 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         50
      ",
 Tst = xqerl:run("50"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-4'(_Config) ->
   Qry = "let $var := 100 return fn:abs($var treat as xs:decimal)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-5'(_Config) ->
   Qry = "let $var := xs:decimal(100) return fn:abs($var cast as xs:integer treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-6'(_Config) ->
   Qry = "let $var := xs:float(100) return fn:abs($var treat as xs:float)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-7'(_Config) ->
   Qry = "let $var := xs:double(100) return fn:abs($var treat as xs:double)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-8'(_Config) ->
   Qry = "let $var := xs:boolean(fn:true()) return fn:not($var treat as xs:boolean)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'treat-as-9'(_Config) ->
   Qry = "let $var := xs:date(\"2000-01-01+05:00\") return fn:year-from-date($var treat as xs:date)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2000
      ",
 Tst = xqerl:run("2000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-10'(_Config) ->
   Qry = "let $var := xs:dateTime(\"1999-05-31T13:20:00-05:00\") return fn:minutes-from-dateTime($var treat as xs:dateTime)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         20
      ",
 Tst = xqerl:run("20"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-11'(_Config) ->
   Qry = "let $var := xs:time(\"01:23:00+05:00\") return fn:hours-from-time($var treat as xs:time)",
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
'treat-as-12'(_Config) ->
   Qry = "let $var := 100 return ($var treat as xs:integer, $var treat as xs:integer, $var treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100 100 100
      ",
   case xqerl_test:string_value(Res) of
             "100 100 100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'treat-as-13'(_Config) ->
   Qry = "let $var := 100 return (xs:decimal($var) treat as xs:decimal, xs:double($var) treat as xs:double, xs:float($var) treat as xs:float, $var treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100 100 100 100
      ",
   case xqerl_test:string_value(Res) of
             "100 100 100 100" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'treat-as-14'(_Config) ->
   Qry = "let $var := -100 return fn:abs($var cast as xs:float treat as xs:float)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-15'(_Config) ->
   Qry = "let $var := -100 return fn:abs($var cast as xs:double treat as xs:double)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-16'(_Config) ->
   Qry = "let $var := xs:float(-100) return fn:abs($var cast as xs:integer treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-17'(_Config) ->
   Qry = "let $var := xs:double(-100) return fn:abs($var cast as xs:integer treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-18'(_Config) ->
   Qry = "let $var := xs:double(-100) return fn:abs($var cast as xs:float treat as xs:float)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-19'(_Config) ->
   Qry = "let $var := xs:float(-100) return fn:abs($var cast as xs:double treat as xs:double)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-20'(_Config) ->
   Qry = "let $var := xs:decimal(-100) return fn:abs($var cast as xs:double treat as xs:double)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-21'(_Config) ->
   Qry = "let $var := xs:decimal(-100) return fn:abs($var cast as xs:float treat as xs:float)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-22'(_Config) ->
   Qry = "let $var := xs:float(-100) return fn:abs($var cast as xs:decimal treat as xs:decimal)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-23'(_Config) ->
   Qry = "let $var := xs:double(-100) return fn:abs($var cast as xs:decimal treat as xs:decimal)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-24'(_Config) ->
   Qry = "let $var := (100+200) div 10 return ($var cast as xs:integer treat as xs:integer) + 10",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
 Tst = xqerl:run("40"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'treat-as-25'(_Config) ->
   Qry = "let $var := (100+200) div 10 return ($var cast as xs:integer treat as xs:integer) - 10",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         20
      ",
 Tst = xqerl:run("20"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqExprTreat-1'(_Config) ->
   Qry = "3 treat as xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'K-SeqExprTreat-2'(_Config) ->
   Qry = "xs:double(\"3\") treat as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'K-SeqExprTreat-3'(_Config) ->
   Qry = "xs:anyURI(\"example.com/\") treat as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'K-SeqExprTreat-4'(_Config) ->
   Qry = "3.0 treat as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'K-SeqExprTreat-5'(_Config) ->
   Qry = "xs:integer(3) treat as xs:decimal instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprTreat-6'(_Config) ->
   Qry = "\"3\" treat as xs:string eq '3'",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprTreat-7'(_Config) ->
   Qry = "xs:integer(\"3\") treat as xs:decimal instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprTreat-8'(_Config) ->
   Qry = "3 treat as prefixDoesNotExist:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K-SeqExprTreat-9'(_Config) ->
   Qry = "3 treat as xs:doesNotExist",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'K-SeqExprTreat-10'(_Config) ->
   Qry = "1 treat as empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'K-SeqExprTreat-11'(_Config) ->
   Qry = "(\"asda\" treat as xs:string +) eq \"asda\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprTreat-12'(_Config) ->
   Qry = "(\"asda\" treat as xs:string *) eq \"asda\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprTreat-13'(_Config) ->
   Qry = "(3 treat as xs:integer * * 3) eq 9",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprTreat-14'(_Config) ->
   Qry = "(3 treat as xs:integer ? * 3) eq 9",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprTreat-15'(_Config) ->
   Qry = "(4 treat as item() + - 5) = ((4 treat as item()+) - 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprTreat-16'(_Config) ->
   Qry = "3 treat as item(",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-SeqExprTreat-17'(_Config) ->
   Qry = "(remove((5, 1e0), 2) treat as xs:integer) eq 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprTreat-1'(_Config) ->
   Qry = "xs:decimal(3) treat as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'K2-SeqExprTreat-2'(_Config) ->
   Qry = "3 treat as item()+ + +1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
 Tst = xqerl:run("4"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-SeqExprTreat-3'(_Config) ->
   Qry = "fn:root(self::node()) treat as document-node()/X",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-SeqExprTreat-4'(_Config) ->
   Qry = "empty(<e/>/(* treat as empty-sequence()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-treat-as-001'(_Config) ->
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 6 8 10
      ",
   case xqerl_test:string_value(Res) of
             "2 4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-002'(_Config) ->
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 6 8 10
      ",
   case xqerl_test:string_value(Res) of
             "2 4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-003'(_Config) ->
   Qry = "zero-or-one((1 to 10)[. div 2 = 1]) treat as xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-004'(_Config) ->
   Qry = "zero-or-one((1 to 10)[. div 2 = 1]) treat as xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-005'(_Config) ->
   Qry = "exactly-one((1 to 10)[. div 2 = 1]) treat as xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-006'(_Config) ->
   Qry = "exactly-one((1 to 10)[. div 2 = 1]) treat as xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-007'(_Config) ->
   Qry = "count((1 to 10)[. mod 2 = 0] treat as xs:integer+)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-008'(_Config) ->
   Qry = "subsequence((1 to 10)[. mod 2 = 0] treat as xs:integer+,1,2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4
      ",
   case xqerl_test:string_value(Res) of
             "2 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-009'(_Config) ->
   Qry = "(1 to 10)[. div 2 = 0] treat as xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-010'(_Config) ->
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:negativeInteger+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-011'(_Config) ->
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-012'(_Config) ->
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:negativeInteger*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-013'(_Config) ->
   Qry = "zero-or-one((1 to 10)[. div 2 = 0]) treat as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-014'(_Config) ->
   Qry = "zero-or-one((1 to 10)[. div 2 = 0]) treat as xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-015'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer) { $arg * 2 };
        local:double(local:range(0) treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-016'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer) { $arg * 2 };
        local:double(local:range(1) treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-017'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer) { $arg * 2 };
        local:double(local:range(3) treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-018'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer?) { $arg * 2 };
        empty(local:double(local:range(0) treat as xs:integer?))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-treat-as-019'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer?) { $arg * 2 };
        local:double(local:range(1) treat as xs:integer?)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-020'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer?) { $arg * 2 };
        local:double(local:range(2) treat as xs:integer?)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-021'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer+) { for $a in $arg return $a * 2 };
        local:double(local:range(0) treat as xs:integer+)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'cbcl-treat-as-022'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer+) { for $a in $arg return $a * 2 };
        local:double(local:range(1) treat as xs:integer+)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-treat-as-023'(_Config) ->
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer+) { for $a in $arg return $a * 2 };
        local:double(local:range(2) treat as xs:integer+)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4
      ",
   case xqerl_test:string_value(Res) of
             "2 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
