-module('prod_ExtensionExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['extexpr-1'/1]).
-export(['extexpr-2'/1]).
-export(['extexpr-3'/1]).
-export(['extexpr-4'/1]).
-export(['extexpr-5'/1]).
-export(['extexpr-6'/1]).
-export(['extexpr-7'/1]).
-export(['extexpr-8'/1]).
-export(['extexpr-9'/1]).
-export(['extexpr-10'/1]).
-export(['extexpr-11'/1]).
-export(['extexpr-12'/1]).
-export(['extexpr-13'/1]).
-export(['extexpr-14'/1]).
-export(['extexpr-15'/1]).
-export(['extexpr-16'/1]).
-export(['extexpr-17'/1]).
-export(['extexpr-18'/1]).
-export(['extexpr-19'/1]).
-export(['extexpr-20'/1]).
-export(['extexpr-21'/1]).
-export(['extexpr-22'/1]).
-export(['extexpr-23'/1]).
-export(['extexpr-24'/1]).
-export(['extexpr-25'/1]).
-export(['extexpr-26'/1]).
-export(['K-ExtensionExpression-1'/1]).
-export(['K-ExtensionExpression-2'/1]).
-export(['K-ExtensionExpression-3'/1]).
-export(['K-ExtensionExpression-4'/1]).
-export(['K-ExtensionExpression-4a'/1]).
-export(['K-ExtensionExpression-5'/1]).
-export(['K-ExtensionExpression-6'/1]).
-export(['K-ExtensionExpression-7'/1]).
-export(['K-ExtensionExpression-8'/1]).
-export(['K2-ExtensionExpression-1'/1]).
-export(['K2-ExtensionExpression-2'/1]).
-export(['K2-ExtensionExpression-3'/1]).
-export(['K2-ExtensionExpression-4'/1]).
-export(['K2-ExtensionExpression-5'/1]).
-export(['K2-ExtensionExpression-6'/1]).
-export(['K2-ExtensionExpression-7'/1]).
-export(['K2-ExtensionExpression-8'/1]).
-export(['K2-ExtensionExpression-9'/1]).
-export(['K2-ExtensionExpression-10'/1]).
-export(['K2-ExtensionExpression-11'/1]).
-export(['K2-ExtensionExpression-12'/1]).
-export(['K2-ExtensionExpression-13'/1]).
-export(['K2-ExtensionExpression-14'/1]).
-export(['K2-ExtensionExpression-15'/1]).
-export(['K2-ExtensionExpression-16'/1]).
-export(['K2-ExtensionExpression-17'/1]).
-export(['pragma-no-namespace-001'/1]).
-export(['pragma-no-namespace-002'/1]).
-export(['pragma-no-namespace-003'/1]).
-export(['pragma-no-namespace-004'/1]).
-export(['pragma-no-namespace-005'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'extexpr-1',
   'extexpr-2',
   'extexpr-3',
   'extexpr-4',
   'extexpr-5',
   'extexpr-6',
   'extexpr-7',
   'extexpr-8',
   'extexpr-9',
   'extexpr-10',
   'extexpr-11',
   'extexpr-12',
   'extexpr-13',
   'extexpr-14',
   'extexpr-15',
   'extexpr-16',
   'extexpr-17',
   'extexpr-18',
   'extexpr-19',
   'extexpr-20',
   'extexpr-21',
   'extexpr-22',
   'extexpr-23',
   'extexpr-24',
   'extexpr-25',
   'extexpr-26',
   'K-ExtensionExpression-1',
   'K-ExtensionExpression-2',
   'K-ExtensionExpression-3',
   'K-ExtensionExpression-4',
   'K-ExtensionExpression-4a',
   'K-ExtensionExpression-5',
   'K-ExtensionExpression-6',
   'K-ExtensionExpression-7',
   'K-ExtensionExpression-8',
   'K2-ExtensionExpression-1',
   'K2-ExtensionExpression-2',
   'K2-ExtensionExpression-3',
   'K2-ExtensionExpression-4',
   'K2-ExtensionExpression-5',
   'K2-ExtensionExpression-6',
   'K2-ExtensionExpression-7',
   'K2-ExtensionExpression-8',
   'K2-ExtensionExpression-9',
   'K2-ExtensionExpression-10',
   'K2-ExtensionExpression-11',
   'K2-ExtensionExpression-12',
   'K2-ExtensionExpression-13',
   'K2-ExtensionExpression-14',
   'K2-ExtensionExpression-15',
   'K2-ExtensionExpression-16',
   'K2-ExtensionExpression-17',
   'pragma-no-namespace-001',
   'pragma-no-namespace-002',
   'pragma-no-namespace-003',
   'pragma-no-namespace-004',
   'pragma-no-namespace-005'].
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
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'extexpr-1'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) { /works/employee[12]/overtime }",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-2'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-3'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index \"ABC#\" #) {/works/employee[12]/overtime}",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-4'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns2:you-do-not-know-me-as-index #) {/works/employee[12]/overtime}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-5'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) (# ns1:you-should-not-know-me-either #) {/works/employee[12]/overtime}",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-6'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; for $x in (# ns1:you-do-not-know-me-as-index #) {/works/employee[12]/overtime} return (# ns1:you-do-not-know-me-as-index #) {/works/employee[12]/overtime}",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-7'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(every $x in (1,2,3) satisfies $x < 4)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-8'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(some $x in (1,2,3) satisfies $x = 2)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-9'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:true())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-10'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:false())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-11'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:false() or fn:true())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-12'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:false() or fn:false())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-13'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:true() and fn:true())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-14'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:true() and fn:false())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-15'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {if(fn:true()) then \"passed\" else \"failed\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-16'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {if(fn:false()) then \"failed\" else \"passed\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-17'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {typeswitch (\"A String\") case $i as xs:decimal return \"test failed\" case $i as xs:integer return \"test failed\" case $i as xs:string return \"test passed\" default return \"test failed\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "test passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-18'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:not(fn:true()))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-19'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {fn:string-length(\"abc\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-20'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {fn:count((1,2,3))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-21'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {3+2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-22'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 - 5}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-23'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 * 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-24'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 div 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-25'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 idiv 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-26'(_Config) ->
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index#){fn:count((1,2,3))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-1'(_Config) ->
   Qry = "(#local:pr content # {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-2'(_Config) ->
   Qry = "local:pr content #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-3'(_Config) ->
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\"; (#prefix:pr content #) {1 eq 1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-4'(_Config) ->
   {skip,"XQ10 XQ30"}.
'K-ExtensionExpression-4a'(_Config) ->
   Qry = "(#name content #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-5'(_Config) ->
   Qry = "declare namespace prefix = \"\"; (# prefix:notRecognized #){1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-6'(_Config) ->
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\"; 1 eq (#prefix:notRecognized ##cont## # # ( \"# ) # )# )#ent #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-7'(_Config) ->
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\"; (#prefix:PragmaNotSupported content #) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-8'(_Config) ->
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\";
(::)1(::)eq(::)(#prefix:name ##cont## # # ( \"# ) #
		)# )#ent #)(::){(::)1(::)}(::)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-1'(_Config) ->
   Qry = "declare namespace xs = \"\"; (#xs:name content #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-2'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-3'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression #) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-4'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression content#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-5'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression (:(:(:(:(: content #) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-6'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression(content)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-7'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\";
(#ex:myExtensionExpression(:content:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-8'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-9'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-10'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-11'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression :)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-12'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-13'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-14'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (#",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-15'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (# ex:name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-16'(_Config) ->
   Qry = "declare namespace ex = \"http://example.com/\"; (# ex:name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-17'(_Config) ->
   Qry = "(#xs:a#)(#xs:a#)(#local:a#){-5}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-001'(_Config) ->
   Qry = "(#Q{}unprefixed-pragma #) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-002'(_Config) ->
   Qry = "(#Q{}unprefixed-pragma #) (#Q{}another-unprefixed-pragma#) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-003'(_Config) ->
   Qry = "(#Q{}unprefixed-pragma #) { false() }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-004'(_Config) ->
   Qry = "(#Q{}unprefixed-pragma #) (#Q{}another-unprefixed-pragma #) { false() }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-005'(_Config) ->
   Qry = "(#Q{}unprefixed-pragma #) (#Q{http://www.example.org/}prefixed-pragma #) { false() }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
