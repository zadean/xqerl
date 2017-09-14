-module('fn_remove_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-remove-mix-args-001'/1]).
-export(['fn-remove-mix-args-002'/1]).
-export(['fn-remove-mix-args-003'/1]).
-export(['fn-remove-mix-args-004'/1]).
-export(['fn-remove-mix-args-005'/1]).
-export(['fn-remove-mix-args-006'/1]).
-export(['fn-remove-mix-args-007'/1]).
-export(['fn-remove-mix-args-008'/1]).
-export(['fn-remove-mix-args-009'/1]).
-export(['fn-remove-mix-args-010'/1]).
-export(['fn-remove-mix-args-011'/1]).
-export(['fn-remove-mix-args-012'/1]).
-export(['fn-remove-mix-args-013'/1]).
-export(['fn-remove-mix-args-014'/1]).
-export(['fn-remove-mix-args-015'/1]).
-export(['fn-remove-mix-args-016'/1]).
-export(['fn-remove-mix-args-017'/1]).
-export(['fn-remove-mix-args-018'/1]).
-export(['fn-remove-mix-args-019'/1]).
-export(['fn-remove-mix-args-020'/1]).
-export(['K-SeqRemoveFunc-1'/1]).
-export(['K-SeqRemoveFunc-2'/1]).
-export(['K-SeqRemoveFunc-3'/1]).
-export(['K-SeqRemoveFunc-4'/1]).
-export(['K-SeqRemoveFunc-5'/1]).
-export(['K-SeqRemoveFunc-6'/1]).
-export(['K-SeqRemoveFunc-7'/1]).
-export(['K-SeqRemoveFunc-8'/1]).
-export(['K-SeqRemoveFunc-9'/1]).
-export(['K-SeqRemoveFunc-10'/1]).
-export(['K-SeqRemoveFunc-11'/1]).
-export(['K-SeqRemoveFunc-12'/1]).
-export(['K-SeqRemoveFunc-13'/1]).
-export(['K-SeqRemoveFunc-14'/1]).
-export(['K-SeqRemoveFunc-15'/1]).
-export(['K-SeqRemoveFunc-16'/1]).
-export(['K-SeqRemoveFunc-17'/1]).
-export(['K-SeqRemoveFunc-18'/1]).
-export(['K-SeqRemoveFunc-19'/1]).
-export(['K-SeqRemoveFunc-20'/1]).
-export(['K-SeqRemoveFunc-21'/1]).
-export(['K-SeqRemoveFunc-22'/1]).
-export(['K-SeqRemoveFunc-23'/1]).
-export(['K-SeqRemoveFunc-24'/1]).
-export(['cbcl-fn-remove-001'/1]).
-export(['cbcl-fn-remove-002'/1]).
-export(['cbcl-fn-remove-003'/1]).
-export(['cbcl-fn-remove-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-remove-mix-args-001',
   'fn-remove-mix-args-002',
   'fn-remove-mix-args-003',
   'fn-remove-mix-args-004',
   'fn-remove-mix-args-005',
   'fn-remove-mix-args-006',
   'fn-remove-mix-args-007',
   'fn-remove-mix-args-008',
   'fn-remove-mix-args-009',
   'fn-remove-mix-args-010',
   'fn-remove-mix-args-011',
   'fn-remove-mix-args-012',
   'fn-remove-mix-args-013',
   'fn-remove-mix-args-014',
   'fn-remove-mix-args-015',
   'fn-remove-mix-args-016',
   'fn-remove-mix-args-017',
   'fn-remove-mix-args-018',
   'fn-remove-mix-args-019',
   'fn-remove-mix-args-020',
   'K-SeqRemoveFunc-1',
   'K-SeqRemoveFunc-2',
   'K-SeqRemoveFunc-3',
   'K-SeqRemoveFunc-4',
   'K-SeqRemoveFunc-5',
   'K-SeqRemoveFunc-6',
   'K-SeqRemoveFunc-7',
   'K-SeqRemoveFunc-8',
   'K-SeqRemoveFunc-9',
   'K-SeqRemoveFunc-10',
   'K-SeqRemoveFunc-11',
   'K-SeqRemoveFunc-12',
   'K-SeqRemoveFunc-13',
   'K-SeqRemoveFunc-14',
   'K-SeqRemoveFunc-15',
   'K-SeqRemoveFunc-16',
   'K-SeqRemoveFunc-17',
   'K-SeqRemoveFunc-18',
   'K-SeqRemoveFunc-19',
   'K-SeqRemoveFunc-20',
   'K-SeqRemoveFunc-21',
   'K-SeqRemoveFunc-22',
   'K-SeqRemoveFunc-23',
   'K-SeqRemoveFunc-24',
   'cbcl-fn-remove-001',
   'cbcl-fn-remove-002',
   'cbcl-fn-remove-003',
   'cbcl-fn-remove-004'].
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
'fn-remove-mix-args-001'(_Config) ->
   Qry = "fn:remove ( (\"a\", \"b\", \"c\"), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"b\", \"c\"
      ",
 Tst = xqerl:run("\"b\", \"c\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-002'(_Config) ->
   Qry = "fn:remove ( (\"a\", \"b\", \"c\"), 0)",
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
'fn-remove-mix-args-003'(_Config) ->
   Qry = "fn:remove ( (\"a\", \"b\", \"c\", true()), 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\", true()
      ",
 Tst = xqerl:run("\"a\", \"b\", true()"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-004'(_Config) ->
   Qry = "fn:remove ( (xs:string(\"xyz\"), (), (), \"a\" , \"b\"), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"xyz\", \"b\"
      ",
 Tst = xqerl:run("\"xyz\", \"b\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-005'(_Config) ->
   Qry = "fn:remove( (xs:anyURI(\"www.example.com\"), \"a\", (\"\"), \"b\"), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"www.example.com\", \"\", \"b\"
      ",
 Tst = xqerl:run("\"www.example.com\", \"\", \"b\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-006'(_Config) ->
   Qry = "fn:remove( (xs:anyURI(\"www.example.com\"), \"a\", (\"\"), \"b\"), 10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"www.example.com\", \"a\", \"\",  \"b\"
      ",
 Tst = xqerl:run("\"www.example.com\", \"a\", \"\",  \"b\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-007'(_Config) ->
   Qry = "fn:remove( (xs:anyURI(\"www.example.com\"), \"a\", (\"\"), \"b\"), -20)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"www.example.com\", \"a\", \"\",  \"b\"
      ",
 Tst = xqerl:run("\"www.example.com\", \"a\", \"\",  \"b\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-008'(_Config) ->
   Qry = "fn:remove( (xs:integer(\"100\"), xs:string(\"abc\")), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abc\"
      ",
 Tst = xqerl:run("\"abc\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-009'(_Config) ->
   Qry = "fn:remove( (xs:decimal(\"1.01\"), xs:integer(\"12\"), xs:anyURI(\"www.example.com\")),3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.01, 12
      ",
 Tst = xqerl:run("1.01, 12"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-010'(_Config) ->
   Qry = "fn:remove( (xs:float(\"1.01\"), xs:string(\"a\")), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.01
      ",
 Tst = xqerl:run("1.01"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-011'(_Config) ->
   Qry = "fn:remove( (xs:float(\"NaN\"), 100, (), 2), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float('NaN'), 2
      ",
 Tst = xqerl:run("xs:float('NaN'), 2"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-012'(_Config) ->
   Qry = "fn:remove( (xs:float(\"-INF\"), xs:decimal(\"2.34\"), \"abc\"), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float(\"-INF\"), \"abc\"
      ",
 Tst = xqerl:run("xs:float(\"-INF\"), \"abc\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-013'(_Config) ->
   Qry = "fn:remove( (xs:double(\"1.34\"), xs:float(\"INF\"), true()), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float(\"INF\"), true()
      ",
 Tst = xqerl:run("xs:float(\"INF\"), true()"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-014'(_Config) ->
   Qry = "fn:remove( (xs:double(\"INF\"), 2, 3), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:double(\"INF\"), 3
      ",
 Tst = xqerl:run("xs:double(\"INF\"), 3"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-015'(_Config) ->
   Qry = "fn:remove( (xs:double(\"NaN\"), \"a\", \"b\"), 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:double(\"NaN\"), \"a\"
      ",
 Tst = xqerl:run("xs:double(\"NaN\"), \"a\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-016'(_Config) ->
   Qry = "fn:remove( (xs:boolean(\"1\"), xs:double(\"-INF\"), \"s\"), 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), xs:double(\"-INF\")
      ",
 Tst = xqerl:run("true(), xs:double(\"-INF\")"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-017'(_Config) ->
   Qry = "fn:remove( (xs:boolean(\"0\")), 2 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-018'(_Config) ->
   Qry = "fn:remove( (xs:boolean(\"true\"), xs:date(\"1993-03-31\"), 4, \"a\"),3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), xs:date('1993-03-31'), \"a\"
      ",
 Tst = xqerl:run("true(), xs:date('1993-03-31'), \"a\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-019'(_Config) ->
   Qry = "fn:remove( (xs:dateTime(\"1972-12-31T00:00:00\"), xs:boolean(\"false\"), (), (\" \")) ,3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dateTime(\"1972-12-31T00:00:00\"), false()
      ",
 Tst = xqerl:run("xs:dateTime(\"1972-12-31T00:00:00\"), false()"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-remove-mix-args-020'(_Config) ->
   Qry = "fn:remove( (xs:time(\"12:30:00\"), xs:decimal(\"2.000003\"), 2), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:time(\"12:30:00\"), 2
      ",
 Tst = xqerl:run("xs:time(\"12:30:00\"), 2"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-1'(_Config) ->
   Qry = "remove()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqRemoveFunc-2'(_Config) ->
   Qry = "remove(1, 2, \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqRemoveFunc-3'(_Config) ->
   Qry = "count(remove((1, 2, 3), 0)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-4'(_Config) ->
   Qry = "count(remove((1, 2, 3), -4)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-5'(_Config) ->
   Qry = "empty(remove((), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqRemoveFunc-6'(_Config) ->
   Qry = "remove((\"one\", 2, 3), 1) instance of xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-7'(_Config) ->
   Qry = "remove((1, \"two\", 3), 2) instance of xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-8'(_Config) ->
   Qry = "remove((1, 2, \"three\"), 3) instance of xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-9'(_Config) ->
   Qry = "count(remove((\"one\", 2, 3), 1)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-10'(_Config) ->
   Qry = "count(remove((1, \"two\", 3), 2)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-11'(_Config) ->
   Qry = "count(remove((1, 2, \"three\"), 3)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-12'(_Config) ->
   Qry = "remove((3.1, \"four\"), 1)",
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
'K-SeqRemoveFunc-13'(_Config) ->
   Qry = "remove(error(), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqRemoveFunc-14'(_Config) ->
   Qry = "remove((5, 1e0), 2) eq 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqRemoveFunc-15'(_Config) ->
   Qry = "5 eq remove((5, 1e0), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqRemoveFunc-16'(_Config) ->
   Qry = "deep-equal((1, 2), (1, 2)[remove((true(), \"a string\"), 2)]) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqRemoveFunc-17'(_Config) ->
   Qry = "remove((4, xs:untypedAtomic(\"4\")), 1) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqRemoveFunc-18'(_Config) ->
   Qry = "4 eq remove((4, xs:untypedAtomic(\"1\")), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqRemoveFunc-19'(_Config) ->
   Qry = "count(remove(current-time(), 1)) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-20'(_Config) ->
   Qry = "empty(remove(current-time(), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqRemoveFunc-21'(_Config) ->
   Qry = "remove((1, 2, 3, current-time()), 4)[last()]",
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
'K-SeqRemoveFunc-22'(_Config) ->
   Qry = "remove((1, 2, 3, current-time()), 4)[last() - 1]",
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
'K-SeqRemoveFunc-23'(_Config) ->
   Qry = "remove((1, 2, 3, current-time()), 9)[last() - 1]",
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
'K-SeqRemoveFunc-24'(_Config) ->
   Qry = "empty(remove((1, 2, 3, current-time()), 9)[last() - 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-remove-001'(_Config) ->
   Qry = "remove(1 to 10,exactly-one((1 to 10)[. div 2 = 2]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 5 6 7 8 9 10
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-remove-002'(_Config) ->
   Qry = "remove(1 to 10,4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 5 6 7 8 9 10
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-remove-003'(_Config) ->
   Qry = "remove((1 to 10)[. mod 2 = 0],4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 6 10
      ",
   case xqerl_types:string_value(Res) of
             "2 4 6 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-remove-004'(_Config) ->
   Qry = "
        remove(((1 to 10)[. mod 2 = 0],\"blah\",(1 to 10)[. mod 2 = 0]),4)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 6 10 blah 2 4 6 8 10
      ",
   case xqerl_types:string_value(Res) of
             "2 4 6 10 blah 2 4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
