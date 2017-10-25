-module('prod_FunctionCall_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['FunctionCall-001'/1]).
-export(['FunctionCall-002'/1]).
-export(['FunctionCall-003'/1]).
-export(['FunctionCall-004'/1]).
-export(['FunctionCall-005'/1]).
-export(['FunctionCall-006'/1]).
-export(['FunctionCall-007'/1]).
-export(['FunctionCall-008'/1]).
-export(['FunctionCall-009'/1]).
-export(['FunctionCall-010'/1]).
-export(['FunctionCall-011'/1]).
-export(['FunctionCall-012'/1]).
-export(['FunctionCall-013'/1]).
-export(['FunctionCall-014'/1]).
-export(['FunctionCall-015'/1]).
-export(['FunctionCall-016'/1]).
-export(['FunctionCall-017'/1]).
-export(['FunctionCall-018'/1]).
-export(['FunctionCall-019'/1]).
-export(['FunctionCall-020'/1]).
-export(['FunctionCall-021'/1]).
-export(['FunctionCall-022'/1]).
-export(['FunctionCall-023'/1]).
-export(['FunctionCall-025'/1]).
-export(['FunctionCall-026'/1]).
-export(['FunctionCall-027'/1]).
-export(['FunctionCall-028'/1]).
-export(['FunctionCall-029'/1]).
-export(['FunctionCall-030'/1]).
-export(['FunctionCall-031'/1]).
-export(['FunctionCall-032'/1]).
-export(['FunctionCall-033'/1]).
-export(['FunctionCall-034'/1]).
-export(['FunctionCall-035'/1]).
-export(['FunctionCall-036'/1]).
-export(['FunctionCall-037'/1]).
-export(['FunctionCall-038'/1]).
-export(['FunctionCall-039'/1]).
-export(['FunctionCall-040'/1]).
-export(['FunctionCall-041'/1]).
-export(['FunctionCall-042'/1]).
-export(['FunctionCall-043'/1]).
-export(['FunctionCall-044'/1]).
-export(['FunctionCall-045'/1]).
-export(['FunctionCall-046'/1]).
-export(['FunctionCall-047'/1]).
-export(['FunctionCall-048'/1]).
-export(['K-FunctionCallExpr-1'/1]).
-export(['K-FunctionCallExpr-2'/1]).
-export(['K-FunctionCallExpr-3'/1]).
-export(['K-FunctionCallExpr-4'/1]).
-export(['K-FunctionCallExpr-5'/1]).
-export(['K-FunctionCallExpr-6'/1]).
-export(['K-FunctionCallExpr-7'/1]).
-export(['K-FunctionCallExpr-8'/1]).
-export(['K-FunctionCallExpr-9'/1]).
-export(['K-FunctionCallExpr-10'/1]).
-export(['K-FunctionCallExpr-11'/1]).
-export(['K-FunctionCallExpr-12'/1]).
-export(['K-FunctionCallExpr-13'/1]).
-export(['K-FunctionCallExpr-14'/1]).
-export(['K-FunctionCallExpr-15'/1]).
-export(['K-FunctionCallExpr-15a'/1]).
-export(['K-FunctionCallExpr-16'/1]).
-export(['K-FunctionCallExpr-16a'/1]).
-export(['K-FunctionCallExpr-17'/1]).
-export(['K-FunctionCallExpr-17a'/1]).
-export(['K-FunctionCallExpr-18'/1]).
-export(['K-FunctionCallExpr-19'/1]).
-export(['K-FunctionCallExpr-20'/1]).
-export(['K-FunctionCallExpr-21'/1]).
-export(['K-FunctionCallExpr-22'/1]).
-export(['K-FunctionCallExpr-23'/1]).
-export(['K-FunctionCallExpr-24'/1]).
-export(['K-FunctionCallExpr-25'/1]).
-export(['K-FunctionCallExpr-25a'/1]).
-export(['K-FunctionCallExpr-26'/1]).
-export(['K-FunctionCallExpr-27'/1]).
-export(['K-FunctionCallExpr-28'/1]).
-export(['K2-FunctionCallExpr-1'/1]).
-export(['K2-FunctionCallExpr-2'/1]).
-export(['K2-FunctionCallExpr-3'/1]).
-export(['K2-FunctionCallExpr-4'/1]).
-export(['K2-FunctionCallExpr-5'/1]).
-export(['K2-FunctionCallExpr-6'/1]).
-export(['K2-FunctionCallExpr-7'/1]).
-export(['K2-FunctionCallExpr-8'/1]).
-export(['K2-FunctionCallExpr-9'/1]).
-export(['K2-FunctionCallExpr-10'/1]).
-export(['K2-FunctionCallExpr-11'/1]).
-export(['K2-FunctionCallExpr-12'/1]).
-export(['K2-FunctionCallExpr-13'/1]).
-export(['cbcl-promotion-001'/1]).
-export(['cbcl-promotion-002'/1]).
-export(['cbcl-promotion-003'/1]).
-export(['cbcl-promotion-004'/1]).
-export(['cbcl-promotion-005'/1]).
-export(['cbcl-promotion-006'/1]).
-export(['cbcl-promotion-007'/1]).
-export(['function-call-reserved-function-names-001'/1]).
-export(['function-call-reserved-function-names-002'/1]).
-export(['function-call-reserved-function-names-003'/1]).
-export(['function-call-reserved-function-names-004'/1]).
-export(['function-call-reserved-function-names-005'/1]).
-export(['function-call-reserved-function-names-006'/1]).
-export(['function-call-reserved-function-names-007'/1]).
-export(['function-call-reserved-function-names-008'/1]).
-export(['function-call-reserved-function-names-009'/1]).
-export(['function-call-reserved-function-names-010'/1]).
-export(['function-call-reserved-function-names-011'/1]).
-export(['function-call-reserved-function-names-012'/1]).
-export(['function-call-reserved-function-names-013'/1]).
-export(['function-call-reserved-function-names-014'/1]).
-export(['function-call-reserved-function-names-015'/1]).
-export(['function-call-reserved-function-names-016'/1]).
-export(['function-call-reserved-function-names-017'/1]).
-export(['function-call-reserved-function-names-018'/1]).
-export(['function-call-reserved-function-names-019'/1]).
-export(['function-call-reserved-function-names-020'/1]).
-export(['function-call-reserved-function-names-021'/1]).
-export(['function-call-reserved-function-names-022'/1]).
-export(['function-call-reserved-function-names-023'/1]).
-export(['function-call-reserved-function-names-024'/1]).
-export(['function-call-reserved-function-names-025'/1]).
-export(['function-call-reserved-function-names-026'/1]).
-export(['function-call-reserved-function-names-027'/1]).
-export(['function-call-reserved-function-names-028'/1]).
-export(['function-call-reserved-function-names-029'/1]).
-export(['function-call-reserved-function-names-030'/1]).
-export(['function-call-reserved-function-names-031'/1]).
-export(['function-call-reserved-function-names-032'/1]).
-export(['function-call-reserved-function-names-033'/1]).
-export(['function-call-reserved-function-names-034'/1]).
-export(['function-call-reserved-function-names-035'/1]).
-export(['function-call-reserved-function-names-036'/1]).
-export(['function-call-reserved-function-names-037'/1]).
-export(['function-call-reserved-function-names-038'/1]).
-export(['function-call-reserved-function-names-039'/1]).
-export(['function-call-reserved-function-names-040'/1]).
-export(['function-call-reserved-function-names-041'/1]).
-export(['function-call-reserved-function-names-042'/1]).
-export(['function-call-reserved-function-names-043'/1]).
-export(['function-call-reserved-function-names-044'/1]).
-export(['function-call-reserved-function-names-045'/1]).
-export(['function-call-reserved-function-names-046'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'FunctionCall-001',
   'FunctionCall-002',
   'FunctionCall-003',
   'FunctionCall-004',
   'FunctionCall-005',
   'FunctionCall-006',
   'FunctionCall-007',
   'FunctionCall-008',
   'FunctionCall-009',
   'FunctionCall-010',
   'FunctionCall-011',
   'FunctionCall-012',
   'FunctionCall-013',
   'FunctionCall-014',
   'FunctionCall-015',
   'FunctionCall-016',
   'FunctionCall-017',
   'FunctionCall-018',
   'FunctionCall-019',
   'FunctionCall-020',
   'FunctionCall-021',
   'FunctionCall-022',
   'FunctionCall-023',
   'FunctionCall-025',
   'FunctionCall-026',
   'FunctionCall-027',
   'FunctionCall-028',
   'FunctionCall-029',
   'FunctionCall-030',
   'FunctionCall-031',
   'FunctionCall-032',
   'FunctionCall-033',
   'FunctionCall-034',
   'FunctionCall-035',
   'FunctionCall-036',
   'FunctionCall-037',
   'FunctionCall-038',
   'FunctionCall-039',
   'FunctionCall-040',
   'FunctionCall-041',
   'FunctionCall-042',
   'FunctionCall-043',
   'FunctionCall-044',
   'FunctionCall-045',
   'FunctionCall-046',
   'FunctionCall-047',
   'FunctionCall-048',
   'K-FunctionCallExpr-1',
   'K-FunctionCallExpr-2',
   'K-FunctionCallExpr-3',
   'K-FunctionCallExpr-4',
   'K-FunctionCallExpr-5',
   'K-FunctionCallExpr-6',
   'K-FunctionCallExpr-7',
   'K-FunctionCallExpr-8',
   'K-FunctionCallExpr-9',
   'K-FunctionCallExpr-10',
   'K-FunctionCallExpr-11',
   'K-FunctionCallExpr-12',
   'K-FunctionCallExpr-13',
   'K-FunctionCallExpr-14',
   'K-FunctionCallExpr-15',
   'K-FunctionCallExpr-15a',
   'K-FunctionCallExpr-16',
   'K-FunctionCallExpr-16a',
   'K-FunctionCallExpr-17',
   'K-FunctionCallExpr-17a',
   'K-FunctionCallExpr-18',
   'K-FunctionCallExpr-19',
   'K-FunctionCallExpr-20',
   'K-FunctionCallExpr-21',
   'K-FunctionCallExpr-22',
   'K-FunctionCallExpr-23',
   'K-FunctionCallExpr-24',
   'K-FunctionCallExpr-25',
   'K-FunctionCallExpr-25a',
   'K-FunctionCallExpr-26',
   'K-FunctionCallExpr-27',
   'K-FunctionCallExpr-28',
   'K2-FunctionCallExpr-1',
   'K2-FunctionCallExpr-2',
   'K2-FunctionCallExpr-3',
   'K2-FunctionCallExpr-4',
   'K2-FunctionCallExpr-5',
   'K2-FunctionCallExpr-6',
   'K2-FunctionCallExpr-7',
   'K2-FunctionCallExpr-8',
   'K2-FunctionCallExpr-9',
   'K2-FunctionCallExpr-10',
   'K2-FunctionCallExpr-11',
   'K2-FunctionCallExpr-12',
   'K2-FunctionCallExpr-13',
   'cbcl-promotion-001',
   'cbcl-promotion-002',
   'cbcl-promotion-003',
   'cbcl-promotion-004',
   'cbcl-promotion-005',
   'cbcl-promotion-006',
   'cbcl-promotion-007',
   'function-call-reserved-function-names-001',
   'function-call-reserved-function-names-002',
   'function-call-reserved-function-names-003',
   'function-call-reserved-function-names-004',
   'function-call-reserved-function-names-005',
   'function-call-reserved-function-names-006',
   'function-call-reserved-function-names-007',
   'function-call-reserved-function-names-008',
   'function-call-reserved-function-names-009',
   'function-call-reserved-function-names-010',
   'function-call-reserved-function-names-011',
   'function-call-reserved-function-names-012',
   'function-call-reserved-function-names-013',
   'function-call-reserved-function-names-014',
   'function-call-reserved-function-names-015',
   'function-call-reserved-function-names-016',
   'function-call-reserved-function-names-017',
   'function-call-reserved-function-names-018',
   'function-call-reserved-function-names-019',
   'function-call-reserved-function-names-020',
   'function-call-reserved-function-names-021',
   'function-call-reserved-function-names-022',
   'function-call-reserved-function-names-023',
   'function-call-reserved-function-names-024',
   'function-call-reserved-function-names-025',
   'function-call-reserved-function-names-026',
   'function-call-reserved-function-names-027',
   'function-call-reserved-function-names-028',
   'function-call-reserved-function-names-029',
   'function-call-reserved-function-names-030',
   'function-call-reserved-function-names-031',
   'function-call-reserved-function-names-032',
   'function-call-reserved-function-names-033',
   'function-call-reserved-function-names-034',
   'function-call-reserved-function-names-035',
   'function-call-reserved-function-names-036',
   'function-call-reserved-function-names-037',
   'function-call-reserved-function-names-038',
   'function-call-reserved-function-names-039',
   'function-call-reserved-function-names-040',
   'function-call-reserved-function-names-041',
   'function-call-reserved-function-names-042',
   'function-call-reserved-function-names-043',
   'function-call-reserved-function-names-044',
   'function-call-reserved-function-names-045',
   'function-call-reserved-function-names-046'].
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
];
environment('ListUnionTypes') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/listunion.xsd","http://www.w3.org/XQueryTest/ListUnionTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'FunctionCall-001'(_Config) ->
   Qry = "concat(<a>X</a>, <a>Y</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "XY") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-002'(_Config) ->
   Qry = "xs:boolean(<a>0</a>)",
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
'FunctionCall-003'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-004'(_Config) ->
   Qry = "
         declare function local:f($in as xs:boolean) as xs:boolean { $in };
         local:f(<a>0</a>)",
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
'FunctionCall-005'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-006'(_Config) ->
   Qry = "
         let $f := function ($in as xs:boolean) as xs:boolean { $in }
         return $f(<a>0</a>)
      ",
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
'FunctionCall-007'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-008'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-009'(_Config) ->
   Qry = "
        declare function local:f($in as xs:decimal*) as xs:decimal {sum($in, 0.0)};
        local:f(xs:NMTOKENS('1 1.2 1.3 1.4')!xs:untypedAtomic(.))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:decimal") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"4.9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-010'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-011'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-012'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-013'(_Config) ->
   Qry = "
        declare function local:f($a as xs:integer, $b as xs:integer) as xs:integer {
          data(<a>{$a}{$b}</a>)
        };
        local:f(12, 34)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"1234") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-014'(_Config) ->
   Qry = "
        let $f := function($a as xs:integer, $b as xs:integer) as xs:integer {
          data(<a>{$a}{$b}</a>)
        }
        return $f(12, 34)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"1234") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-015'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-016'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-017'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-018'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-019'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-020'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-021'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-022'(_Config) ->
   Qry = "
         declare function local:unique($in as xs:integer*) as xs:boolean { count($in) = count(distinct-values($in)) };
         (local:unique([1,2,3,4,5]), local:unique([1,2,3,4,4]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-023'(_Config) ->
   Qry = "string-join((<a>X</a>, <a>Y</a>, <a>Z</a>), '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "XYZ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-025'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-026'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-027'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-028'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-029'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-030'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-031'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-032'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-033'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-034'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-035'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-036'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-037'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-038'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-039'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-040'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-041'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-042'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-043'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-044'(_Config) ->
   Qry = "
         let $f := function($x) {}
         return $f(2)
      ",
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
'FunctionCall-045'(_Config) ->
   Qry = "
         let $f := function($x) {}
         return $f(2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-046'(_Config) ->
   Qry = "
         let $f := function($x) { (: there's nothing here :)}
         return $f(2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-047'(_Config) ->
   Qry = "
         let $f := function($x as xs:integer) as xs:integer? { (: there's nothing here :)}
         return $f(2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FunctionCall-048'(_Config) ->
   Qry = "
         let $f := function($x as xs:integer) as xs:integer { (: there's nothing here :) }
         return $f(2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-1'(_Config) ->
   Qry = "func-does-not-exist(1, 2, 3)",
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
'K-FunctionCallExpr-2'(_Config) ->
   Qry = "fn:func-does-not-exist(1, 2, 3)",
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
'K-FunctionCallExpr-3'(_Config) ->
   Qry = "xs:func-does-not-exist(1, 2, 3)",
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
'K-FunctionCallExpr-4'(_Config) ->
   Qry = "local:func-does-not-exist(1, 2, 3)",
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
'K-FunctionCallExpr-5'(_Config) ->
   Qry = "prefix-does-not-exist:func-does-not-exist(1, 2, 3)",
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
'K-FunctionCallExpr-6'(_Config) ->
   Qry = "f:f:()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-7'(_Config) ->
   Qry = ":f()",
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
'K-FunctionCallExpr-8'(_Config) ->
   Qry = ":f()",
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
'K-FunctionCallExpr-9'(_Config) ->
   Qry = "1fd()",
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
'K-FunctionCallExpr-10'(_Config) ->
   Qry = "p:f:lname()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-11'(_Config) ->
   Qry = "document(\"example.com/file.ext\")",
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
'K-FunctionCallExpr-12'(_Config) ->
   {skip,"XP20 XQ10"}.
'K-FunctionCallExpr-13'(_Config) ->
   {skip,"XP20 XQ10"}.
'K-FunctionCallExpr-14'(_Config) ->
   Qry = "key('func', \"a value\")",
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
'K-FunctionCallExpr-15'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-FunctionCallExpr-15a'(_Config) ->
   Qry = "format-number(3, \"0000\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"0003\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-16'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-FunctionCallExpr-16a'(_Config) ->
   Qry = "matches(format-time(current-time(), \"[H01]:[m01]\"), \"[0-2][0-9]:[0-5][0-9]\")",
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
'K-FunctionCallExpr-17'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-FunctionCallExpr-17a'(_Config) ->
   Qry = "matches(format-time(current-time(), \"[H01]:[m01]\", (), (), ()), \"..:..\")",
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
'K-FunctionCallExpr-18'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[Y0001]-[M01]-[D01]\"), \"[0-9]{4}-[0-9]{2}-[0-9]{2}\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-19'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[Y0001]-[M01]-[D01]\", (), (), ()), \"....-..-..\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-20'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[M01]/[D01]/[Y0001] at [H01]:[m01]:[s01]\"), \"[0-1][0-9]/[0-3][0-9]/[0-9]{4} at [0-9]{2}:[0-9]{2}:[0-9]{2}\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-21'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[M01]/[D01]/[Y0001] at [H01]:[m01]:[s01]\", (), (), ()), \"../../.... at ..:..:..\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FunctionCallExpr-22'(_Config) ->
   Qry = "current()",
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
'K-FunctionCallExpr-23'(_Config) ->
   Qry = "unparsed-entity-uri(\"example.com/file.ext\")",
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
'K-FunctionCallExpr-24'(_Config) ->
   Qry = "unparsed-entity-public-id(\"entity\")",
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
'K-FunctionCallExpr-25'(_Config) ->
   {skip,"XQ10"}.
'K-FunctionCallExpr-25a'(_Config) ->
   Qry = "generate-id(<a/>) castable as xs:NCName",
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
'K-FunctionCallExpr-26'(_Config) ->
   Qry = "system-property(\"xsl:vendor\")",
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
'K-FunctionCallExpr-27'(_Config) ->
   Qry = "fn:escape-uri(\"http:/example.com/\")",
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
'K-FunctionCallExpr-28'(_Config) ->
   Qry = "fn:sub-sequence(\"http:/example.com/\", 1, 1)",
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
'K2-FunctionCallExpr-1'(_Config) ->
   Qry = "
        declare function local:bar($c, $d, $e, $f, $g, $h, $i, $j, $a, $b) { 1 }; 
        declare function local:moo($k) { $k }; 
        local:moo(1)",
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
'K2-FunctionCallExpr-2'(_Config) ->
   Qry = "current-grouping-key()",
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
'K2-FunctionCallExpr-3'(_Config) ->
   Qry = "current()",
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
'K2-FunctionCallExpr-4'(_Config) ->
   Qry = "unparsed-entity-uri(\"str\")",
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
'K2-FunctionCallExpr-5'(_Config) ->
   Qry = "unparsed-entity-public-id(\"str\")",
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
'K2-FunctionCallExpr-6'(_Config) ->
   {skip,"XP20 XQ10"}.
'K2-FunctionCallExpr-7'(_Config) ->
   {skip,"XP20 XQ10"}.
'K2-FunctionCallExpr-8'(_Config) ->
   Qry = "system-property(\"property\")",
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
'K2-FunctionCallExpr-9'(_Config) ->
   Qry = "key(\"id\")",
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
'K2-FunctionCallExpr-10'(_Config) ->
   Qry = "
        declare variable $a := <a/>; 
        declare function local:testSingleNodeIdentity($node as node()) { $node is $node }; 
        declare function local:testDoubleNodeIdentity($a as node(), $b as node()) { $a is $b }; 
        local:testSingleNodeIdentity(<a/>), local:testDoubleNodeIdentity(<a/>, <b/>), local:testDoubleNodeIdentity($a, $a)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FunctionCallExpr-11'(_Config) ->
   Qry = "
        declare function local:compare($arg1 as xs:string, $arg2 as xs:string) { 
            let $cps1 := string-to-codepoints($arg1), 
            $cps2 := string-to-codepoints($arg2) 
            return abs(count($cps1) - count($cps2)) + sum(for $x in 1 to min((count($cps1), count($cps2))) 
                                                          return if ($cps1[$x] ne $cps2[$x]) then 1 else ()) }; 
        local:compare(\"\", \"\"), 
        local:compare(\"a\", \"\"), 
        local:compare(\"\", \"a\"), 
        local:compare(\"a\", \"a\"), 
        local:compare(\"\", \"aa\"), 
        local:compare(\"aa\", \"ab\"), 
        local:compare(\"ba\", \"ba\"), 
        local:compare(\"bab\", \"bbb\"), 
        local:compare(\"aba\", \"bab\")
     ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 1 0 2 1 0 1 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FunctionCallExpr-12'(_Config) ->
   Qry = "
        declare function local:func1() { if(local:func2('b')) then 3 else local:func1() }; 
        declare function local:func2($a) { if(matches(\"\",$a)) then () else 4 }; 
        local:func1()",
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
'K2-FunctionCallExpr-13'(_Config) ->
   Qry = "declare function local:foo($arg) { local:foo(local:foo(1)) }; 1",
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
'cbcl-promotion-001'(_Config) ->
   Qry = "
        string-join( (xs:anyURI('http://www.microsoft.com'), xs:anyURI('http://www.google.com/')), ' ')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.microsoft.com http://www.google.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-promotion-002'(_Config) ->
   Qry = "
        declare function local:index-of($seq as xs:double*, $item as xs:double) { for $x at $p in $seq return if ($x eq $item) then $p else () };
        declare function local:sequence($x as xs:integer) { (\"string\", 1, 2.0, xs:float(3))[$x] };
        local:index-of(for $x in (2,3,4) return local:sequence($x), 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-promotion-003'(_Config) ->
   Qry = "
        declare function local:index-of($seq as xs:integer*, $item as xs:integer?) as xs:float* { 
          if (empty($item)) 
            then -1
            else for $x at $p in $seq return if ($x eq $item) then $p else () 
        };
        local:index-of(1 to 10, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-promotion-004'(_Config) ->
   Qry = "
        declare function local:f() as xs:double* { 
          if (day-from-date(current-date()) < 32) then xs:integer(3) else -1
        };
        local:f() + 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-promotion-005'(_Config) ->
   Qry = "
        declare function local:index-of($seq, $item) as xs:double? { for $x at $p in $seq return if ($x eq $item) then $p else () };
        local:index-of((1, 2.0, xs:float(3), 2), 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-promotion-006'(_Config) ->
   Qry = "
        declare function local:f($arg as xs:anyAtomicType?) { $arg };
        local:f(index-of((1,2,3,2),2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-promotion-007'(_Config) ->
   Qry = "
        declare function local:f($v as xs:double*) as xs:double+ { if (empty($v)) then 0 else $v };
        declare function local:g($v as xs:double*) as xs:double+ { local:f($v) };
        local:g((1,2,3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-call-reserved-function-names-001'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:attribute($arg) { fn:true() };
	attribute(1)
      ",
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
'function-call-reserved-function-names-002'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:comment($arg) { fn:true() };
	comment(1)
      ",
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
'function-call-reserved-function-names-003'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:document-node($arg) { fn:true() };
	document-node(1)
      ",
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
'function-call-reserved-function-names-004'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:element($arg) { fn:true() };
	element(1)
      ",
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
'function-call-reserved-function-names-005'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:empty-sequence() { fn:true() };
	empty-sequence()
      ",
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
'function-call-reserved-function-names-006'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:if() { fn:true() };
	if()
      ",
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
'function-call-reserved-function-names-007'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:item($arg) { fn:true() };
	item(1)
      ",
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
'function-call-reserved-function-names-008'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:node($arg) { fn:true() };
	node(1)
      ",
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
'function-call-reserved-function-names-009'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:processing-instruction($arg) { fn:true() };
	processing-instruction(1)
      ",
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
'function-call-reserved-function-names-010'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:schema-attribute() { fn:true() };
	schema-attribute()
      ",
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
'function-call-reserved-function-names-011'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:schema-element() { fn:true() };
	schema-element()
      ",
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
'function-call-reserved-function-names-012'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:text($arg) { fn:true() };
	text(1)
      ",
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
'function-call-reserved-function-names-013'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:typeswitch() { fn:true() };
	typeswitch()
      ",
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
'function-call-reserved-function-names-014'(_Config) ->
   {skip,"XQ10"}.
'function-call-reserved-function-names-015'(_Config) ->
   {skip,"XQ10"}.
'function-call-reserved-function-names-016'(_Config) ->
   {skip,"XQ10"}.
'function-call-reserved-function-names-017'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:function() { fn:true() };
	function()
      ",
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
'function-call-reserved-function-names-018'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:namespace-node($arg) { fn:true() };
	namespace-node(1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0134") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-call-reserved-function-names-019'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:switch() { fn:true() };
	switch()
      ",
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
'function-call-reserved-function-names-020'(_Config) ->
   Qry = "
	attribute(1)
      ",
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
'function-call-reserved-function-names-021'(_Config) ->
   Qry = "
	comment(1)
      ",
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
'function-call-reserved-function-names-022'(_Config) ->
   Qry = "
	document-node(1)
      ",
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
'function-call-reserved-function-names-023'(_Config) ->
   Qry = "
	element(1)
      ",
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
'function-call-reserved-function-names-024'(_Config) ->
   Qry = "
	empty-sequence()
      ",
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
'function-call-reserved-function-names-025'(_Config) ->
   Qry = "
	if()
      ",
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
'function-call-reserved-function-names-026'(_Config) ->
   Qry = "
	item()
      ",
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
'function-call-reserved-function-names-027'(_Config) ->
   Qry = "
	node(1)
      ",
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
'function-call-reserved-function-names-028'(_Config) ->
   Qry = "
	processing-instruction(1)
      ",
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
'function-call-reserved-function-names-029'(_Config) ->
   Qry = "
	schema-attribute()
      ",
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
'function-call-reserved-function-names-030'(_Config) ->
   Qry = "
	schema-element()
      ",
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
'function-call-reserved-function-names-031'(_Config) ->
   Qry = "
	text(1)
      ",
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
'function-call-reserved-function-names-032'(_Config) ->
   Qry = "
	typeswitch()
      ",
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
'function-call-reserved-function-names-033'(_Config) ->
   {skip,"XP20 XQ10"}.
'function-call-reserved-function-names-034'(_Config) ->
   {skip,"XP20"}.
'function-call-reserved-function-names-035'(_Config) ->
   {skip,"XP20 XQ10"}.
'function-call-reserved-function-names-036'(_Config) ->
   Qry = "
	function()
      ",
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
'function-call-reserved-function-names-037'(_Config) ->
   Qry = "
	namespace-node(1)
      ",
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
'function-call-reserved-function-names-038'(_Config) ->
   Qry = "
	switch()
      ",
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
'function-call-reserved-function-names-039'(_Config) ->
   {skip,"XQ10 XQ30"}.
'function-call-reserved-function-names-040'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:array() { fn:true() };
	array()
      ",
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
'function-call-reserved-function-names-041'(_Config) ->
   {skip,"XP20 XP30 XQ10 XQ30"}.
'function-call-reserved-function-names-042'(_Config) ->
   Qry = "
	array()
      ",
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
'function-call-reserved-function-names-043'(_Config) ->
   {skip,"XQ10 XQ30"}.
'function-call-reserved-function-names-044'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function local:map() { fn:true() };
	map()
      ",
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
'function-call-reserved-function-names-045'(_Config) ->
   {skip,"XP20 XP30 XQ10 XQ30"}.
'function-call-reserved-function-names-046'(_Config) ->
   Qry = "
	map()
      ",
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
