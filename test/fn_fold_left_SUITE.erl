-module('fn_fold_left_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fold-left-001'/1]).
-export(['fold-left-002'/1]).
-export(['fold-left-003'/1]).
-export(['fold-left-004'/1]).
-export(['fold-left-005'/1]).
-export(['fold-left-006'/1]).
-export(['fold-left-007'/1]).
-export(['fold-left-008'/1]).
-export(['fold-left-009'/1]).
-export(['fold-left-010'/1]).
-export(['fold-left-011'/1]).
-export(['fold-left-012'/1]).
-export(['fold-left-013'/1]).
-export(['fold-left-014'/1]).
-export(['fold-left-015'/1]).
-export(['fold-left-016'/1]).
-export(['fold-left-017'/1]).
-export(['fold-left-018'/1]).
-export(['fold-left-019'/1]).
-export(['fold-left-020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fold-left-001',
   'fold-left-002',
   'fold-left-003',
   'fold-left-004',
   'fold-left-005',
   'fold-left-006',
   'fold-left-007',
   'fold-left-008',
   'fold-left-009',
   'fold-left-010',
   'fold-left-011',
   'fold-left-012',
   'fold-left-013',
   'fold-left-014',
   'fold-left-015',
   'fold-left-016',
   'fold-left-017',
   'fold-left-018',
   'fold-left-019',
   'fold-left-020'].
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
'fold-left-001'(_Config) ->
   Qry = "fold-left(1 to 5, 0, function($a, $b) { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         15\n      ",
 Tst = xqerl:run("15"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-left-002'(_Config) ->
   Qry = "fold-left((2,3,5,7), 1, function($a, $b) { $a * $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         210\n      ",
 Tst = xqerl:run("210"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-left-003'(_Config) ->
   Qry = "fold-left((true(), false(), false()), false(), function($a, $b) { $a or $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fold-left-004'(_Config) ->
   Qry = "fold-left((true(), false(), false()), false(), function($a, $b) { $a and $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fold-left-005'(_Config) ->
   Qry = "fold-left(1 to 5, (), function($a, $b) {($b, $a)})",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5, 4, 3, 2, 1\n      ",
 Tst = xqerl:run("5, 4, 3, 2, 1"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-left-006'(_Config) ->
   Qry = "fold-left(1 to 5, \"\", fn:concat(?, \".\", ?))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         '.1.2.3.4.5'\n      ",
 Tst = xqerl:run("'.1.2.3.4.5'"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-left-007'(_Config) ->
   Qry = "fold-left(1 to 5, \"$zero\", fn:concat(\"$f(\", ?, \", \", ?, \")\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $f($f($f($f($f($zero, 1), 2), 3), 4), 5)\n      ",
   case xqerl_test:string_value(Res) of
             "$f($f($f($f($f($zero, 1), 2), 3), 4), 5)" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fold-left-008'(_Config) ->
   Qry = "\n            let $hours := function ($emp as element(employee)) as xs:integer { sum($emp/hours/xs:integer(.)) },\n                $highest := function ($f as function(item()) as xs:anyAtomicType, $seq as item()*)  {           \n                    fold-left($seq, (), function($highestSoFar as item()*, $this as item()*) as item()* {\n                          if (empty($highestSoFar))\n                          then $this\n                          else let $thisValue := $f($this),\n                                   $highestValue := $f($highestSoFar[1])\n                               return if ($thisValue gt $highestValue)\n                                      then $this\n                                      else if ($thisValue eq $highestValue)\n                                           then ($highestSoFar, $this)\n                                           else $highestSoFar\n                       })\n            }\n            \n            return $highest($hours, /works/employee) \n        ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n            1\n            element(employee)\n            $result/@name = \"John Doe 2\"\n        \n       ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result/@name = \"John Doe 2\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'element(employee)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fold-left-009'(_Config) ->
   Qry = "\n            declare function local:distinct-nodes-stable($seq as node()*) { \n                fold-left( $seq, (), function($foundSoFar as node()*, $this as node()) as node()* {\n                if ($foundSoFar intersect $this)\n                then $foundSoFar\n                else ($foundSoFar, $this) })\n            }; \n            let $nodes := (<a/>, <b/>, <c/>, <d/>, <e/>, <f/>) \n            let $perm := ($nodes[1], $nodes[2], $nodes[4], $nodes[1], $nodes[2], $nodes[3], $nodes[2], $nodes[1]) \n            return local:distinct-nodes-stable($perm)/local-name()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         a b d c\n      ",
   case xqerl_test:string_value(Res) of
             "a b d c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fold-left-010'(_Config) ->
   Qry = "fold-left(1 to 5, 1, function($a, $b, $c){ $a + $b + $c })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-left-011'(_Config) ->
   Qry = "fold-left(1 to 5, 1, function($a, $b) as element(foo) { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-left-012'(_Config) ->
   Qry = "fold-left(1 to 5, \"\", function($a, $b) { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-left-013'(_Config) ->
   Qry = "fold-left(1 to 5, 1, function($a, $b as element(foo)) { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-left-014'(_Config) ->
   Qry = "fold-left(1 to 5, 1, function($a as element(bar), $b) { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-left-015'(_Config) ->
   Qry = "fold-left(1 to 2, 1, function($a, $b){ ($a, $b) })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            1, 1, 2\n        ",
 Tst = xqerl:run("1, 1, 2"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-left-016'(_Config) ->
   Qry = "\nlet $html := <html>\n  <body>\n	<div id=\"main\">\n	  <p class=\"para\">Hello World!</p>	\n	</div>\n	<p class=\"para\">Goodbye!</p>	\n  </body>\n</html>\nlet $css-selectors := <selectors>\n  <id>main</id>\n  <class>para</class>\n</selectors>/*\nlet $interpreter  := function($ctx, $selector){\n  typeswitch($selector)\n    case $a as element(id) return $ctx//*[@id = $a/text()]\n    case $a as element(class) return $ctx//*[@class = $a/text()]\n  default return ()\n}\nlet $result := fold-left($css-selectors, $html, $interpreter)\nreturn\n  $result/text()\n	 ",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            Hello World!\n        ",
   case xqerl_test:string_value(Res) of
             "Hello World!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fold-left-017'(_Config) ->
   Qry = "fold-left(1 to 13, 0, concat(\"(\", ?, \"+\", ?, \")\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            (((((((((((((0+1)+2)+3)+4)+5)+6)+7)+8)+9)+10)+11)+12)+13)\n        ",
   case xqerl_test:string_value(Res) of
             "(((((((((((((0+1)+2)+3)+4)+5)+6)+7)+8)+9)+10)+11)+12)+13)" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fold-left-018'(_Config) ->
   Qry = "\nlet $text := \"Peter Piper picked a peck of pickled peppers A peck of pickled peppers Peter Piper picked\"\nlet $tokens := tokenize($text, '\\s')\nlet $counter := function($result, $word){\n  let $word-count := $result[@value = $word]\n  return\n    if(empty($word-count)) then\n      ($result, <word value=\"{$word}\" count=\"1\" />)\n    else\n    (\n      $result except $word-count,\n      <word value=\"{$word-count/@value}\" count=\"{number($word-count/@count) + 1}\" />\n    )\n}\nlet $words := fold-left($tokens, (), $counter)\nreturn (\n  number($words[@value=\"Peter\"]/@count),\n  number($words[@value=\"Piper\"]/@count),\n  number($words[@value=\"pickled\"]/@count)\n)\n",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            2, 2, 2\n        ",
 Tst = xqerl:run("2, 2, 2"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-left-019'(_Config) ->
   Qry = "fold-left((13, 14, 9, 6), (), function($a, $b){ if(empty($a)) then $b else ($a + $b) div 2 })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            8.625\n        ",
   case xqerl_test:string_value(Res) of
             "8.625" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fold-left-020'(_Config) ->
   Qry = "fold-left(1 to 1000000, 0, function($a, $b){ $a + 1})",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            1000000\n        ",
   case xqerl_test:string_value(Res) of
             "1000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
