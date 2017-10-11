-module('op_gDay_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-gDay-equal2args-1'/1]).
-export(['op-gDay-equal2args-2'/1]).
-export(['op-gDay-equal2args-3'/1]).
-export(['op-gDay-equal2args-4'/1]).
-export(['op-gDay-equal2args-5'/1]).
-export(['op-gDay-equal2args-6'/1]).
-export(['op-gDay-equal2args-7'/1]).
-export(['op-gDay-equal2args-8'/1]).
-export(['op-gDay-equal2args-9'/1]).
-export(['op-gDay-equal2args-10'/1]).
-export(['op-gDay-equal-2'/1]).
-export(['op-gDay-equal-3'/1]).
-export(['op-gDay-equal-4'/1]).
-export(['op-gDay-equal-5'/1]).
-export(['op-gDay-equal-6'/1]).
-export(['op-gDay-equal-7'/1]).
-export(['op-gDay-equal-8'/1]).
-export(['op-gDay-equal-9'/1]).
-export(['op-gDay-equal-10'/1]).
-export(['op-gDay-equal-11'/1]).
-export(['op-gDay-equal-12'/1]).
-export(['op-gDay-equal-13'/1]).
-export(['op-gDay-equal-14'/1]).
-export(['K-gDayEQ-1'/1]).
-export(['K-gDayEQ-2'/1]).
-export(['K-gDayEQ-3'/1]).
-export(['K-gDayEQ-4'/1]).
-export(['K-gDayEQ-5'/1]).
-export(['K-gDayEQ-6'/1]).
-export(['K-gDayEQ-7'/1]).
-export(['K-gDayEQ-8'/1]).
-export(['cbcl-gDay-equal-001'/1]).
-export(['cbcl-gDay-equal-002'/1]).
-export(['cbcl-gDay-equal-003'/1]).
-export(['cbcl-gDay-equal-004'/1]).
-export(['cbcl-gDay-equal-005'/1]).
-export(['cbcl-gDay-equal-006'/1]).
-export(['cbcl-gDay-equal-007'/1]).
-export(['cbcl-gDay-equal-008'/1]).
-export(['cbcl-gDay-equal-009'/1]).
-export(['cbcl-gDay-equal-010'/1]).
-export(['cbcl-gDay-equal-011'/1]).
-export(['cbcl-gDay-equal-012'/1]).
-export(['cbcl-gDay-equal-013'/1]).
-export(['cbcl-gDay-equal-014'/1]).
-export(['cbcl-gDay-equal-015'/1]).
-export(['cbcl-gDay-equal-016'/1]).
-export(['cbcl-gDay-equal-017'/1]).
-export(['cbcl-gDay-equal-018'/1]).
-export(['cbcl-gDay-equal-019'/1]).
-export(['cbcl-gDay-equal-020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-gDay-equal2args-1',
   'op-gDay-equal2args-2',
   'op-gDay-equal2args-3',
   'op-gDay-equal2args-4',
   'op-gDay-equal2args-5',
   'op-gDay-equal2args-6',
   'op-gDay-equal2args-7',
   'op-gDay-equal2args-8',
   'op-gDay-equal2args-9',
   'op-gDay-equal2args-10',
   'op-gDay-equal-2',
   'op-gDay-equal-3',
   'op-gDay-equal-4',
   'op-gDay-equal-5',
   'op-gDay-equal-6',
   'op-gDay-equal-7',
   'op-gDay-equal-8',
   'op-gDay-equal-9',
   'op-gDay-equal-10',
   'op-gDay-equal-11',
   'op-gDay-equal-12',
   'op-gDay-equal-13',
   'op-gDay-equal-14',
   'K-gDayEQ-1',
   'K-gDayEQ-2',
   'K-gDayEQ-3',
   'K-gDayEQ-4',
   'K-gDayEQ-5',
   'K-gDayEQ-6',
   'K-gDayEQ-7',
   'K-gDayEQ-8',
   'cbcl-gDay-equal-001',
   'cbcl-gDay-equal-002',
   'cbcl-gDay-equal-003',
   'cbcl-gDay-equal-004',
   'cbcl-gDay-equal-005',
   'cbcl-gDay-equal-006',
   'cbcl-gDay-equal-007',
   'cbcl-gDay-equal-008',
   'cbcl-gDay-equal-009',
   'cbcl-gDay-equal-010',
   'cbcl-gDay-equal-011',
   'cbcl-gDay-equal-012',
   'cbcl-gDay-equal-013',
   'cbcl-gDay-equal-014',
   'cbcl-gDay-equal-015',
   'cbcl-gDay-equal-016',
   'cbcl-gDay-equal-017',
   'cbcl-gDay-equal-018',
   'cbcl-gDay-equal-019',
   'cbcl-gDay-equal-020'].
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
'op-gDay-equal2args-1'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---01Z\")",
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
'op-gDay-equal2args-2'(_Config) ->
   Qry = "xs:gDay(\"---14Z\") eq xs:gDay(\"---01Z\")",
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
'op-gDay-equal2args-3'(_Config) ->
   Qry = "xs:gDay(\"---31Z\") eq xs:gDay(\"---01Z\")",
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
'op-gDay-equal2args-4'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---14Z\")",
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
'op-gDay-equal2args-5'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---31Z\")",
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
'op-gDay-equal2args-6'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") ne xs:gDay(\"---01Z\")",
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
'op-gDay-equal2args-7'(_Config) ->
   Qry = "xs:gDay(\"---14Z\") ne xs:gDay(\"---01Z\")",
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
'op-gDay-equal2args-8'(_Config) ->
   Qry = "xs:gDay(\"---31Z\") ne xs:gDay(\"---01Z\")",
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
'op-gDay-equal2args-9'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") ne xs:gDay(\"---14Z\")",
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
'op-gDay-equal2args-10'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") ne xs:gDay(\"---31Z\")",
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
'op-gDay-equal-2'(_Config) ->
   Qry = "(xs:gDay(\"---12-05:00\") eq xs:gDay(\"---12Z\"))",
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
'op-gDay-equal-3'(_Config) ->
   Qry = "fn:not((xs:gDay(\"---12Z\") eq xs:gDay(\"---12Z\")))",
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
'op-gDay-equal-4'(_Config) ->
   Qry = "fn:not(xs:gDay(\"---05Z\") ne xs:gDay(\"---06Z\"))",
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
'op-gDay-equal-5'(_Config) ->
   Qry = "fn:not(xs:gDay(\"---11Z\") eq xs:gDay(\"---10Z\"))",
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
'op-gDay-equal-6'(_Config) ->
   Qry = "fn:not(xs:gDay(\"---05Z\") ne xs:gDay(\"---05Z\"))",
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
'op-gDay-equal-7'(_Config) ->
   Qry = "(xs:gDay(\"---04Z\") eq xs:gDay(\"---02Z\")) and (xs:gDay(\"---01Z\") eq xs:gDay(\"---12Z\"))",
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
'op-gDay-equal-8'(_Config) ->
   Qry = "(xs:gDay(\"---12Z\") ne xs:gDay(\"---03Z\")) and (xs:gDay(\"---05Z\") ne xs:gDay(\"---08Z\"))",
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
'op-gDay-equal-9'(_Config) ->
   Qry = "(xs:gDay(\"---02Z\") eq xs:gDay(\"---02Z\")) or (xs:gDay(\"---06Z\") eq xs:gDay(\"---06Z\"))",
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
'op-gDay-equal-10'(_Config) ->
   Qry = "(xs:gDay(\"---06Z\") ne xs:gDay(\"---06Z\")) or (xs:gDay(\"---08Z\") ne xs:gDay(\"---09Z\"))",
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
'op-gDay-equal-11'(_Config) ->
   Qry = "(xs:gDay(\"---03Z\") eq xs:gDay(\"---01Z\")) or (fn:true())",
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
'op-gDay-equal-12'(_Config) ->
   Qry = "(xs:gDay(\"---08Z\") ne xs:gDay(\"---07Z\")) or (fn:true())",
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
'op-gDay-equal-13'(_Config) ->
   Qry = "(xs:gDay(\"---05Z\") eq xs:gDay(\"---05Z\")) or (fn:false())",
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
'op-gDay-equal-14'(_Config) ->
   Qry = "(xs:gDay(\"---09Z\") ne xs:gDay(\"---09Z\")) or (fn:false())",
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
'K-gDayEQ-1'(_Config) ->
   Qry = "xs:gDay(\" ---31 \") eq xs:gDay(\"---31\")",
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
'K-gDayEQ-2'(_Config) ->
   Qry = "not(xs:gDay(\"---31\") eq xs:gDay(\"---01\"))",
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
'K-gDayEQ-3'(_Config) ->
   Qry = "xs:gDay(\"---01\") ne xs:gDay(\"---10\")",
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
'K-gDayEQ-4'(_Config) ->
   Qry = "not(xs:gDay(\"---01\") ne xs:gDay(\"---01\"))",
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
'K-gDayEQ-5'(_Config) ->
   Qry = "xs:gDay(\"---01-00:00\") eq xs:gDay(\"---01Z\")",
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
'K-gDayEQ-6'(_Config) ->
   Qry = "xs:gDay(\"---01+00:00\") eq xs:gDay(\"---01Z\")",
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
'K-gDayEQ-7'(_Config) ->
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---01Z\")",
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
'K-gDayEQ-8'(_Config) ->
   Qry = "xs:gDay(\"---01-00:00\") eq xs:gDay(\"---01+00:00\")",
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
'cbcl-gDay-equal-001'(_Config) ->
   Qry = "declare function local:gDay($day as xs:integer) { if ($day lt 10) then xs:gDay(concat(\"---0\", $day)) else xs:gDay(concat(\"---\", $day)) }; not(local:gDay(1) eq xs:gDay(\"---31\"))",
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
'cbcl-gDay-equal-002'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---30\") eq xs:gDay(\"---31+09:01\")
            else xs:gDay(\"---30\") eq xs:gDay(\"---31+09:00\")",
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
'cbcl-gDay-equal-003'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---31+09:01\") eq xs:gDay(\"---30\")
            else xs:gDay(\"---31+09:00\") eq xs:gDay(\"---30\")",
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
'cbcl-gDay-equal-004'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---30\") eq xs:gDay(\"---31-09:01\")
            else xs:gDay(\"---30\") eq xs:gDay(\"---31-09:00\")",
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
'cbcl-gDay-equal-005'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---31-09:01\") eq xs:gDay(\"---30\")
            else xs:gDay(\"---31-09:00\") eq xs:gDay(\"---30\")",
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
'cbcl-gDay-equal-006'(_Config) ->
   Qry = "declare function local:gDay($day as xs:integer) { if ($day lt 10) then xs:gDay(concat(\"---0\", $day)) else xs:gDay(concat(\"---\", $day)) }; not(local:gDay(1) ne xs:gDay(\"---31\"))",
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
'cbcl-gDay-equal-007'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---30\") ne xs:gDay(\"---31+09:01\")
            else xs:gDay(\"---30\") ne xs:gDay(\"---31+09:00\")",
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
'cbcl-gDay-equal-008'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---31+09:01\") ne xs:gDay(\"---30\")
            else xs:gDay(\"---31+09:00\") ne xs:gDay(\"---30\")",
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
'cbcl-gDay-equal-009'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---30\") ne xs:gDay(\"---31-09:01\")
            else xs:gDay(\"---30\") ne xs:gDay(\"---31-09:00\")",
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
'cbcl-gDay-equal-010'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---31-09:01\") ne xs:gDay(\"---30\")
            else xs:gDay(\"---31-09:00\") ne xs:gDay(\"---30\")",
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
'cbcl-gDay-equal-011'(_Config) ->
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; exists(local:gDay(xs:gDay(\"---31\"), fn:true()) eq xs:gDay(\"---31\"))",
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
'cbcl-gDay-equal-012'(_Config) ->
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; local:gDay(xs:gDay(\"---31\"), fn:false()) eq xs:gDay(\"---31\")",
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
'cbcl-gDay-equal-013'(_Config) ->
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; exists(local:gDay(xs:gDay(\"---31\"), fn:true()) ne xs:gDay(\"---31\"))",
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
'cbcl-gDay-equal-014'(_Config) ->
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; local:gDay(xs:gDay(\"---31\"), fn:false()) ne xs:gDay(\"---31\")",
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
'cbcl-gDay-equal-015'(_Config) ->
   Qry = "xs:gDay(\"---30-12:00\") eq xs:gDay(\"---31+12:00\")",
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
'cbcl-gDay-equal-016'(_Config) ->
   Qry = "xs:gDay(\"---31+12:00\") eq xs:gDay(\"---30-12:00\")",
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
'cbcl-gDay-equal-017'(_Config) ->
   Qry = "xs:gDay(\"---30-12:00\") ne xs:gDay(\"---31+12:00\")",
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
'cbcl-gDay-equal-018'(_Config) ->
   Qry = "xs:gDay(\"---31+12:00\") ne xs:gDay(\"---30-12:00\")",
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
'cbcl-gDay-equal-019'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1H'))
            then xs:gDay(\"---31+01:01\") eq xs:gDay(\"---31\")
            else xs:gDay(\"---31+01:00\") eq xs:gDay(\"---31\")",
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
'cbcl-gDay-equal-020'(_Config) ->
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1H'))
            then xs:gDay(\"---31\") eq xs:gDay(\"---31+01:01\")
            else xs:gDay(\"---31\") eq xs:gDay(\"---31+01:00\")",
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
