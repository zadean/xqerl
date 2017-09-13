-module('fn_outermost_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-outermost-001'/1]).
-export(['fn-outermost-002'/1]).
-export(['fn-outermost-003'/1]).
-export(['fn-outermost-004'/1]).
-export(['fn-outermost-005'/1]).
-export(['fn-outermost-006'/1]).
-export(['fn-outermost-007'/1]).
-export(['fn-outermost-008'/1]).
-export(['fn-outermost-009'/1]).
-export(['fn-outermost-010'/1]).
-export(['fn-outermost-011'/1]).
-export(['fn-outermost-012'/1]).
-export(['fn-outermost-013'/1]).
-export(['fn-outermost-014'/1]).
-export(['fn-outermost-015'/1]).
-export(['fn-outermost-016'/1]).
-export(['fn-outermost-017'/1]).
-export(['fn-outermost-018'/1]).
-export(['fn-outermost-019'/1]).
-export(['fn-outermost-020'/1]).
-export(['fn-outermost-021'/1]).
-export(['fn-outermost-022'/1]).
-export(['fn-outermost-023'/1]).
-export(['fn-outermost-024'/1]).
-export(['fn-outermost-025'/1]).
-export(['fn-outermost-026'/1]).
-export(['fn-outermost-027'/1]).
-export(['fn-outermost-028'/1]).
-export(['fn-outermost-029'/1]).
-export(['fn-outermost-030'/1]).
-export(['fn-outermost-031'/1]).
-export(['fn-outermost-032'/1]).
-export(['fn-outermost-033'/1]).
-export(['fn-outermost-034'/1]).
-export(['fn-outermost-035'/1]).
-export(['fn-outermost-036'/1]).
-export(['fn-outermost-037'/1]).
-export(['fn-outermost-038'/1]).
-export(['fn-outermost-039'/1]).
-export(['fn-outermost-040'/1]).
-export(['fn-outermost-041'/1]).
-export(['fn-outermost-042'/1]).
-export(['fn-outermost-043'/1]).
-export(['fn-outermost-044'/1]).
-export(['fn-outermost-045'/1]).
-export(['fn-outermost-046'/1]).
-export(['fn-outermost-047'/1]).
-export(['fn-outermost-048'/1]).
-export(['fn-outermost-049'/1]).
-export(['fn-outermost-050'/1]).
-export(['fn-outermost-051'/1]).
-export(['fn-outermost-052'/1]).
-export(['fn-outermost-053'/1]).
-export(['fn-outermost-054'/1]).
-export(['fn-outermost-055'/1]).
-export(['fn-outermost-056'/1]).
-export(['fn-outermost-057'/1]).
-export(['fn-outermost-058'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-outermost-001',
   'fn-outermost-002',
   'fn-outermost-003',
   'fn-outermost-004',
   'fn-outermost-005',
   'fn-outermost-006',
   'fn-outermost-007',
   'fn-outermost-008',
   'fn-outermost-009',
   'fn-outermost-010',
   'fn-outermost-011',
   'fn-outermost-012',
   'fn-outermost-013',
   'fn-outermost-014',
   'fn-outermost-015',
   'fn-outermost-016',
   'fn-outermost-017',
   'fn-outermost-018',
   'fn-outermost-019',
   'fn-outermost-020',
   'fn-outermost-021',
   'fn-outermost-022',
   'fn-outermost-023',
   'fn-outermost-024',
   'fn-outermost-025',
   'fn-outermost-026',
   'fn-outermost-027',
   'fn-outermost-028',
   'fn-outermost-029',
   'fn-outermost-030',
   'fn-outermost-031',
   'fn-outermost-032',
   'fn-outermost-033',
   'fn-outermost-034',
   'fn-outermost-035',
   'fn-outermost-036',
   'fn-outermost-037',
   'fn-outermost-038',
   'fn-outermost-039',
   'fn-outermost-040',
   'fn-outermost-041',
   'fn-outermost-042',
   'fn-outermost-043',
   'fn-outermost-044',
   'fn-outermost-045',
   'fn-outermost-046',
   'fn-outermost-047',
   'fn-outermost-048',
   'fn-outermost-049',
   'fn-outermost-050',
   'fn-outermost-051',
   'fn-outermost-052',
   'fn-outermost-053',
   'fn-outermost-054',
   'fn-outermost-055',
   'fn-outermost-056',
   'fn-outermost-057',
   'fn-outermost-058'].
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
];
environment('outermost') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/fn/innermost/innermost.xml",".",""},
{"file:///C:/git/xqerl/test/QT3_1_0/fn/innermost/doc1.xml","$doc1",""},
{"file:///C:/git/xqerl/test/QT3_1_0/fn/innermost/doc2.xml","$doc2",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-outermost-001'(_Config) ->
   Qry = "fn:outermost()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-outermost-002'(_Config) ->
   Qry = "fn:outermost#0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-outermost-003'(_Config) ->
   Qry = "fn:outermost( (), 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-outermost-004'(_Config) ->
   Qry = "fn:outermost#2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-outermost-005'(_Config) ->
   Qry = "fn:exists( fn:outermost#1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-006'(_Config) ->
   Qry = "fn:outermost( 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-outermost-007'(_Config) ->
   Qry = "fn:outermost( fn:dateTime#2 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-outermost-008'(_Config) ->
   Qry = "fn:outermost( if ( fn:current-dateTime() eq
                                    fn:dateTime( fn:current-date(),
                                                 fn:current-time() ))
                               then .
                               else 1 )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-outermost-009'(_Config) ->
   Qry = "( fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else 1 ),
              fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then 1
                                 else . ) )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	  
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-outermost-010'(_Config) ->
   Qry = "fn:outermost( if ( fn:current-dateTime() eq
                                    fn:dateTime( fn:current-date(),
                                                 fn:current-time() ))
                               then .
                               else fn:dateTime#2 )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-outermost-011'(_Config) ->
   Qry = "( fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else fn:dateTime#2 ),
              fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then fn:dateTime#2
                                 else . ) )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	  
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-outermost-012'(_Config) ->
   Qry = "fn:outermost( / )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-013'(_Config) ->
   Qry = "fn:deep-equal(fn:outermost( / ), / )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-014'(_Config) ->
   Qry = "fn:outermost( //*/@* )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	7
      ",
   case xqerl_seq2:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-015'(_Config) ->
   Qry = "fn:outermost( //*/@* ) ! string()",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	('0a','00a','000a','01a','010a','02a','020a')
      ",
 Tst = xqerl:run("('0a','00a','000a','01a','010a','02a','020a')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-outermost-016'(_Config) ->
   Qry = "deep-equal(fn:outermost( //*/@* ), //*/@*)",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-017'(_Config) ->
   {skip,"XP30+"}.
'fn-outermost-018'(_Config) ->
   {skip,"XP30+"}.
'fn-outermost-019'(_Config) ->
   {skip,"XP30+"}.
'fn-outermost-020'(_Config) ->
   {skip,"XP30+"}.
'fn-outermost-021'(_Config) ->
   {skip,"XP30+"}.
'fn-outermost-022'(_Config) ->
   {skip,"XP30+"}.
'fn-outermost-023'(_Config) ->
   Qry = "fn:outermost( //processing-instruction() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	7
      ",
   case xqerl_seq2:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-024'(_Config) ->
   Qry = "fn:outermost( //processing-instruction() ) ! local-name() ",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	('level-0','level-00','level-000','level-01','level-010','level-02','level-020')
      ",
 Tst = xqerl:run("('level-0','level-00','level-000','level-01','level-010','level-02','level-020')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-outermost-025'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( //processing-instruction() ), 
                          //processing-instruction() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-026'(_Config) ->
   Qry = "fn:outermost( //comment() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	7
      ",
   case xqerl_seq2:size(Res) of 7 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-027'(_Config) ->
   Qry = "fn:outermost( //comment() ) ! string()",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	('0c','00c','000c','01c','010c','02c','020c')
      ",
 Tst = xqerl:run("('0c','00c','000c','01c','010c','02c','020c')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-outermost-028'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( //comment() ),
                           //comment() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-029'(_Config) ->
   Qry = "fn:outermost( //text() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	14
      ",
   case xqerl_seq2:size(Res) of 14 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-030'(_Config) ->
   Qry = "fn:outermost( //text() ) ! string() ",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	('0t',' ',
                         '00t',' ','000t',' ',
                         '01t',' ','010t',' ',
                         '02t',' ','020t',' ')
      ",
 Tst = xqerl:run("('0t',' ',
                         '00t',' ','000t',' ',
                         '01t',' ','010t',' ',
                         '02t',' ','020t',' ')"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-outermost-031'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( //text() ),
                           //text() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-032'(_Config) ->
   Qry = "fn:outermost( //* )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-033'(_Config) ->
   Qry = "fn:outermost( //* ) ! local-name(.)",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	('root')
      ",
 Tst = xqerl:run("('root')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-outermost-034'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( //* ), 
                           let $nodes := //*
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-035'(_Config) ->
   Qry = "fn:outermost( //node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-036'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( //node() ), 
                           let $nodes := //node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-037'(_Config) ->
   Qry = "fn:outermost( /root/node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	8
      ",
   case xqerl_seq2:size(Res) of 8 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-038'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/node() ), 
                           let $nodes := /root/node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-039'(_Config) ->
   Qry = "fn:outermost( /root/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	8
      ",
   case xqerl_seq2:size(Res) of 8 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-040'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/descendant::node() ), 
                           let $nodes := /root/descendant::node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-041'(_Config) ->
   Qry = "fn:outermost( /root/level[1]/level[1]/ancestor::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-042'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[1]/ancestor::node() ), 
                           let $nodes := /root/level[1]/level[1]/ancestor::node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-043'(_Config) ->
   Qry = "fn:outermost( /root/level[1]/level[last()]/preceding-sibling::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	5
      ",
   case xqerl_seq2:size(Res) of 5 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-044'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[last()]/preceding-sibling::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding-sibling::node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-045'(_Config) ->
   Qry = "fn:outermost( /root/level[1]/level[last()]/preceding::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	10
      ",
   case xqerl_seq2:size(Res) of 10 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-046'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[last()]/preceding::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding::node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-047'(_Config) ->
   Qry = "fn:outermost( /root/level[1]/following-sibling::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	2
      ",
   case xqerl_seq2:size(Res) of 2 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-048'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/following-sibling::node() ), 
                           let $nodes := /root/level[1]/following-sibling::node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-049'(_Config) ->
   Qry = "fn:outermost( /root/level[1]/level[1]/following::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	2
      ",
   case xqerl_seq2:size(Res) of 2 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-050'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[1]/following::node() ), 
                           let $nodes := /root/level[1]/level[1]/following::node()
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-051'(_Config) ->
   Qry = "fn:outermost( /root/node()/.. )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-052'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( /root/node()/.. ), 
                           let $nodes := /root/node()/..
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-053'(_Config) ->
   Qry = "fn:outermost( ($doc1//node(), $doc2//node()) )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	2
      ",
   case xqerl_seq2:size(Res) of 2 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-054'(_Config) ->
   Qry = "fn:deep-equal( fn:outermost( ($doc1//node(), $doc2//node()) ),
                           let $nodes := ($doc1//node(), $doc2//node())
                           return $nodes except $nodes/descendant::node() )",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-055'(_Config) ->
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:outermost($in)/local-name(), fn:outermost(//*)/local-name())",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-056'(_Config) ->
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:outermost(($in, $in))/local-name(), fn:outermost(//*)/local-name())",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-outermost-057'(_Config) ->
   Qry = "outermost(//rubbish)",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-outermost-058'(_Config) ->
   Qry = "outermost(//*) except //*",
   Env = xqerl_test:handle_environment(environment('outermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
