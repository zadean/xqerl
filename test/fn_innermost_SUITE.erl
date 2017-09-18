-module('fn_innermost_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-innermost-001'/1]).
-export(['fn-innermost-002'/1]).
-export(['fn-innermost-003'/1]).
-export(['fn-innermost-004'/1]).
-export(['fn-innermost-005'/1]).
-export(['fn-innermost-006'/1]).
-export(['fn-innermost-007'/1]).
-export(['fn-innermost-008'/1]).
-export(['fn-innermost-009'/1]).
-export(['fn-innermost-010'/1]).
-export(['fn-innermost-011'/1]).
-export(['fn-innermost-012'/1]).
-export(['fn-innermost-013'/1]).
-export(['fn-innermost-014'/1]).
-export(['fn-innermost-015'/1]).
-export(['fn-innermost-016'/1]).
-export(['fn-innermost-017'/1]).
-export(['fn-innermost-018'/1]).
-export(['fn-innermost-019'/1]).
-export(['fn-innermost-020'/1]).
-export(['fn-innermost-021'/1]).
-export(['fn-innermost-022'/1]).
-export(['fn-innermost-023'/1]).
-export(['fn-innermost-024'/1]).
-export(['fn-innermost-025'/1]).
-export(['fn-innermost-026'/1]).
-export(['fn-innermost-027'/1]).
-export(['fn-innermost-028'/1]).
-export(['fn-innermost-029'/1]).
-export(['fn-innermost-030'/1]).
-export(['fn-innermost-031'/1]).
-export(['fn-innermost-032'/1]).
-export(['fn-innermost-033'/1]).
-export(['fn-innermost-034'/1]).
-export(['fn-innermost-035'/1]).
-export(['fn-innermost-036'/1]).
-export(['fn-innermost-037'/1]).
-export(['fn-innermost-038'/1]).
-export(['fn-innermost-039'/1]).
-export(['fn-innermost-040'/1]).
-export(['fn-innermost-041'/1]).
-export(['fn-innermost-042'/1]).
-export(['fn-innermost-043'/1]).
-export(['fn-innermost-044'/1]).
-export(['fn-innermost-045'/1]).
-export(['fn-innermost-046'/1]).
-export(['fn-innermost-047'/1]).
-export(['fn-innermost-048'/1]).
-export(['fn-innermost-049'/1]).
-export(['fn-innermost-050'/1]).
-export(['fn-innermost-051'/1]).
-export(['fn-innermost-052'/1]).
-export(['fn-innermost-053'/1]).
-export(['fn-innermost-054'/1]).
-export(['fn-innermost-055'/1]).
-export(['fn-innermost-056'/1]).
-export(['fn-innermost-057'/1]).
-export(['fn-innermost-058'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-innermost-001',
   'fn-innermost-002',
   'fn-innermost-003',
   'fn-innermost-004',
   'fn-innermost-005',
   'fn-innermost-006',
   'fn-innermost-007',
   'fn-innermost-008',
   'fn-innermost-009',
   'fn-innermost-010',
   'fn-innermost-011',
   'fn-innermost-012',
   'fn-innermost-013',
   'fn-innermost-014',
   'fn-innermost-015',
   'fn-innermost-016',
   'fn-innermost-017',
   'fn-innermost-018',
   'fn-innermost-019',
   'fn-innermost-020',
   'fn-innermost-021',
   'fn-innermost-022',
   'fn-innermost-023',
   'fn-innermost-024',
   'fn-innermost-025',
   'fn-innermost-026',
   'fn-innermost-027',
   'fn-innermost-028',
   'fn-innermost-029',
   'fn-innermost-030',
   'fn-innermost-031',
   'fn-innermost-032',
   'fn-innermost-033',
   'fn-innermost-034',
   'fn-innermost-035',
   'fn-innermost-036',
   'fn-innermost-037',
   'fn-innermost-038',
   'fn-innermost-039',
   'fn-innermost-040',
   'fn-innermost-041',
   'fn-innermost-042',
   'fn-innermost-043',
   'fn-innermost-044',
   'fn-innermost-045',
   'fn-innermost-046',
   'fn-innermost-047',
   'fn-innermost-048',
   'fn-innermost-049',
   'fn-innermost-050',
   'fn-innermost-051',
   'fn-innermost-052',
   'fn-innermost-053',
   'fn-innermost-054',
   'fn-innermost-055',
   'fn-innermost-056',
   'fn-innermost-057',
   'fn-innermost-058'].
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
environment('innermost') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/innermost/innermost.xml",".",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/innermost/doc1.xml","$doc1",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/innermost/doc2.xml","$doc2",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-innermost-001'(_Config) ->
   Qry = "fn:innermost()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-innermost-002'(_Config) ->
   Qry = "fn:innermost#0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-innermost-003'(_Config) ->
   Qry = "fn:innermost( (), 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-innermost-004'(_Config) ->
   Qry = "fn:innermost#2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-innermost-005'(_Config) ->
   Qry = "fn:exists( fn:innermost#1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-006'(_Config) ->
   Qry = "fn:innermost( 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-innermost-007'(_Config) ->
   Qry = "fn:innermost( fn:dateTime#2 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-innermost-008'(_Config) ->
   Qry = "fn:innermost( if ( fn:current-dateTime() eq\n                                    fn:dateTime( fn:current-date(),\n                                                 fn:current-time() ))\n                               then .\n                               else 1 )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-innermost-009'(_Config) ->
   Qry = "( fn:innermost( if (current-date() eq xs:date('1900-01-01'))\n                                 then .\n                                 else 1 ),\n              fn:innermost( if (current-date() eq xs:date('1900-01-01'))\n                                 then 1\n                                 else . ) )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	  \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-innermost-010'(_Config) ->
   Qry = "fn:innermost( if ( fn:current-dateTime() eq\n                                    fn:dateTime( fn:current-date(),\n                                                 fn:current-time() ))\n                               then .\n                               else fn:dateTime#2 )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-innermost-011'(_Config) ->
   Qry = "( fn:innermost( if (current-date() eq xs:date('1900-01-01'))\n                                 then .\n                                 else fn:dateTime#2 ),\n              fn:innermost( if (current-date() eq xs:date('1900-01-01'))\n                                 then fn:dateTime#2\n                                 else . ) )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	  \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-innermost-012'(_Config) ->
   Qry = "fn:innermost( / )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-013'(_Config) ->
   Qry = "fn:deep-equal(fn:innermost( / ), / )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-014'(_Config) ->
   Qry = "fn:innermost( //*/@* )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	7\n      ",
   case xqerl_test:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-015'(_Config) ->
   Qry = "fn:innermost( //*/@* ) ! string()",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	('0a','00a','000a','01a','010a','02a','020a')\n      ",
 Tst = xqerl:run("('0a','00a','000a','01a','010a','02a','020a')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-innermost-016'(_Config) ->
   Qry = "deep-equal(fn:innermost( //*/@* ), //*/@*)",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-017'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-018'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-019'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-020'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-021'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-022'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-023'(_Config) ->
   Qry = "fn:innermost( //processing-instruction() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	7\n      ",
   case xqerl_test:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-024'(_Config) ->
   Qry = "fn:innermost( //processing-instruction() ) ! local-name() ",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	('level-0','level-00','level-000','level-01','level-010','level-02','level-020')\n      ",
 Tst = xqerl:run("('level-0','level-00','level-000','level-01','level-010','level-02','level-020')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-innermost-025'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //processing-instruction() ), \n                          //processing-instruction() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-026'(_Config) ->
   Qry = "fn:innermost( //comment() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	7\n      ",
   case xqerl_test:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-027'(_Config) ->
   Qry = "fn:innermost( //comment() ) ! string()",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	('0c','00c','000c','01c','010c','02c','020c')\n      ",
 Tst = xqerl:run("('0c','00c','000c','01c','010c','02c','020c')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-innermost-028'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //comment() ),\n                           //comment() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-029'(_Config) ->
   Qry = "fn:innermost( //text() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	7\n 	\n      ",
   case xqerl_test:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-030'(_Config) ->
   Qry = "fn:innermost( //text() ) ! string() ",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	('0t','00t','000t','01t','010t','02t','020t')\n      ",
 Tst = xqerl:run("('0t','00t','000t','01t','010t','02t','020t')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-innermost-031'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //text() ),\n                           //text() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-032'(_Config) ->
   Qry = "fn:innermost( //* )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	14\n      ",
   case xqerl_test:size(Res) of 14 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-033'(_Config) ->
   Qry = "fn:innermost( //* ) ! local-name(.)",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	('empty-level-0',   'non-empty-level-0',\n                         'empty-level-00',  'non-empty-level-00',\n                         'empty-level-000', 'non-empty-level-000',\n                         'empty-level-01',  'non-empty-level-01',\n                         'empty-level-010', 'non-empty-level-010',\n                         'empty-level-02',  'non-empty-level-02',\n                         'empty-level-020', 'non-empty-level-020')\n      ",
 Tst = xqerl:run("('empty-level-0',   'non-empty-level-0',\n                         'empty-level-00',  'non-empty-level-00',\n                         'empty-level-000', 'non-empty-level-000',\n                         'empty-level-01',  'non-empty-level-01',\n                         'empty-level-010', 'non-empty-level-010',\n                         'empty-level-02',  'non-empty-level-02',\n                         'empty-level-020', 'non-empty-level-020')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-innermost-034'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //* ), \n                           let $nodes := //*\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-035'(_Config) ->
   Qry = "fn:innermost( //node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	35\n      ",
   case xqerl_test:size(Res) of 35 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-036'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //node() ), \n                           let $nodes := //node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-037'(_Config) ->
   Qry = "fn:innermost( /root/node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	8\n      ",
   case xqerl_test:size(Res) of 8 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-038'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/node() ), \n                           let $nodes := /root/node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-039'(_Config) ->
   Qry = "fn:innermost( /root/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	35\n      ",
   case xqerl_test:size(Res) of 35 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-040'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/descendant::node() ), \n                           let $nodes := /root/descendant::node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-041'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[1]/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-042'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[1]/ancestor::node() ), \n                           let $nodes := /root/level[1]/level[1]/ancestor::node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-043'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[last()]/preceding-sibling::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	5\n      ",
   case xqerl_test:size(Res) of 5 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-044'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[last()]/preceding-sibling::node() ), \n                           let $nodes := /root/level[1]/level[last()]/preceding-sibling::node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-045'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[last()]/preceding::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	10\n      ",
   case xqerl_test:size(Res) of 10 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-046'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[last()]/preceding::node() ), \n                           let $nodes := /root/level[1]/level[last()]/preceding::node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-047'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/following-sibling::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	2\n      ",
   case xqerl_test:size(Res) of 2 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-048'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/following-sibling::node() ), \n                           let $nodes := /root/level[1]/following-sibling::node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-049'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[1]/following::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	20\n      ",
   case xqerl_test:size(Res) of 20 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-050'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[1]/following::node() ), \n                           let $nodes := /root/level[1]/level[1]/following::node()\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-051'(_Config) ->
   Qry = "fn:innermost( /root/node()/.. )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-052'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/node()/.. ), \n                           let $nodes := /root/node()/..\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-053'(_Config) ->
   Qry = "fn:innermost( ($doc1//node(), $doc2//node()) )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	7\n 	\n      ",
   case xqerl_test:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-054'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( ($doc1//node(), $doc2//node()) ),\n                           let $nodes := ($doc1//node(), $doc2//node())\n                           return $nodes except $nodes/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-055'(_Config) ->
   Qry = "let $in := for $x in //* order by local-name($x) return $x\n            return deep-equal(fn:innermost($in)/local-name(), fn:innermost(//*)/local-name())",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	    \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-056'(_Config) ->
   Qry = "let $in := for $x in //* order by local-name($x) return $x\n            return deep-equal(fn:innermost(($in, $in))/local-name(), fn:innermost(//*)/local-name())",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	    \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-innermost-057'(_Config) ->
   Qry = "innermost(//rubbish)",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	    \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-innermost-058'(_Config) ->
   Qry = "innermost(//*) except //*",
   Env = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	    \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
