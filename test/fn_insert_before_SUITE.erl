-module('fn_insert_before_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-insert-before-mix-args-001'/1]).
-export(['fn-insert-before-mix-args-002'/1]).
-export(['fn-insert-before-mix-args-003'/1]).
-export(['fn-insert-before-mix-args-004'/1]).
-export(['fn-insert-before-mix-args-005'/1]).
-export(['fn-insert-before-mix-args-006'/1]).
-export(['fn-insert-before-mix-args-007'/1]).
-export(['fn-insert-before-mix-args-008'/1]).
-export(['fn-insert-before-mix-args-009'/1]).
-export(['fn-insert-before-mix-args-010'/1]).
-export(['fn-insert-before-mix-args-011'/1]).
-export(['fn-insert-before-mix-args-012'/1]).
-export(['fn-insert-before-mix-args-013'/1]).
-export(['fn-insert-before-mix-args-014'/1]).
-export(['fn-insert-before-mix-args-015'/1]).
-export(['fn-insert-before-mix-args-016'/1]).
-export(['fn-insert-before-mix-args-017'/1]).
-export(['fn-insert-before-mix-args-018'/1]).
-export(['fn-insert-before-mix-args-019'/1]).
-export(['fn-insert-before-mix-args-020'/1]).
-export(['K-SeqInsertBeforeFunc-1'/1]).
-export(['K-SeqInsertBeforeFunc-2'/1]).
-export(['K-SeqInsertBeforeFunc-3'/1]).
-export(['K-SeqInsertBeforeFunc-4'/1]).
-export(['K-SeqInsertBeforeFunc-5'/1]).
-export(['K-SeqInsertBeforeFunc-6'/1]).
-export(['K-SeqInsertBeforeFunc-7'/1]).
-export(['K-SeqInsertBeforeFunc-8'/1]).
-export(['K-SeqInsertBeforeFunc-9'/1]).
-export(['K-SeqInsertBeforeFunc-10'/1]).
-export(['K-SeqInsertBeforeFunc-11'/1]).
-export(['K-SeqInsertBeforeFunc-12'/1]).
-export(['K-SeqInsertBeforeFunc-13'/1]).
-export(['K-SeqInsertBeforeFunc-14'/1]).
-export(['K-SeqInsertBeforeFunc-15'/1]).
-export(['K-SeqInsertBeforeFunc-16'/1]).
-export(['K-SeqInsertBeforeFunc-17'/1]).
-export(['K-SeqInsertBeforeFunc-18'/1]).
-export(['K-SeqInsertBeforeFunc-19'/1]).
-export(['K-SeqInsertBeforeFunc-20'/1]).
-export(['K-SeqInsertBeforeFunc-21'/1]).
-export(['cbcl-fn-insert-before-001'/1]).
-export(['cbcl-fn-insert-before-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-insert-before-mix-args-001',
   'fn-insert-before-mix-args-002',
   'fn-insert-before-mix-args-003',
   'fn-insert-before-mix-args-004',
   'fn-insert-before-mix-args-005',
   'fn-insert-before-mix-args-006',
   'fn-insert-before-mix-args-007',
   'fn-insert-before-mix-args-008',
   'fn-insert-before-mix-args-009',
   'fn-insert-before-mix-args-010',
   'fn-insert-before-mix-args-011',
   'fn-insert-before-mix-args-012',
   'fn-insert-before-mix-args-013',
   'fn-insert-before-mix-args-014',
   'fn-insert-before-mix-args-015',
   'fn-insert-before-mix-args-016',
   'fn-insert-before-mix-args-017',
   'fn-insert-before-mix-args-018',
   'fn-insert-before-mix-args-019',
   'fn-insert-before-mix-args-020',
   'K-SeqInsertBeforeFunc-1',
   'K-SeqInsertBeforeFunc-2',
   'K-SeqInsertBeforeFunc-3',
   'K-SeqInsertBeforeFunc-4',
   'K-SeqInsertBeforeFunc-5',
   'K-SeqInsertBeforeFunc-6',
   'K-SeqInsertBeforeFunc-7',
   'K-SeqInsertBeforeFunc-8',
   'K-SeqInsertBeforeFunc-9',
   'K-SeqInsertBeforeFunc-10',
   'K-SeqInsertBeforeFunc-11',
   'K-SeqInsertBeforeFunc-12',
   'K-SeqInsertBeforeFunc-13',
   'K-SeqInsertBeforeFunc-14',
   'K-SeqInsertBeforeFunc-15',
   'K-SeqInsertBeforeFunc-16',
   'K-SeqInsertBeforeFunc-17',
   'K-SeqInsertBeforeFunc-18',
   'K-SeqInsertBeforeFunc-19',
   'K-SeqInsertBeforeFunc-20',
   'K-SeqInsertBeforeFunc-21',
   'cbcl-fn-insert-before-001',
   'cbcl-fn-insert-before-002'].
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
'fn-insert-before-mix-args-001'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),1, \"z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"z\", \"a\", \"b\", \"c\"
      ",
 Tst = xqerl:run("\"z\", \"a\", \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-002'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),0, ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-003'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-004'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:string(\" \"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \" \", \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", \" \", \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-005'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:anyURI(\"www.example.com\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"www.example.com\", \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", \"www.example.com\", \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-006'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:integer(\"100\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", 100, \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", 100, \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-007'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:decimal(\"1.1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", 1.1, \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", 1.1, \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-008'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"1.1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", 1.1, \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", 1.1, \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-009'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:float('NaN'), \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", xs:float('NaN'), \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-010'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"-0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", 0, \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", 0, \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-011'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"-INF\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:float('-INF'), \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", xs:float('-INF'), \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-012'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:double(\"NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:double('NaN'),  \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", xs:double('NaN'),  \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-013'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:double(\"INF\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", xs:double('INF'), \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", xs:double('INF'), \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-014'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", true(), \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", true(), \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-015'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", false(), \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", false(), \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-016'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"true\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", true(), \"b\", \"c\"
      ",
 Tst = xqerl:run("\"a\", true(), \"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-017'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"false\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", false(),  \"b\",  \"c\"
      ",
 Tst = xqerl:run("\"a\", false(),  \"b\",  \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-018'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),4, xs:date(\"1993-03-31\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", \"c\", xs:date('1993-03-31')
      ",
 Tst = xqerl:run("\"a\", \"b\", \"c\", xs:date('1993-03-31')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-019'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),4, xs:dateTime(\"1972-12-31T00:00:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", \"c\", xs:dateTime('1972-12-31T00:00:00')
      ",
 Tst = xqerl:run("\"a\", \"b\", \"c\", xs:dateTime('1972-12-31T00:00:00')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-insert-before-mix-args-020'(_Config) ->
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),4, xs:time(\"12:30:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", \"c\", xs:time('12:30:00')
      ",
 Tst = xqerl:run("\"a\", \"b\", \"c\", xs:time('12:30:00')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-1'(_Config) ->
   Qry = "insert-before()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqInsertBeforeFunc-2'(_Config) ->
   Qry = "insert-before(\"wrong params\", 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqInsertBeforeFunc-3'(_Config) ->
   Qry = "insert-before(\"wrong params\", 2, 3, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqInsertBeforeFunc-4'(_Config) ->
   Qry = "insert-before((), (), \"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqInsertBeforeFunc-5'(_Config) ->
   Qry = "insert-before((), -31, \"a string\") eq \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-6'(_Config) ->
   Qry = "count(insert-before((1, 2, 3), 1, (4, 5, 6))) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-7'(_Config) ->
   Qry = "insert-before((), 1, 3) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-8'(_Config) ->
   Qry = "insert-before((), 1, \"a string\") eq \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-9'(_Config) ->
   Qry = "count(insert-before((), 1, (1, 2, 3))) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-10'(_Config) ->
   Qry = "insert-before((), 30, 7) eq 7",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-11'(_Config) ->
   Qry = "count(insert-before((1, 2, 3, 4), 30, ())) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-12'(_Config) ->
   Qry = "insert-before(9, 30, ()) eq 9",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-13'(_Config) ->
   Qry = "count(insert-before((1, 2, 3, 4), 1, ())) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-14'(_Config) ->
   Qry = "count(insert-before((1, 2, 3), 30, (4, 5, 6))) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-15'(_Config) ->
   Qry = "count(insert-before((), 30, (1, 2, 3))) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-16'(_Config) ->
   Qry = "count(insert-before((error(), 1), 1, (1, \"two\", 3))) > 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqInsertBeforeFunc-17'(_Config) ->
   Qry = "(insert-before((1, current-time(), 3), 1, (4, 5, 6))[last()] treat as xs:integer) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-18'(_Config) ->
   Qry = "(insert-before((1, current-time(), 3), 10, (4, 5, 6))[last()] treat as xs:integer) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-19'(_Config) ->
   Qry = "(insert-before((1, current-time(), 3), 10, (4, 5, 6))[last() - 3] treat as xs:integer) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-20'(_Config) ->
   Qry = "(insert-before((1, current-time(), 3), 10, ())[last()] treat as xs:integer) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqInsertBeforeFunc-21'(_Config) ->
   Qry = "empty(insert-before((1, current-time(), 3), 0, (4, 5, 6))[last() - 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-insert-before-001'(_Config) ->
   Qry = "insert-before(1 to 10,5,20 to 30)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 20 21 22 23 24 25 26 27 28 29 30 5 6 7 8 9 10
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 20 21 22 23 24 25 26 27 28 29 30 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-insert-before-002'(_Config) ->
   Qry = "
        insert-before((1 to 10,(20 to 30)[. mod 2 = 0],30 to 40),12,\"blah\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5 6 7 8 9 10 20 blah 22 24 26 28 30 30 31 32 33 34 35 36 37 38 39 40
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 10 20 blah 22 24 26 28 30 30 31 32 33 34 35 36 37 38 39 40" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
