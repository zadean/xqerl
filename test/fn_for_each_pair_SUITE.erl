-module('fn_for_each_pair_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['for-each-pair-001'/1]).
-export(['for-each-pair-002'/1]).
-export(['for-each-pair-003'/1]).
-export(['for-each-pair-004'/1]).
-export(['for-each-pair-005'/1]).
-export(['for-each-pair-006'/1]).
-export(['for-each-pair-007'/1]).
-export(['for-each-pair-008'/1]).
-export(['for-each-pair-901'/1]).
-export(['for-each-pair-902'/1]).
-export(['fn-for-each-pair-001'/1]).
-export(['fn-for-each-pair-002'/1]).
-export(['fn-for-each-pair-003'/1]).
-export(['fn-for-each-pair-004'/1]).
-export(['fn-for-each-pair-005'/1]).
-export(['fn-for-each-pair-006'/1]).
-export(['fn-for-each-pair-007'/1]).
-export(['fn-for-each-pair-008'/1]).
-export(['fn-for-each-pair-009'/1]).
-export(['fn-for-each-pair-010'/1]).
-export(['fn-for-each-pair-011'/1]).
-export(['fn-for-each-pair-012'/1]).
-export(['fn-for-each-pair-013'/1]).
-export(['fn-for-each-pair-014'/1]).
-export(['fn-for-each-pair-015'/1]).
-export(['fn-for-each-pair-016'/1]).
-export(['fn-for-each-pair-017'/1]).
-export(['fn-for-each-pair-018'/1]).
-export(['fn-for-each-pair-019'/1]).
-export(['fn-for-each-pair-020'/1]).
-export(['fn-for-each-pair-021'/1]).
-export(['fn-for-each-pair-022'/1]).
-export(['fn-for-each-pair-023'/1]).
-export(['fn-for-each-pair-024'/1]).
-export(['fn-for-each-pair-025'/1]).
-export(['fn-for-each-pair-026'/1]).
-export(['fn-for-each-pair-027'/1]).
-export(['fn-for-each-pair-028'/1]).
-export(['fn-for-each-pair-029'/1]).
-export(['fn-for-each-pair-030'/1]).
-export(['fn-for-each-pair-031'/1]).
-export(['fn-for-each-pair-032'/1]).
-export(['fn-for-each-pair-033'/1]).
-export(['fn-for-each-pair-034'/1]).
-export(['fn-for-each-pair-035'/1]).
-export(['fn-for-each-pair-036'/1]).
-export(['fn-for-each-pair-037'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'for-each-pair-001',
   'for-each-pair-002',
   'for-each-pair-003',
   'for-each-pair-004',
   'for-each-pair-005',
   'for-each-pair-006',
   'for-each-pair-007',
   'for-each-pair-008',
   'for-each-pair-901',
   'for-each-pair-902',
   'fn-for-each-pair-001',
   'fn-for-each-pair-002',
   'fn-for-each-pair-003',
   'fn-for-each-pair-004',
   'fn-for-each-pair-005',
   'fn-for-each-pair-006',
   'fn-for-each-pair-007',
   'fn-for-each-pair-008',
   'fn-for-each-pair-009',
   'fn-for-each-pair-010',
   'fn-for-each-pair-011',
   'fn-for-each-pair-012',
   'fn-for-each-pair-013',
   'fn-for-each-pair-014',
   'fn-for-each-pair-015',
   'fn-for-each-pair-016',
   'fn-for-each-pair-017',
   'fn-for-each-pair-018',
   'fn-for-each-pair-019',
   'fn-for-each-pair-020',
   'fn-for-each-pair-021',
   'fn-for-each-pair-022',
   'fn-for-each-pair-023',
   'fn-for-each-pair-024',
   'fn-for-each-pair-025',
   'fn-for-each-pair-026',
   'fn-for-each-pair-027',
   'fn-for-each-pair-028',
   'fn-for-each-pair-029',
   'fn-for-each-pair-030',
   'fn-for-each-pair-031',
   'fn-for-each-pair-032',
   'fn-for-each-pair-033',
   'fn-for-each-pair-034',
   'fn-for-each-pair-035',
   'fn-for-each-pair-036',
   'fn-for-each-pair-037'].
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
'for-each-pair-001'(_Config) ->
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), deep-equal#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            false(), false(), true(), true(), false()
        ",
 Tst = xqerl:run("false(), false(), true(), true(), false()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-002'(_Config) ->
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\", \"ff\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), deep-equal#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            false(), false(), true(), true(), false()
        ",
 Tst = xqerl:run("false(), false(), true(), true(), false()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-003'(_Config) ->
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\", \"ff\"), deep-equal#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                false(), false(), true(), true(), false()
        ",
 Tst = xqerl:run("false(), false(), true(), true(), false()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-004'(_Config) ->
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), concat(?, '-', ?))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                'aa-AA', 'bb-BB', 'cc-cc', 'dd-dd', 'ee-EE'
        ",
 Tst = xqerl:run("'aa-AA', 'bb-BB', 'cc-cc', 'dd-dd', 'ee-EE'"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-005'(_Config) ->
   Qry = "for-each-pair(1 to 5, 1 to 5, function($a as xs:integer, $b as xs:integer) as xs:integer{$a + $b})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                2, 4, 6, 8, 10
        ",
 Tst = xqerl:run("2, 4, 6, 8, 10"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-006'(_Config) ->
   Qry = " 
            let $millenium := year-from-date(current-date()) idiv 1000 
            return for-each-pair(1 to 5, 2 to 6, function($a as xs:integer, $b as xs:integer) as xs:integer{$a + $b + $millenium})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                5, 7, 9, 11, 13
        ",
 Tst = xqerl:run("5, 7, 9, 11, 13"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-007'(_Config) ->
   Qry = " 
            let $millenium := year-from-date(current-date()) idiv 1000 
            return for-each-pair((\"a\", \"ab\", \"abc\", \"\"), (\"\", \"\", \"\", \"\"), function($a, $b) as xs:integer* {1 to (string-length($a) + string-length($b))})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                1, 1, 2, 1, 2, 3
        ",
 Tst = xqerl:run("1, 1, 2, 1, 2, 3"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-008'(_Config) ->
   Qry = " let $in := 1 to 5 return for-each-pair($in, tail($in), function($a, $b){$a+$b}) ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                3, 5, 7, 9
        ",
 Tst = xqerl:run("3, 5, 7, 9"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-pair-901'(_Config) ->
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), deep-equal#3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'for-each-pair-902'(_Config) ->
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", 12), contains#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-001'(_Config) ->
   Qry = "fn:for-each-pair()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-for-each-pair-002'(_Config) ->
   Qry = "fn:for-each-pair#0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-for-each-pair-003'(_Config) ->
   Qry = "fn:for-each-pair( fn:concat#2 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-for-each-pair-004'(_Config) ->
   Qry = "fn:for-each-pair#1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-for-each-pair-005'(_Config) ->
   Qry = "fn:for-each-pair( (), fn:concat#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-for-each-pair-006'(_Config) ->
   Qry = "fn:for-each-pair#2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-for-each-pair-007'(_Config) ->
   Qry = "fn:for-each-pair( (), (), fn:concat#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  
	  
	
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-008'(_Config) ->
   Qry = "fn:exists( fn:for-each-pair#3 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-for-each-pair-009'(_Config) ->
   Qry = "( fn:for-each-pair( (), (), if ( fn:current-dateTime() eq
                                 fn:dateTime( fn:current-date(),
                                              fn:current-time() ))
                            then fn:concat#2
                            else () ),
              fn:for-each-pair( (), (), if ( fn:current-dateTime() eq
                                fn:dateTime( fn:current-date(),
                                             fn:current-time() ))
                            then ()
                            else fn:concat#2 ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-010'(_Config) ->
   Qry = "fn:for-each-pair( (), (), if ( fn:current-dateTime() eq
                          fn:dateTime( fn:current-date(),
                                       fn:current-time() ))
                          then fn:concat#2
                          else () )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-011'(_Config) ->
   Qry = "fn:for-each-pair( (), (), (fn:concat#2, fn:concat#2) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-012'(_Config) ->
   Qry = "fn:for-each-pair( (), (), fn:true() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-013'(_Config) ->
   Qry = " fn:for-each-pair( (), (), /root )",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/for-each-pair/fn-for-each-pair-013.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-014'(_Config) ->
   Qry = "fn:for-each-pair( (), (), fn:boolean#1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-015'(_Config) ->
   Qry = "fn:for-each-pair( (), (), fn:concat#3 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-016'(_Config) ->
   Qry = "fn:for-each-pair( (), (), function($a as item(), $b as item()) as item()* { fn:boolean($a), fn:boolean($b) } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	      
	    
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-017'(_Config) ->
   Qry = "fn:for-each-pair((//node(), 1, \"string\", 3.14, 2.7e0, fn:exists#1),
                          (//node(), 1, \"string\", 3.14, 2.7e0, fn:exists#1), function($a, $b)
                          { if ($a instance of function(*))
                            then $b instance of function(*)
                            else if ($b instance of function(*))
                            then false()
                            else deep-equal($a, $b)
                          } )",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/for-each-pair/fn-for-each-pair-013.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	true true true true true true true true true true
 	
      ",
   case xqerl_test:string_value(Res) of
             "true true true true true true true true true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-for-each-pair-018'(_Config) ->
   Qry = "fn:for-each-pair( (), fn:error(), concat#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  
	  
	  
	
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-019'(_Config) ->
   Qry = "fn:for-each-pair( fn:error(), (), concat#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  
	  
	  
	
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-020'(_Config) ->
   Qry = "fn:for-each-pair( (), (), function($arg, $arg2) { fn:error() })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  
	  
	
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-021'(_Config) ->
   Qry = "fn:for-each-pair( 1 to 10, 1 to 10, function($arg, $arg2) { fn:error() })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	  
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'fn-for-each-pair-022'(_Config) ->
   Qry = "fn:for-each-pair( fn:error(), fn:error(), function($arg1, $arg2) { () })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  
	  
	  
	
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-023'(_Config) ->
   Qry = "fn:for-each-pair( (1, fn:error()), 1, function($arg1, $arg2) { ($arg1, $arg2) })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  1
	  
	
      ",
 case (xqerl_test:string_value(Res) == "1") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-024'(_Config) ->
   Qry = "fn:for-each-pair( 1, (1, fn:error()), function($arg1, $arg2) { ($arg1, $arg2) })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
	  1 1
	  
	
      ",
 case (xqerl_test:string_value(Res) == "1 1") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-for-each-pair-025'(_Config) ->
   Qry = "fn:for-each-pair( 1 to 3, 1 to 3, function($arg1, $arg2) { ($arg1 + $arg2) })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	2 4 6
      ",
   case xqerl_test:string_value(Res) of
             "2 4 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-for-each-pair-026'(_Config) ->
   Qry = "fn:for-each-pair( (true(), false(), true()), 1 to 3, function($arg1, $arg2) { if ($arg1) then $arg2 else () })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1 3
      ",
   case xqerl_test:string_value(Res) of
             "1 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-for-each-pair-027'(_Config) ->
   Qry = "fn:for-each-pair( 1 to 3, 1 to 3, function($arg1, $arg2) { ($arg1, $arg2) })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	1 1 2 2 3 3
      ",
   case xqerl_test:string_value(Res) of
             "1 1 2 2 3 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-for-each-pair-028'(_Config) ->
   Qry = "fn:for-each-pair( (\"1\", \"2\"), (1, 2), function($arg1 as xs:integer, $arg2 as xs:integer) { $arg1 + $arg2 } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-029'(_Config) ->
   Qry = "fn:for-each-pair( (1, 2), (\"1\", \"2\"), function($arg1 as xs:integer, $arg2 as xs:integer) { $arg1 + $arg2 } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-030'(_Config) ->
   Qry = "fn:for-each-pair( (\"1\", \"2\"), (\"1\", \"2\"), function($arg1 as xs:integer, $arg2 as xs:integer) { $arg1 + $arg2 } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-031'(_Config) ->
   Qry = "( fn:for-each-pair( (\"a\"), (\"b\"), if ( fn:current-dateTime() eq
                                 fn:dateTime( fn:current-date(),
                                              fn:current-time() ))
                            then fn:concat#2
                            else () ),
              fn:for-each-pair( \"a\", \"b\", if ( fn:current-dateTime() eq
                                fn:dateTime( fn:current-date(),
                                             fn:current-time() ))
                            then ()
                            else fn:concat#2 ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-032'(_Config) ->
   Qry = "fn:for-each-pair( \"a\", \"b\", if ( fn:current-dateTime() eq
                          fn:dateTime( fn:current-date(),
                                       fn:current-time() ))
                          then fn:concat#2
                          else () )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-033'(_Config) ->
   Qry = "fn:for-each-pair( \"a\", \"b\", (fn:concat#2, fn:concat#2) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-034'(_Config) ->
   Qry = "fn:for-each-pair( \"a\", \"b\", fn:true() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-035'(_Config) ->
   Qry = " fn:for-each-pair(\"a\", \"b\",  /root )",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/for-each-pair/fn-for-each-pair-013.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-036'(_Config) ->
   Qry = "fn:for-each-pair( \"a\", \"b\", fn:boolean#1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-for-each-pair-037'(_Config) ->
   Qry = "fn:for-each-pair( \"a\", \"b\", fn:concat#3 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
