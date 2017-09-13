-module('map_get_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-get-001'/1]).
-export(['map-get-002'/1]).
-export(['map-get-003'/1]).
-export(['map-get-004'/1]).
-export(['map-get-005'/1]).
-export(['map-get-006'/1]).
-export(['map-get-007'/1]).
-export(['map-get-008'/1]).
-export(['map-get-009'/1]).
-export(['map-get-010'/1]).
-export(['map-get-011'/1]).
-export(['map-get-012'/1]).
-export(['map-get-013'/1]).
-export(['map-get-014'/1]).
-export(['map-get-015'/1]).
-export(['map-get-016'/1]).
-export(['map-get-017'/1]).
-export(['map-get-018'/1]).
-export(['map-get-019'/1]).
-export(['map-get-020'/1]).
-export(['map-get-021'/1]).
-export(['map-get-022'/1]).
-export(['map-get-023'/1]).
-export(['map-get-024'/1]).
-export(['map-get-025'/1]).
-export(['map-get-100'/1]).
-export(['map-get-901'/1]).
-export(['map-get-902'/1]).
-export(['map-get-903'/1]).
-export(['map-get-904'/1]).
-export(['map-get-905'/1]).
-export(['map-get-906'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-get-001',
   'map-get-002',
   'map-get-003',
   'map-get-004',
   'map-get-005',
   'map-get-006',
   'map-get-007',
   'map-get-008',
   'map-get-009',
   'map-get-010',
   'map-get-011',
   'map-get-012',
   'map-get-013',
   'map-get-014',
   'map-get-015',
   'map-get-016',
   'map-get-017',
   'map-get-018',
   'map-get-019',
   'map-get-020',
   'map-get-021',
   'map-get-022',
   'map-get-023',
   'map-get-024',
   'map-get-025',
   'map-get-100',
   'map-get-901',
   'map-get-902',
   'map-get-903',
   'map-get-904',
   'map-get-905',
   'map-get-906'].
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
'map-get-001'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-002'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 23)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-003'(_Config) ->
   Qry = "map:get(map{}, 23)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-004'(_Config) ->
   Qry = "map:get(map:entry(\"foo\", \"bar\"), \"baz\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-005'(_Config) ->
   Qry = "map:get(map:entry(\"foo\", \"bar\"), \"foo\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            bar
        ",
   case xqerl_types:string_value(Res) of
             "bar" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-006'(_Config) ->
   Qry = "map:get(map:entry(\"foo\", \"bar\"), xs:untypedAtomic(\"foo\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            bar
        ",
   case xqerl_types:string_value(Res) of
             "bar" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-007'(_Config) ->
   Qry = "map:get(map:entry(xs:untypedAtomic(\"foo\"), \"bar\"), \"foo\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            bar
        ",
   case xqerl_types:string_value(Res) of
             "bar" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-008'(_Config) ->
   Qry = "map:get(map:entry(xs:untypedAtomic(\"12\"), \"bar\"), 12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-009'(_Config) ->
   Qry = "map:get(map:entry(12, \"bar\"), xs:untypedAtomic(\"12\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-010'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4.0e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
             Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-011'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4.0e0:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-012'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",\"urn:weds\":\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:anyURI(\"urn:weds\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-013'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:anyURI(\"urn:weds\"):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, \"urn:weds\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-014'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:anyURI(\"urn:weds\"):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, number('NaN'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-015'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, number('NaN'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-016'(_Config) ->
   Qry = "map:get(
                map:new(((for $i in 1 to 1000 return map:entry($i, $i*$i)),
                         (for $i in 2000 to 3000 return map:entry($i, $i+30)),
                         (for $i in 2500 to 3500 return map:entry($i, $i+30)))),
                         3260)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            3290
        ",
 Tst = xqerl:run("3290"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'map-get-017'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:duration('P1Y'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:yearMonthDuration('P12M'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-018'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",function-name(abs#1):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:QName('fn:abs'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            Wednesday
        ",
   case xqerl_types:string_value(Res) of
             "Wednesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'map-get-019'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:(),5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-020'(_Config) ->
   Qry = "map:get(map{\"su\":\"Sunday\",\"mo\":\"Monday\",\"tu\":\"Tuesday\",\"we\":\"Wednesday\",\"th\":\"Thursday\",\"fr\":\"Friday\",\"sa\":\"Saturday\"}, \"TH\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-021'(_Config) ->
   Qry = "map:get(map:new(map{\"su\":\"Sunday\",\"mo\":\"Monday\",\"tu\":\"Tuesday\",\"we\":\"Wednesday\",\"th\":\"Thursday\",\"fr\":\"Friday\",\"sa\":\"Saturday\"}, 
            \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"), \"TH\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-get-022'(_Config) ->
   {skip,"Collation Environment"}.
'map-get-023'(_Config) ->
   {skip,"Collation Environment"}.
'map-get-024'(_Config) ->
   {skip,"Collation Environment"}.
'map-get-025'(_Config) ->
   {skip,"Collation Environment"}.
'map-get-100'(_Config) ->
   Qry = "fn:map(
            map{\"su\":\"Sunday\",\"mo\":\"Monday\",\"tu\":\"Tuesday\",\"we\":\"Wednesday\",\"th\":\"Thursday\",\"fr\":\"Friday\",\"sa\":\"Saturday\"},
            (\"we\", \"th\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                2
                $result[1] eq \"Wednesday\"
                $result[2] eq \"Thursday\"
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result[1] eq \"Wednesday\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result[2] eq \"Thursday\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 2 of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-get-901'(_Config) ->
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, (1 to 5)[10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-get-902'(_Config) ->
   Qry = "map:get(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, (1 to 5)[. mod 2 = 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-get-903'(_Config) ->
   Qry = "map:get((\"a\", \"b\", \"c\"), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-get-904'(_Config) ->
   Qry = "map:get((), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-get-905'(_Config) ->
   Qry = "map:get(abs#1, \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'map-get-906'(_Config) ->
   Qry = "map:get((map{}, map{\"a\":\"b\"}), \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
