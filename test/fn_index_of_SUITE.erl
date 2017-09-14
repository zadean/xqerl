-module('fn_index_of_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-indexof-mix-args-001'/1]).
-export(['fn-indexof-mix-args-002'/1]).
-export(['fn-indexof-mix-args-003'/1]).
-export(['fn-indexof-mix-args-004'/1]).
-export(['fn-indexof-mix-args-005'/1]).
-export(['fn-indexof-mix-args-006'/1]).
-export(['fn-indexof-mix-args-007'/1]).
-export(['fn-indexof-mix-args-008'/1]).
-export(['fn-indexof-mix-args-009'/1]).
-export(['fn-indexof-mix-args-010'/1]).
-export(['fn-indexof-mix-args-011'/1]).
-export(['fn-indexof-mix-args-012'/1]).
-export(['fn-indexof-mix-args-013'/1]).
-export(['fn-indexof-mix-args-014'/1]).
-export(['fn-indexof-mix-args-015'/1]).
-export(['fn-indexof-mix-args-016'/1]).
-export(['fn-indexof-mix-args-017'/1]).
-export(['fn-indexof-mix-args-018'/1]).
-export(['fn-indexof-mix-args-019'/1]).
-export(['fn-indexof-mix-args-020'/1]).
-export(['fn-indexof-mix-args-021'/1]).
-export(['fn-indexof-mix-args-022'/1]).
-export(['K-SeqIndexOfFunc-1'/1]).
-export(['K-SeqIndexOfFunc-2'/1]).
-export(['K-SeqIndexOfFunc-3'/1]).
-export(['K-SeqIndexOfFunc-4'/1]).
-export(['K-SeqIndexOfFunc-5'/1]).
-export(['K-SeqIndexOfFunc-6'/1]).
-export(['K-SeqIndexOfFunc-7'/1]).
-export(['K-SeqIndexOfFunc-8'/1]).
-export(['K-SeqIndexOfFunc-9'/1]).
-export(['K-SeqIndexOfFunc-10'/1]).
-export(['K-SeqIndexOfFunc-11'/1]).
-export(['K-SeqIndexOfFunc-12'/1]).
-export(['K-SeqIndexOfFunc-13'/1]).
-export(['K-SeqIndexOfFunc-14'/1]).
-export(['K-SeqIndexOfFunc-15'/1]).
-export(['K-SeqIndexOfFunc-16'/1]).
-export(['K-SeqIndexOfFunc-17'/1]).
-export(['K-SeqIndexOfFunc-18'/1]).
-export(['K-SeqIndexOfFunc-19'/1]).
-export(['K-SeqIndexOfFunc-20'/1]).
-export(['K-SeqIndexOfFunc-21'/1]).
-export(['K-SeqIndexOfFunc-22'/1]).
-export(['K-SeqIndexOfFunc-23'/1]).
-export(['K-SeqIndexOfFunc-24'/1]).
-export(['K-SeqIndexOfFunc-25'/1]).
-export(['cbcl-fn-indexof-1'/1]).
-export(['cbcl-fn-indexof-2'/1]).
-export(['cbcl-fn-indexof-3'/1]).
-export(['cbcl-fn-indexof-4'/1]).
-export(['cbcl-fn-indexof-5'/1]).
-export(['cbcl-fn-indexof-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-indexof-mix-args-001',
   'fn-indexof-mix-args-002',
   'fn-indexof-mix-args-003',
   'fn-indexof-mix-args-004',
   'fn-indexof-mix-args-005',
   'fn-indexof-mix-args-006',
   'fn-indexof-mix-args-007',
   'fn-indexof-mix-args-008',
   'fn-indexof-mix-args-009',
   'fn-indexof-mix-args-010',
   'fn-indexof-mix-args-011',
   'fn-indexof-mix-args-012',
   'fn-indexof-mix-args-013',
   'fn-indexof-mix-args-014',
   'fn-indexof-mix-args-015',
   'fn-indexof-mix-args-016',
   'fn-indexof-mix-args-017',
   'fn-indexof-mix-args-018',
   'fn-indexof-mix-args-019',
   'fn-indexof-mix-args-020',
   'fn-indexof-mix-args-021',
   'fn-indexof-mix-args-022',
   'K-SeqIndexOfFunc-1',
   'K-SeqIndexOfFunc-2',
   'K-SeqIndexOfFunc-3',
   'K-SeqIndexOfFunc-4',
   'K-SeqIndexOfFunc-5',
   'K-SeqIndexOfFunc-6',
   'K-SeqIndexOfFunc-7',
   'K-SeqIndexOfFunc-8',
   'K-SeqIndexOfFunc-9',
   'K-SeqIndexOfFunc-10',
   'K-SeqIndexOfFunc-11',
   'K-SeqIndexOfFunc-12',
   'K-SeqIndexOfFunc-13',
   'K-SeqIndexOfFunc-14',
   'K-SeqIndexOfFunc-15',
   'K-SeqIndexOfFunc-16',
   'K-SeqIndexOfFunc-17',
   'K-SeqIndexOfFunc-18',
   'K-SeqIndexOfFunc-19',
   'K-SeqIndexOfFunc-20',
   'K-SeqIndexOfFunc-21',
   'K-SeqIndexOfFunc-22',
   'K-SeqIndexOfFunc-23',
   'K-SeqIndexOfFunc-24',
   'K-SeqIndexOfFunc-25',
   'cbcl-fn-indexof-1',
   'cbcl-fn-indexof-2',
   'cbcl-fn-indexof-3',
   'cbcl-fn-indexof-4',
   'cbcl-fn-indexof-5',
   'cbcl-fn-indexof-006'].
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
environment('bib') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/bib.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-indexof-mix-args-001'(_Config) ->
   Qry = "fn:index-of ((10, 20, 30, 30, 20, 10), 20)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 5
      ",
   case xqerl_types:string_value(Res) of
             "2 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-002'(_Config) ->
   Qry = "fn:index-of ((10, 20, 30, 40), 35)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-003'(_Config) ->
   Qry = "fn:index-of ((\"a\", \"sport\", \"and\", \"a\", \"pastime\"), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4
      ",
   case xqerl_types:string_value(Res) of
             "1 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-004'(_Config) ->
   Qry = "fn:index-of((\"sport\", \"\", \"and\", \"\", \"\", \"pastime\"), \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 5
      ",
   case xqerl_types:string_value(Res) of
             "2 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-005'(_Config) ->
   Qry = "fn:index-of((),\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-006'(_Config) ->
   Qry = "fn:index-of((\"sport\"), \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-007'(_Config) ->
   Qry = "fn:index-of((),fn:exactly-one(xs:untypedAtomic('')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-008'(_Config) ->
   Qry = "fn:index-of((xs:float('NaN')), fn:exactly-one(xs:float('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-009'(_Config) ->
   Qry = "fn:index-of((xs:double('NaN')), fn:exactly-one(xs:double('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-010'(_Config) ->
   Qry = "fn:index-of((xs:double('INF')), fn:exactly-one(xs:double('INF')))",
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
'fn-indexof-mix-args-011'(_Config) ->
   Qry = "fn:index-of((xs:double('-INF')), fn:exactly-one(xs:double('-INF')))",
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
'fn-indexof-mix-args-012'(_Config) ->
   Qry = "fn:index-of((xs:decimal('9.99999999999999999999999999')), fn:exactly-one(xs:decimal('9.99999999999999999999999999')))",
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
'fn-indexof-mix-args-013'(_Config) ->
   Qry = "fn:index-of((xs:decimal('9.99999999999999999999999999')), fn:exactly-one(xs:decimal('9.9999999999999999999999999')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-014'(_Config) ->
   Qry = "fn:index-of((xs:positiveInteger('1'),xs:positiveInteger('2')), fn:exactly-one(xs:positiveInteger('2')))",
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
'fn-indexof-mix-args-015'(_Config) ->
   Qry = "fn:index-of((xs:negativeInteger('-2'), xs:negativeInteger('-1')), fn:exactly-one(xs:negativeInteger('-1')))",
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
'fn-indexof-mix-args-016'(_Config) ->
   Qry = "fn:index-of((1, (1,2,3)),1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2
      ",
   case xqerl_types:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-017'(_Config) ->
   Qry = "fn:index-of(((1),(1), (2,1), (0,1)),1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 4 6
      ",
   case xqerl_types:string_value(Res) of
             "1 2 4 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-018'(_Config) ->
   Qry = "fn:index-of((/bib/book/publisher), \"Addison-Wesley\")",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2
      ",
   case xqerl_types:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-019'(_Config) ->
   Qry = "fn:index-of((/bib/book/publisher), /bib/book[1]/publisher[1]/text() cast as xs:string)",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2
      ",
   case xqerl_types:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-020'(_Config) ->
   Qry = "fn:index-of((\"sport\", \"\", \"and\", \"\", \"\", \"pastime\"), \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 5
      ",
   case xqerl_types:string_value(Res) of
             "2 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-021'(_Config) ->
   Qry = "fn:index-of( (\"\", 1, \"\"), \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 3
      ",
   case xqerl_types:string_value(Res) of
             "1 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-indexof-mix-args-022'(_Config) ->
   Qry = "fn:index-of((1,2,3,4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqIndexOfFunc-1'(_Config) ->
   Qry = "index-of()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqIndexOfFunc-2'(_Config) ->
   Qry = "index-of(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqIndexOfFunc-3'(_Config) ->
   Qry = "index-of((1, 2, 3), 1, ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-SeqIndexOfFunc-4'(_Config) ->
   Qry = "index-of(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0002'}) end.
'K-SeqIndexOfFunc-5'(_Config) ->
   Qry = "index-of(\"a string\", \"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqIndexOfFunc-6'(_Config) ->
   Qry = "index-of(\"a string\", \"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
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
'K-SeqIndexOfFunc-7'(_Config) ->
   Qry = "empty(index-of(xs:double(\"NaN\"), xs:float(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-8'(_Config) ->
   Qry = "empty(index-of(xs:float(\"NaN\"), xs:double(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-9'(_Config) ->
   Qry = "empty(index-of(xs:float(\"NaN\"), xs:float(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-10'(_Config) ->
   Qry = "empty(index-of(xs:double(\"NaN\"), xs:double(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-11'(_Config) ->
   Qry = "empty(index-of(4, \"4\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-12'(_Config) ->
   Qry = "index-of(4, 4)",
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
'K-SeqIndexOfFunc-13'(_Config) ->
   Qry = "empty(index-of((), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-14'(_Config) ->
   Qry = "index-of(4, 4)",
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
'K-SeqIndexOfFunc-15'(_Config) ->
   Qry = "deep-equal((1, 2, 3, 4, 5, 6), index-of((4, 4, 4, 4, 4, 4), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-16'(_Config) ->
   Qry = "empty(index-of(xs:anyURI(\"example.com/\"), xs:hexBinary(\"FF\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-17'(_Config) ->
   Qry = "index-of(xs:untypedAtomic(\"example.com/\"), xs:anyURI(\"example.com/\"))",
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
'K-SeqIndexOfFunc-18'(_Config) ->
   Qry = "deep-equal(index-of((1, 2, \"three\", 5, 5, 6), 5), (4, 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-19'(_Config) ->
   Qry = "empty(index-of((10, 20, 30, 40), 35))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-20'(_Config) ->
   Qry = "deep-equal(index-of((10, 20, 30, 30, 20, 10), 20), (2, 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-21'(_Config) ->
   Qry = "deep-equal(index-of((\"a\", \"sport\", \"and\", \"a\", \"pastime\"), \"a\"), (1, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-22'(_Config) ->
   Qry = "count(index-of((1, 2, 3, 2, 1), 2)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-23'(_Config) ->
   Qry = "count(index-of((1, 2, 3, 2, 1), 1)) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-24'(_Config) ->
   Qry = "count(index-of((1, 2, 3, 2, 1), 3)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqIndexOfFunc-25'(_Config) ->
   Qry = "count(index-of((1, 2, 3, 2, 1), 4)) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-indexof-1'(_Config) ->
   Qry = "index-of(1 to 5,4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
   case xqerl_types:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-indexof-2'(_Config) ->
   Qry = "index-of(exactly-one((1 to 10)[. div 5 = 1]),5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-indexof-3'(_Config) ->
   Qry = "boolean(index-of((1 to 10)[. mod 2 = 0],4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-indexof-4'(_Config) ->
   Qry = "boolean(index-of((1 to 10)[. mod 2 = 0],5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-indexof-5'(_Config) ->
   Qry = "index-of((1 to 10,(1 to 10)[. mod 2 = 0]),4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 12
      ",
   case xqerl_types:string_value(Res) of
             "4 12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-indexof-006'(_Config) ->
   Qry = "index-of(1 to 10,(1 to 10)[. div 2 = 0][1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
