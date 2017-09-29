-module('map_contains_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-contains-001'/1]).
-export(['map-contains-002'/1]).
-export(['map-contains-003'/1]).
-export(['map-contains-004'/1]).
-export(['map-contains-005'/1]).
-export(['map-contains-006'/1]).
-export(['map-contains-007'/1]).
-export(['map-contains-008'/1]).
-export(['map-contains-009'/1]).
-export(['map-contains-010'/1]).
-export(['map-contains-011'/1]).
-export(['map-contains-012'/1]).
-export(['map-contains-013'/1]).
-export(['map-contains-014'/1]).
-export(['map-contains-015'/1]).
-export(['map-contains-016'/1]).
-export(['map-contains-017'/1]).
-export(['map-contains-018'/1]).
-export(['map-contains-019'/1]).
-export(['map-contains-020'/1]).
-export(['map-contains-021'/1]).
-export(['map-contains-022'/1]).
-export(['map-contains-023'/1]).
-export(['map-contains-024'/1]).
-export(['map-contains-025'/1]).
-export(['map-contains-901'/1]).
-export(['map-contains-902'/1]).
-export(['map-contains-903'/1]).
-export(['map-contains-904'/1]).
-export(['map-contains-905'/1]).
-export(['map-contains-906'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-contains-001',
   'map-contains-002',
   'map-contains-003',
   'map-contains-004',
   'map-contains-005',
   'map-contains-006',
   'map-contains-007',
   'map-contains-008',
   'map-contains-009',
   'map-contains-010',
   'map-contains-011',
   'map-contains-012',
   'map-contains-013',
   'map-contains-014',
   'map-contains-015',
   'map-contains-016',
   'map-contains-017',
   'map-contains-018',
   'map-contains-019',
   'map-contains-020',
   'map-contains-021',
   'map-contains-022',
   'map-contains-023',
   'map-contains-024',
   'map-contains-025',
   'map-contains-901',
   'map-contains-902',
   'map-contains-903',
   'map-contains-904',
   'map-contains-905',
   'map-contains-906'].
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
'map-contains-001'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-002'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 23)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-003'(_Config) ->
   Qry = "map:contains(map{}, 23)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-004'(_Config) ->
   Qry = "map:contains(map:entry(\"foo\", \"bar\"), \"baz\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-005'(_Config) ->
   Qry = "map:contains(map:entry(\"foo\", \"bar\"), \"foo\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-006'(_Config) ->
   Qry = "map:contains(map:entry(\"foo\", \"bar\"), xs:untypedAtomic(\"foo\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-007'(_Config) ->
   Qry = "map:contains(map:entry(xs:untypedAtomic(\"foo\"), \"bar\"), \"foo\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-008'(_Config) ->
   Qry = "map:contains(map:entry(xs:untypedAtomic(\"12\"), \"bar\"), 12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-009'(_Config) ->
   Qry = "map:contains(map:entry(12, \"bar\"), xs:untypedAtomic(\"12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-010'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4.0e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-011'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4.0e0:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-012'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",\"urn:weds\":\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:anyURI(\"urn:weds\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-013'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:anyURI(\"urn:weds\"):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, \"urn:weds\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-014'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:anyURI(\"urn:weds\"):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, number('NaN'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-015'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, number('NaN'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-016'(_Config) ->
   Qry = "map:contains(
                map:merge(((for $i in 1 to 1000 return map:entry($i, $i*$i)),
                         (for $i in 2000 to 3000 return map:entry($i, $i+30)),
                         (for $i in 2500 to 3500 return map:entry($i, $i+30)))),
                         3260)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-017'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:duration('P1Y'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:yearMonthDuration('P12M'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-018'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",function-name(abs#1):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:QName('fn:abs'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-019'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:(),5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-020'(_Config) ->
   Qry = "map:contains(map{\"su\":\"Sunday\",\"mo\":\"Monday\",\"tu\":\"Tuesday\",\"we\":\"Wednesday\",\"th\":\"Thursday\",\"fr\":\"Friday\",\"sa\":\"Saturday\"}, \"TH\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-021'(_Config) ->
   Qry = "map:contains(map:merge(map{\"su\":\"Sunday\",\"mo\":\"Monday\",\"tu\":\"Tuesday\",\"we\":\"Wednesday\",\"th\":\"Thursday\",\"fr\":\"Friday\",\"sa\":\"Saturday\"}, 
            \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"), \"TH\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'map-contains-022'(_Config) ->
   {skip,"Collation Environment"}.
'map-contains-023'(_Config) ->
   {skip,"Collation Environment"}.
'map-contains-024'(_Config) ->
   {skip,"Collation Environment"}.
'map-contains-025'(_Config) ->
   {skip,"Collation Environment"}.
'map-contains-901'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, (1 to 5)[10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-contains-902'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, (1 to 5)[. mod 2 = 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-contains-903'(_Config) ->
   Qry = "map:contains((\"a\", \"b\", \"c\"), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-contains-904'(_Config) ->
   Qry = "map:contains((), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-contains-905'(_Config) ->
   Qry = "map:contains(abs#1, \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-contains-906'(_Config) ->
   Qry = "map:contains((map{}, map{\"a\":\"b\"}), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
