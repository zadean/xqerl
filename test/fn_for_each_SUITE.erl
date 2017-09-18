-module('fn_for_each_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['for-each-001'/1]).
-export(['for-each-002'/1]).
-export(['for-each-003'/1]).
-export(['for-each-004'/1]).
-export(['for-each-005'/1]).
-export(['for-each-006'/1]).
-export(['for-each-007'/1]).
-export(['for-each-008'/1]).
-export(['for-each-901'/1]).
-export(['for-each-902'/1]).
-export(['for-each-903'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'for-each-001',
   'for-each-002',
   'for-each-003',
   'for-each-004',
   'for-each-005',
   'for-each-006',
   'for-each-007',
   'for-each-008',
   'for-each-901',
   'for-each-902',
   'for-each-903'].
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
environment('names') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/higherOrder/names.xml","",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'for-each-001'(_Config) ->
   Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), upper-case#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \"AA\", \"BB\", \"CC\", \"DD\", \"EE\"\n        ",
 Tst = xqerl:run("\"AA\", \"BB\", \"CC\", \"DD\", \"EE\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-002'(_Config) ->
   Qry = "for-each((\"john\", \"jane\"), string-to-codepoints#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                106, 111, 104, 110, 106, 97, 110, 101\n        ",
 Tst = xqerl:run("106, 111, 104, 110, 106, 97, 110, 101"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-003'(_Config) ->
   Qry = "for-each((\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"), function($x){$x[contains(., 'e')]})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \"jane\", \"anne\", \"peter\"\n        ",
 Tst = xqerl:run("\"jane\", \"anne\", \"peter\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-004'(_Config) ->
   Qry = "for-each((\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"), function($x){upper-case($x)})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \"JOHN\", \"MARY\", \"JANE\", \"ANNE\", \"PETER\", \"IAN\"\n        ",
 Tst = xqerl:run("\"JOHN\", \"MARY\", \"JANE\", \"ANNE\", \"PETER\", \"IAN\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-005'(_Config) ->
   Qry = "\n            for-each(for-each((\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"), function($n as xs:string){upper-case($n)}), function($e as xs:string) as xs:string { lower-case($e) })\n        ",
   Env = xqerl_test:handle_environment(environment('names')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"\n        ",
 Tst = xqerl:run("\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-006'(_Config) ->
   Qry = "\n            declare function local:children($n as node()) as node()* \n                { $n/child::node() }; \n            declare function local:attributes($e as node()) as node()* \n                { $e/attribute::node() }; \n            declare function local:self($e as node()) as node() \n                { $e }; \n            declare function local:union(\n                        $f as function(node()) as node()*, \n                        $g as function(node()) as node()*) as function(node()) as node()* { \n                function($a) {$f($a) | $g($a)} };\n            let $data := (/a), \n                $f := local:union(local:children#1, local:union(local:attributes#1, local:self#1)) \n            return for-each($data/*, $f)[not(. instance of attribute())]\n        ",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/higherOrder/doc1.xml",".",""}]},
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
   Exp = "\n            <b bid=\"b\"><b1/></b><b1/><c cid=\"c\"><c1/></c><c1/>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b bid=\"b\"><b1/></b><b1/><c cid=\"c\"><c1/></c><c1/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b bid=\"b\"><b1/></b><b1/><c cid=\"c\"><c1/></c><c1/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'for-each-007'(_Config) ->
   Qry = "for-each((), round#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'for-each-008'(_Config) ->
   Qry = "let $f := function($x as xs:double*){for-each($x,round#1)} return $f((1.2345, 6.789))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                1, 7\n        ",
 Tst = xqerl:run("1, 7"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'for-each-901'(_Config) ->
   Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), starts-with#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'for-each-902'(_Config) ->
   Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", 12), upper-case#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'for-each-903'(_Config) ->
   Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", 12), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
