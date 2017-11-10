-module('op_yearMonthDuration_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-yearMonthDuration-less-than2args-1'/1]).
-export(['op-yearMonthDuration-less-than2args-2'/1]).
-export(['op-yearMonthDuration-less-than2args-3'/1]).
-export(['op-yearMonthDuration-less-than2args-4'/1]).
-export(['op-yearMonthDuration-less-than2args-5'/1]).
-export(['op-yearMonthDuration-less-than2args-6'/1]).
-export(['op-yearMonthDuration-less-than2argsNew-7'/1]).
-export(['op-yearMonthDuration-less-than2args-8'/1]).
-export(['op-yearMonthDuration-less-than2args-9'/1]).
-export(['op-yearMonthDuration-less-than2args-10'/1]).
-export(['op-yearMonthDuration-less-than-3'/1]).
-export(['op-yearMonthDuration-less-than-4'/1]).
-export(['op-yearMonthDuration-less-than-5'/1]).
-export(['op-yearMonthDuration-less-than-6'/1]).
-export(['op-yearMonthDuration-less-thanNew-7'/1]).
-export(['op-yearMonthDuration-less-than-8'/1]).
-export(['op-yearMonthDuration-less-than-9'/1]).
-export(['op-yearMonthDuration-less-than-10'/1]).
-export(['op-yearMonthDuration-less-than-11'/1]).
-export(['op-yearMonthDuration-less-than-12'/1]).
-export(['op-yearMonthDuration-less-than-13'/1]).
-export(['op-yearMonthDuration-less-than-14'/1]).
-export(['K-YearMonthDurationLT-1'/1]).
-export(['K-YearMonthDurationLT-2'/1]).
-export(['K-YearMonthDurationLT-3'/1]).
-export(['K-YearMonthDurationLT-4'/1]).
-export(['K-YearMonthDurationLT-5'/1]).
-export(['K-YearMonthDurationLT-6'/1]).
-export(['cbcl-yearMonthDuration-less-than-001'/1]).
-export(['cbcl-yearMonthDuration-less-than-002'/1]).
-export(['cbcl-yearMonthDuration-less-than-003'/1]).
-export(['cbcl-yearMonthDuration-less-than-004'/1]).
-export(['cbcl-yearMonthDuration-less-than-005'/1]).
-export(['cbcl-yearMonthDuration-less-than-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-yearMonthDuration-less-than2args-1',
   'op-yearMonthDuration-less-than2args-2',
   'op-yearMonthDuration-less-than2args-3',
   'op-yearMonthDuration-less-than2args-4',
   'op-yearMonthDuration-less-than2args-5',
   'op-yearMonthDuration-less-than2args-6',
   'op-yearMonthDuration-less-than2argsNew-7',
   'op-yearMonthDuration-less-than2args-8',
   'op-yearMonthDuration-less-than2args-9',
   'op-yearMonthDuration-less-than2args-10',
   'op-yearMonthDuration-less-than-3',
   'op-yearMonthDuration-less-than-4',
   'op-yearMonthDuration-less-than-5',
   'op-yearMonthDuration-less-than-6',
   'op-yearMonthDuration-less-thanNew-7',
   'op-yearMonthDuration-less-than-8',
   'op-yearMonthDuration-less-than-9',
   'op-yearMonthDuration-less-than-10',
   'op-yearMonthDuration-less-than-11',
   'op-yearMonthDuration-less-than-12',
   'op-yearMonthDuration-less-than-13',
   'op-yearMonthDuration-less-than-14',
   'K-YearMonthDurationLT-1',
   'K-YearMonthDurationLT-2',
   'K-YearMonthDurationLT-3',
   'K-YearMonthDurationLT-4',
   'K-YearMonthDurationLT-5',
   'K-YearMonthDurationLT-6',
   'cbcl-yearMonthDuration-less-than-001',
   'cbcl-yearMonthDuration-less-than-002',
   'cbcl-yearMonthDuration-less-than-003',
   'cbcl-yearMonthDuration-less-than-004',
   'cbcl-yearMonthDuration-less-than-005',
   'cbcl-yearMonthDuration-less-than-006'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'op-yearMonthDuration-less-than2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") lt xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-less-than2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") lt xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-less-than2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") lt xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-less-than2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") lt xs:yearMonthDuration(\"P1000Y6M\")",
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
'op-yearMonthDuration-less-than2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") lt xs:yearMonthDuration(\"P2030Y12M\")",
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
'op-yearMonthDuration-less-than2args-6'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") ge xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-less-than2argsNew-7'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") ge xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-less-than2args-8'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") ge xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-less-than2args-9'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") ge xs:yearMonthDuration(\"P1000Y6M\")",
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
'op-yearMonthDuration-less-than2args-10'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") ge xs:yearMonthDuration(\"P2030Y12M\")",
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
'op-yearMonthDuration-less-than-3'(_Config) ->
   Qry = "fn:not((xs:yearMonthDuration(\"P20Y10M\") lt xs:yearMonthDuration(\"P20Y11M\")))",
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
'op-yearMonthDuration-less-than-4'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P20Y10M\") le xs:yearMonthDuration(\"P20Y10M\"))",
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
'op-yearMonthDuration-less-than-5'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P20Y10M\") lt xs:yearMonthDuration(\"P20Y09M\"))",
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
'op-yearMonthDuration-less-than-6'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P10Y09M\") le xs:yearMonthDuration(\"P10Y07M\"))",
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
'op-yearMonthDuration-less-thanNew-7'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y09M\") lt xs:yearMonthDuration(\"P09Y10M\")) and (xs:yearMonthDuration(\"P10Y01M\") lt xs:yearMonthDuration(\"P08Y06M\"))",
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
'op-yearMonthDuration-less-than-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y09M\") le xs:yearMonthDuration(\"P10Y01M\")) and (xs:yearMonthDuration(\"P02Y04M\") le xs:yearMonthDuration(\"P09Y07M\"))",
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
'op-yearMonthDuration-less-than-9'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y08M\") lt xs:yearMonthDuration(\"P10Y07M\")) or (xs:yearMonthDuration(\"P10Y09M\") lt xs:yearMonthDuration(\"P10Y09M\"))",
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
'op-yearMonthDuration-less-than-10'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") le xs:yearMonthDuration(\"P09Y06M\")) or (xs:yearMonthDuration(\"P15Y01M\") le xs:yearMonthDuration(\"P02Y04M\"))",
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
'op-yearMonthDuration-less-than-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y02M\") lt xs:yearMonthDuration(\"P01Y10M\")) or (fn:true())",
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
'op-yearMonthDuration-less-than-12'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") le xs:yearMonthDuration(\"P09Y05M\")) or (fn:true())",
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
'op-yearMonthDuration-less-than-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P30Y10M\") lt xs:yearMonthDuration(\"P01Y02M\")) or (fn:false())",
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
'op-yearMonthDuration-less-than-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y05M\") le xs:yearMonthDuration(\"P20Y10M\")) or (fn:false())",
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
'K-YearMonthDurationLT-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y9M\") lt xs:yearMonthDuration(\"P1999Y10M\")",
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
'K-YearMonthDurationLT-2'(_Config) ->
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") lt xs:yearMonthDuration(\"P1999Y10M\"))",
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
'K-YearMonthDurationLT-3'(_Config) ->
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") lt xs:yearMonthDuration(\"P1999Y9M\"))",
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
'K-YearMonthDurationLT-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y10M\") le xs:yearMonthDuration(\"P1999Y10M\")",
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
'K-YearMonthDurationLT-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y9M\") le xs:yearMonthDuration(\"P1999Y10M\")",
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
'K-YearMonthDurationLT-6'(_Config) ->
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") le xs:yearMonthDuration(\"P1999Y9M\"))",
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
'cbcl-yearMonthDuration-less-than-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        not(local:yearMonthDuration(1, 1) lt xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-less-than-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        not(local:yearMonthDuration(1, 1) le xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-less-than-003'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        exists(local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:true()) lt xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-less-than-004'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:false()) lt xs:yearMonthDuration(\"P0Y\")",
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
'cbcl-yearMonthDuration-less-than-005'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        exists(local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:true()) ge xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-less-than-006'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:false()) ge xs:yearMonthDuration(\"P0Y\")",
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
