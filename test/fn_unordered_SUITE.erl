-module('fn_unordered_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-unordered-mix-args-001'/1]).
-export(['fn-unordered-mix-args-002'/1]).
-export(['fn-unordered-mix-args-003'/1]).
-export(['fn-unordered-mix-args-004'/1]).
-export(['fn-unordered-mix-args-005'/1]).
-export(['fn-unordered-mix-args-006'/1]).
-export(['fn-unordered-mix-args-007'/1]).
-export(['fn-unordered-mix-args-008'/1]).
-export(['fn-unordered-mix-args-009'/1]).
-export(['fn-unordered-mix-args-010'/1]).
-export(['fn-unordered-mix-args-011'/1]).
-export(['fn-unordered-mix-args-012'/1]).
-export(['fn-unordered-mix-args-013'/1]).
-export(['fn-unordered-mix-args-014'/1]).
-export(['fn-unordered-mix-args-015'/1]).
-export(['fn-unordered-mix-args-016'/1]).
-export(['fn-unordered-mix-args-017'/1]).
-export(['fn-unordered-mix-args-018'/1]).
-export(['fn-unordered-mix-args-019'/1]).
-export(['fn-unordered-mix-args-020'/1]).
-export(['fn-unordered-mix-args-021'/1]).
-export(['fn-unordered-mix-args-022'/1]).
-export(['fn-unordered-mix-args-023'/1]).
-export(['K-SeqUnorderedFunc-1'/1]).
-export(['K-SeqUnorderedFunc-2'/1]).
-export(['K-SeqUnorderedFunc-3'/1]).
-export(['K-SeqUnorderedFunc-4'/1]).
-export(['K-SeqUnorderedFunc-5'/1]).
-export(['K-SeqUnorderedFunc-6'/1]).
-export(['K-SeqUnorderedFunc-7'/1]).
-export(['K-SeqUnorderedFunc-8'/1]).
-export(['cbcl-fn-unordered-001'/1]).
-export(['cbcl-fn-unordered-002'/1]).
-export(['cbcl-fn-unordered-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-unordered-mix-args-001',
   'fn-unordered-mix-args-002',
   'fn-unordered-mix-args-003',
   'fn-unordered-mix-args-004',
   'fn-unordered-mix-args-005',
   'fn-unordered-mix-args-006',
   'fn-unordered-mix-args-007',
   'fn-unordered-mix-args-008',
   'fn-unordered-mix-args-009',
   'fn-unordered-mix-args-010',
   'fn-unordered-mix-args-011',
   'fn-unordered-mix-args-012',
   'fn-unordered-mix-args-013',
   'fn-unordered-mix-args-014',
   'fn-unordered-mix-args-015',
   'fn-unordered-mix-args-016',
   'fn-unordered-mix-args-017',
   'fn-unordered-mix-args-018',
   'fn-unordered-mix-args-019',
   'fn-unordered-mix-args-020',
   'fn-unordered-mix-args-021',
   'fn-unordered-mix-args-022',
   'fn-unordered-mix-args-023',
   'K-SeqUnorderedFunc-1',
   'K-SeqUnorderedFunc-2',
   'K-SeqUnorderedFunc-3',
   'K-SeqUnorderedFunc-4',
   'K-SeqUnorderedFunc-5',
   'K-SeqUnorderedFunc-6',
   'K-SeqUnorderedFunc-7',
   'K-SeqUnorderedFunc-8',
   'cbcl-fn-unordered-001',
   'cbcl-fn-unordered-002',
   'cbcl-fn-unordered-003'].
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
'fn-unordered-mix-args-001'(_Config) ->
   Qry = "fn:unordered( (\"c\",1, \"xzy\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"c\", 1, \"xzy\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-002'(_Config) ->
   Qry = "fn:unordered( (\"c\", \"b\", \"a\") )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"c\",  \"b\", \"a\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-003'(_Config) ->
   Qry = "fn:unordered ( (\"a\", \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-004'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:string(\"\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"\",  \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-005'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:anyURI(\"www.example.com\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"www.example.com\", \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-006'(_Config) ->
   Qry = "fn:unordered ( (\"a\", (), (), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-007'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:integer(\"100\"), xs:integer(\"-100\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", 100, -100, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-008'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:decimal(\"-1.000000000001\"), xs:integer(\"-100\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", -1.000000000001, -100, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-009'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:float(\"INF\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:float(\"INF\"), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-010'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:float(\"-INF\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:float('-INF'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-011'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:float(\"NaN\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:float('NaN'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-012'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:float(\"1.01\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", 1.01, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-013'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:double(\"NaN\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:double('NaN'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-014'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:double(\"1.01\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", 1.01, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-015'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:double(\"-INF\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:double('-INF'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-016'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:double(\"INF\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:double(\"INF\"), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-017'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"1\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", true(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-018'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"0\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", false(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-019'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"true\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", true(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-020'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"false\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", false(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-021'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:date(\"1993-03-31\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:date('1993-03-31'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-022'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:dateTime(\"1972-12-31T00:00:00\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:dateTime(\"1972-12-31T00:00:00\"), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-unordered-mix-args-023'(_Config) ->
   Qry = "fn:unordered ( (\"a\", xs:time(\"12:30:00\"), \"b\", \"c\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:time('12:30:00'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqUnorderedFunc-1'(_Config) ->
   Qry = "unordered()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqUnorderedFunc-2'(_Config) ->
   Qry = "unordered(1, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqUnorderedFunc-3'(_Config) ->
   Qry = "unordered(1) eq 1",
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
'K-SeqUnorderedFunc-4'(_Config) ->
   Qry = "count(unordered((1, 2, 3))) eq 3",
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
'K-SeqUnorderedFunc-5'(_Config) ->
   Qry = "count(unordered((1, 2, current-time()))) eq 3",
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
'K-SeqUnorderedFunc-6'(_Config) ->
   Qry = "empty(unordered(()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqUnorderedFunc-7'(_Config) ->
   Qry = "deep-equal((1, 2, 3), unordered((1, 2, 3)))",
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
'K-SeqUnorderedFunc-8'(_Config) ->
   Qry = "unordered(error())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-unordered-001'(_Config) ->
   Qry = "boolean(unordered(reverse((1 to 10)[. div 2 = 2])))",
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
'cbcl-fn-unordered-002'(_Config) ->
   Qry = "local-name(unordered(<a><b/><c/></a>/*[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-unordered-003'(_Config) ->
   Qry = "floor(unordered((1 to 10)[. div 2 = 0]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
