-module('op_yearMonthDuration_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-yearMonthDuration-greater-than2args-1'/1]).
-export(['op-yearMonthDuration-greater-than2args-2'/1]).
-export(['op-yearMonthDuration-greater-than2args-3'/1]).
-export(['op-yearMonthDuration-greater-than2args-4'/1]).
-export(['op-yearMonthDuration-greater-than2args-5'/1]).
-export(['op-yearMonthDuration-greater-than2args-6'/1]).
-export(['op-yearMonthDuration-greater-than2args-7'/1]).
-export(['op-yearMonthDuration-greater-than2args-8'/1]).
-export(['op-yearMonthDuration-greater-than2args-9'/1]).
-export(['op-yearMonthDuration-greater-than2args-10'/1]).
-export(['op-yearMonthDuration-greater-than-3'/1]).
-export(['op-yearMonthDuration-greater-than-4'/1]).
-export(['op-yearMonthDuration-greater-than-5'/1]).
-export(['op-yearMonthDuration-greater-than-6'/1]).
-export(['op-yearMonthDuration-greater-than-7'/1]).
-export(['op-yearMonthDuration-greater-than-8'/1]).
-export(['op-yearMonthDuration-greater-than-9'/1]).
-export(['op-yearMonthDuration-greater-than-10'/1]).
-export(['op-yearMonthDuration-greater-than-11'/1]).
-export(['op-yearMonthDuration-greater-than-12'/1]).
-export(['op-yearMonthDuration-greater-than-13'/1]).
-export(['op-yearMonthDuration-greater-than-14'/1]).
-export(['K-YearMonthDurationGT-1'/1]).
-export(['K-YearMonthDurationGT-2'/1]).
-export(['K-YearMonthDurationGT-3'/1]).
-export(['K-YearMonthDurationGT-4'/1]).
-export(['K-YearMonthDurationGT-5'/1]).
-export(['K-YearMonthDurationGT-6'/1]).
-export(['cbcl-yearMonthDuration-greater-than-001'/1]).
-export(['cbcl-yearMonthDuration-greater-than-002'/1]).
-export(['cbcl-yearMonthDuration-greater-than-003'/1]).
-export(['cbcl-yearMonthDuration-greater-than-004'/1]).
-export(['cbcl-yearMonthDuration-greater-than-005'/1]).
-export(['cbcl-yearMonthDuration-greater-than-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-yearMonthDuration-greater-than2args-1',
   'op-yearMonthDuration-greater-than2args-2',
   'op-yearMonthDuration-greater-than2args-3',
   'op-yearMonthDuration-greater-than2args-4',
   'op-yearMonthDuration-greater-than2args-5',
   'op-yearMonthDuration-greater-than2args-6',
   'op-yearMonthDuration-greater-than2args-7',
   'op-yearMonthDuration-greater-than2args-8',
   'op-yearMonthDuration-greater-than2args-9',
   'op-yearMonthDuration-greater-than2args-10',
   'op-yearMonthDuration-greater-than-3',
   'op-yearMonthDuration-greater-than-4',
   'op-yearMonthDuration-greater-than-5',
   'op-yearMonthDuration-greater-than-6',
   'op-yearMonthDuration-greater-than-7',
   'op-yearMonthDuration-greater-than-8',
   'op-yearMonthDuration-greater-than-9',
   'op-yearMonthDuration-greater-than-10',
   'op-yearMonthDuration-greater-than-11',
   'op-yearMonthDuration-greater-than-12',
   'op-yearMonthDuration-greater-than-13',
   'op-yearMonthDuration-greater-than-14',
   'K-YearMonthDurationGT-1',
   'K-YearMonthDurationGT-2',
   'K-YearMonthDurationGT-3',
   'K-YearMonthDurationGT-4',
   'K-YearMonthDurationGT-5',
   'K-YearMonthDurationGT-6',
   'cbcl-yearMonthDuration-greater-than-001',
   'cbcl-yearMonthDuration-greater-than-002',
   'cbcl-yearMonthDuration-greater-than-003',
   'cbcl-yearMonthDuration-greater-than-004',
   'cbcl-yearMonthDuration-greater-than-005',
   'cbcl-yearMonthDuration-greater-than-006'].
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
'op-yearMonthDuration-greater-than2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") gt xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-greater-than2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") gt xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-greater-than2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") gt xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-greater-than2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") gt xs:yearMonthDuration(\"P1000Y6M\")",
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
'op-yearMonthDuration-greater-than2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") gt xs:yearMonthDuration(\"P2030Y12M\")",
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
'op-yearMonthDuration-greater-than2args-6'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") le xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-greater-than2args-7'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") le xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-greater-than2args-8'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") le xs:yearMonthDuration(\"P0Y0M\")",
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
'op-yearMonthDuration-greater-than2args-9'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") le xs:yearMonthDuration(\"P1000Y6M\")",
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
'op-yearMonthDuration-greater-than2args-10'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") le xs:yearMonthDuration(\"P2030Y12M\")",
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
'op-yearMonthDuration-greater-than-3'(_Config) ->
   Qry = "fn:not((xs:yearMonthDuration(\"P20Y123M\") gt xs:yearMonthDuration(\"P20Y11M\")))",
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
'op-yearMonthDuration-greater-than-4'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P20Y10M\") ge xs:yearMonthDuration(\"P20Y10M\"))",
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
'op-yearMonthDuration-greater-than-5'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P20Y09M\") gt xs:yearMonthDuration(\"P20Y10M\"))",
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
'op-yearMonthDuration-greater-than-6'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P10Y07M\") ge xs:yearMonthDuration(\"P10Y09M\"))",
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
'op-yearMonthDuration-greater-than-7'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y09M\") gt xs:yearMonthDuration(\"P09Y10M\")) and (xs:yearMonthDuration(\"P10Y01M\") gt xs:yearMonthDuration(\"P08Y06M\"))",
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
'op-yearMonthDuration-greater-than-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y09M\") ge xs:yearMonthDuration(\"P10Y01M\")) and (xs:yearMonthDuration(\"P02Y04M\") ge xs:yearMonthDuration(\"P09Y07M\"))",
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
'op-yearMonthDuration-greater-than-9'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y08M\") gt xs:yearMonthDuration(\"P10Y07M\")) or (xs:yearMonthDuration(\"P10Y09M\") gt xs:yearMonthDuration(\"P10Y09M\"))",
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
'op-yearMonthDuration-greater-than-10'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") ge xs:yearMonthDuration(\"P09Y06M\")) or (xs:yearMonthDuration(\"P15Y01M\") ge xs:yearMonthDuration(\"P02Y04M\"))",
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
'op-yearMonthDuration-greater-than-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y02M\") gt xs:yearMonthDuration(\"P01Y10M\")) or (fn:true())",
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
'op-yearMonthDuration-greater-than-12'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") ge xs:yearMonthDuration(\"P09Y05M\")) or (fn:true())",
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
'op-yearMonthDuration-greater-than-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P30Y10M\") gt xs:yearMonthDuration(\"P01Y02M\")) or (fn:false())",
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
'op-yearMonthDuration-greater-than-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y05M\") ge xs:yearMonthDuration(\"P20Y10M\")) or (fn:false())",
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
'K-YearMonthDurationGT-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y10M\") gt xs:yearMonthDuration(\"P1999Y9M\")",
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
'K-YearMonthDurationGT-2'(_Config) ->
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") gt xs:yearMonthDuration(\"P1999Y10M\"))",
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
'K-YearMonthDurationGT-3'(_Config) ->
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") gt xs:yearMonthDuration(\"P1999Y11M\"))",
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
'K-YearMonthDurationGT-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y11M\") ge xs:yearMonthDuration(\"P1999Y10M\")",
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
'K-YearMonthDurationGT-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y10M\") ge xs:yearMonthDuration(\"P1999Y10M\")",
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
'K-YearMonthDurationGT-6'(_Config) ->
   Qry = "not(xs:yearMonthDuration(\"P1999Y9M\") ge xs:yearMonthDuration(\"P1999Y10M\"))",
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
'cbcl-yearMonthDuration-greater-than-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        not(local:yearMonthDuration(1, 1) gt xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-greater-than-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        not(local:yearMonthDuration(1, 1) ge xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-greater-than-003'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        exists(local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:true()) gt xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-greater-than-004'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:false()) gt xs:yearMonthDuration(\"P0Y\")",
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
'cbcl-yearMonthDuration-greater-than-005'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        exists(local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:true()) le xs:yearMonthDuration(\"P0Y\"))",
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
'cbcl-yearMonthDuration-greater-than-006'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:false()) le xs:yearMonthDuration(\"P0Y\")",
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
