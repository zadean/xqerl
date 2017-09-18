-module('fn_filter_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['filter-001'/1]).
-export(['filter-002'/1]).
-export(['filter-003'/1]).
-export(['filter-004'/1]).
-export(['filter-005'/1]).
-export(['filter-901'/1]).
-export(['filter-902'/1]).
-export(['filter-903'/1]).
-export(['filter-904'/1]).
-export(['fn-filter-001'/1]).
-export(['fn-filter-002'/1]).
-export(['fn-filter-003'/1]).
-export(['fn-filter-004'/1]).
-export(['fn-filter-005'/1]).
-export(['fn-filter-006'/1]).
-export(['fn-filter-007'/1]).
-export(['fn-filter-008'/1]).
-export(['fn-filter-009'/1]).
-export(['fn-filter-010'/1]).
-export(['fn-filter-011'/1]).
-export(['fn-filter-012'/1]).
-export(['fn-filter-013'/1]).
-export(['fn-filter-014'/1]).
-export(['fn-filter-015'/1]).
-export(['fn-filter-016'/1]).
-export(['fn-filter-017'/1]).
-export(['fn-filter-018'/1]).
-export(['fn-filter-019'/1]).
-export(['fn-filter-020'/1]).
-export(['fn-filter-021'/1]).
-export(['fn-filter-022'/1]).
-export(['fn-filter-023'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'filter-001',
   'filter-002',
   'filter-003',
   'filter-004',
   'filter-005',
   'filter-901',
   'filter-902',
   'filter-903',
   'filter-904',
   'fn-filter-001',
   'fn-filter-002',
   'fn-filter-003',
   'fn-filter-004',
   'fn-filter-005',
   'fn-filter-006',
   'fn-filter-007',
   'fn-filter-008',
   'fn-filter-009',
   'fn-filter-010',
   'fn-filter-011',
   'fn-filter-012',
   'fn-filter-013',
   'fn-filter-014',
   'fn-filter-015',
   'fn-filter-016',
   'fn-filter-017',
   'fn-filter-018',
   'fn-filter-019',
   'fn-filter-020',
   'fn-filter-021',
   'fn-filter-022',
   'fn-filter-023'].
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
'filter-001'(_Config) ->
   Qry = "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"),starts-with(?, \"a\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \"apple\", \"apricot\", \"advocado\"\n        ",
 Tst = xqerl:run("\"apple\", \"apricot\", \"advocado\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'filter-002'(_Config) ->
   Qry = "filter((12, 4, 46, 23, -8), function($x){$x gt 10})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            12, 46, 23\n        ",
 Tst = xqerl:run("12, 46, 23"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'filter-003'(_Config) ->
   Qry = "let $data := (/employees)\n              return filter($data/emp, function($x as element(emp)){xs:int($x/@salary) lt 300})",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/filter/filter003.xml",".",""}]},
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
   Exp = "\n                \n                    3\n                    element(emp)*\n                    $result/@name = 'john'\n                    $result/@name = 'anne'\n                    $result/@name = 'kumar'\n                \n        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result/@name = 'john'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result/@name = 'anne'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result/@name = 'kumar'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 3 andalso xqerl_types:type(Res) == 'element(emp)*' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'filter-004'(_Config) ->
   Qry = "(1 to 20)[. = filter(1 to position(), function($x){$x idiv 2 * 2 = $x})]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                2, 4, 6, 8, 10, 12, 14, 16, 18, 20\n        ",
 Tst = xqerl:run("2, 4, 6, 8, 10, 12, 14, 16, 18, 20"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'filter-005'(_Config) ->
   Qry = "let $index-of-node := function($seqParam as node()*, $srchParam as node()) as xs:integer* \n                                    { filter( 1 to count($seqParam), function($this as xs:integer) as xs:boolean\n                                              {$seqParam[$this] is $srchParam} ) },\n            $nodes := /*/*,\n            $perm := ($nodes[1], $nodes[2], $nodes[3], $nodes[1], $nodes[2], $nodes[4], $nodes[2], $nodes[1]) \n            return $index-of-node($perm, $nodes[2]) ",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/filter/filter005.xml",".",""}]},
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
   Exp = "\n                2, 5, 7\n        ",
 Tst = xqerl:run("2, 5, 7"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'filter-901'(_Config) ->
   Qry = "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"), normalize-space#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'filter-902'(_Config) ->
   Qry = "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"), function($x){if(starts-with($x,'a')) then true() else ()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'filter-903'(_Config) ->
   Qry = "filter( (\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"), function($x){if(starts-with($x,'a')) then (true(), true()) else false()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'filter-904'(_Config) ->
   Qry = "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\", current-date()), ends-with(?, 'e'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-001'(_Config) ->
   Qry = "fn:filter()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-filter-002'(_Config) ->
   Qry = "fn:filter#0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-filter-003'(_Config) ->
   Qry = "fn:filter( fn:boolean#1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-filter-004'(_Config) ->
   Qry = "fn:filter#1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-filter-005'(_Config) ->
   Qry = "fn:exists( fn:filter#2 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-filter-006'(_Config) ->
   Qry = "( fn:filter( (), if ( fn:current-dateTime() eq\n                            fn:dateTime( fn:current-date(),\n                                         fn:current-time() ))\n                         then fn:exists#1\n                         else 1 ),\n              fn:filter( (), if ( fn:current-dateTime() eq\n                            fn:dateTime( fn:current-date(),\n                                         fn:current-time() ))\n                         then 1\n                         else fn:exists#1 ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-007'(_Config) ->
   Qry = "fn:filter( (), if ( fn:current-dateTime() eq\n                          fn:dateTime( fn:current-date(),\n                                       fn:current-time() ))\n                       then fn:exists#1\n                       else 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-008'(_Config) ->
   Qry = "fn:filter( (), fn:true() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-009'(_Config) ->
   Qry = "fn:filter( (), fn:true() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-010'(_Config) ->
   Qry = "fn:filter( (), function($a as item()) as xs:boolean* { fn:boolean($a), fn:boolean($a) } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	\n      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-filter-011'(_Config) ->
   Qry = "fn:filter( (), function($a as item()) as xs:boolean? { () } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	\n      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-filter-012'(_Config) ->
   Qry = "fn:filter( (), fn:string#1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	  \n	\n      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-filter-013'(_Config) ->
   Qry = "fn:filter( (//node(), 1, \"string\", 3.14, 2.7e0, fn:exists#1), function($arg) { $arg instance of function(*) } )",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/filter/fn-filter-012.xml",".",""}]},
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
   Exp = "\n	     1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-filter-014'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then () else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	10\n      ",
   case xqerl_test:size(Res) of 10 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-filter-015'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 10) then () else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-016'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then () else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-017'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then 0 else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	10\n      ",
   case xqerl_test:size(Res) of 10 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-filter-018'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 10) then 0 else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-019'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then 0 else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-020'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then (fn:true(), fn:false()) else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	10\n      ",
   case xqerl_test:size(Res) of 10 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-filter-021'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 10) then (fn:true(), fn:false()) else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-022'(_Config) ->
   Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then (fn:true(), fn:false()) else fn:true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-filter-023'(_Config) ->
   Qry = "fn:filter( (\"1\", \"2\", \"3\"), function($arg as xs:integer) as xs:boolean { $arg eq 100 } )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
