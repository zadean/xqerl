-module('prod_TryCatchExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['try-001'/1]).
-export(['try-002'/1]).
-export(['try-003'/1]).
-export(['try-004'/1]).
-export(['try-005'/1]).
-export(['try-006'/1]).
-export(['try-007'/1]).
-export(['try-008'/1]).
-export(['try-009'/1]).
-export(['try-010'/1]).
-export(['try-011'/1]).
-export(['try-012'/1]).
-export(['try-013'/1]).
-export(['try-014'/1]).
-export(['try-015'/1]).
-export(['try-016'/1]).
-export(['try-017'/1]).
-export(['try-018'/1]).
-export(['no-try-catch-1'/1]).
-export(['no-try-catch-2'/1]).
-export(['no-try-catch-3'/1]).
-export(['try-catch-dynamic-error-1'/1]).
-export(['try-catch-dynamic-error-2'/1]).
-export(['try-catch-dynamic-error-3'/1]).
-export(['try-catch-dynamic-error-4'/1]).
-export(['try-catch-static-error-1'/1]).
-export(['try-catch-static-error-2'/1]).
-export(['try-catch-static-error-3'/1]).
-export(['try-catch-static-error-4'/1]).
-export(['try-catch-type-error-1'/1]).
-export(['try-catch-type-error-2'/1]).
-export(['try-catch-type-error-3'/1]).
-export(['try-catch-type-error-4'/1]).
-export(['try-catch-dynamic-error-outside-before-1'/1]).
-export(['try-catch-dynamic-error-outside-before-2'/1]).
-export(['try-catch-dynamic-error-outside-before-3'/1]).
-export(['try-catch-dynamic-error-outside-before-4'/1]).
-export(['try-catch-dynamic-error-outside-after-1'/1]).
-export(['try-catch-dynamic-error-outside-after-2'/1]).
-export(['try-catch-dynamic-error-outside-after-3'/1]).
-export(['try-catch-dynamic-error-outside-after-4'/1]).
-export(['try-catch-dynamic-error-outside-1'/1]).
-export(['try-catch-dynamic-error-outside-2'/1]).
-export(['try-catch-dynamic-error-outside-3'/1]).
-export(['try-catch-dynamic-error-outside-4'/1]).
-export(['try-catch-dynamic-error-outside-5'/1]).
-export(['try-catch-dynamic-error-outside-6'/1]).
-export(['try-catch-dynamic-error-outside-7'/1]).
-export(['try-catch-dynamic-error-outside-8'/1]).
-export(['try-catch-no-error-1'/1]).
-export(['try-catch-no-error-2'/1]).
-export(['try-catch-no-error-3'/1]).
-export(['try-catch-no-error-4'/1]).
-export(['try-catch-no-error-5'/1]).
-export(['try-catch-name-tests-namespace-1'/1]).
-export(['try-catch-name-tests-namespace-2'/1]).
-export(['try-catch-name-no-matching-catch-clause-1'/1]).
-export(['try-catch-name-no-matching-catch-clause-2'/1]).
-export(['try-catch-name-no-matching-catch-clause-3'/1]).
-export(['try-catch-name-no-matching-catch-clause-4'/1]).
-export(['try-catch-name-no-matching-catch-clause-5'/1]).
-export(['try-catch-name-no-matching-catch-clause-6'/1]).
-export(['try-catch-several-name-tests-1'/1]).
-export(['try-catch-several-name-tests-2'/1]).
-export(['try-catch-several-name-tests-3'/1]).
-export(['try-catch-first-matching-catch-clause-1'/1]).
-export(['try-catch-first-matching-catch-clause-2'/1]).
-export(['try-catch-first-matching-catch-clause-3'/1]).
-export(['try-catch-first-matching-catch-clause-4'/1]).
-export(['try-catch-first-matching-catch-clause-5'/1]).
-export(['try-catch-first-matching-catch-clause-6'/1]).
-export(['try-catch-first-matching-catch-clause-7'/1]).
-export(['try-catch-first-matching-catch-clause-8'/1]).
-export(['try-catch-first-matching-catch-clause-9'/1]).
-export(['try-catch-first-matching-catch-clause-10'/1]).
-export(['try-catch-first-matching-catch-clause-11'/1]).
-export(['try-catch-first-matching-catch-clause-12'/1]).
-export(['try-catch-err-code-variable-1'/1]).
-export(['try-catch-err-code-variable-2'/1]).
-export(['try-catch-err-code-variable-3'/1]).
-export(['try-catch-err-code-variable-4'/1]).
-export(['try-catch-err-code-variable-5'/1]).
-export(['try-catch-err-code-variable-6'/1]).
-export(['try-catch-err-code-variable-7'/1]).
-export(['try-catch-err-code-variable-8'/1]).
-export(['try-catch-err-code-variable-9'/1]).
-export(['try-catch-err-code-variable-10'/1]).
-export(['try-catch-err-code-variable-11'/1]).
-export(['try-catch-err-code-variable-12'/1]).
-export(['try-catch-err-code-variable-13'/1]).
-export(['try-catch-err-code-variable-14'/1]).
-export(['try-catch-err-description-variable-1'/1]).
-export(['try-catch-err-description-variable-2'/1]).
-export(['try-catch-err-description-variable-3'/1]).
-export(['try-catch-err-value-variable-1'/1]).
-export(['try-catch-err-value-variable-2'/1]).
-export(['try-catch-err-value-variable-3'/1]).
-export(['try-catch-err-module-variable-1'/1]).
-export(['try-catch-err-module-variable-2'/1]).
-export(['try-catch-err-module-variable-3'/1]).
-export(['try-catch-err-line-number-variable-1'/1]).
-export(['try-catch-err-line-number-variable-2'/1]).
-export(['try-catch-err-line-number-variable-3'/1]).
-export(['try-catch-err-column-number-variable-1'/1]).
-export(['try-catch-err-column-number-variable-2'/1]).
-export(['try-catch-err-column-number-variable-3'/1]).
-export(['try-catch-err-other-variable-1'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-1'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-2'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-3'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-4'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-5'/1]).
-export(['try-catch-function-call-1'/1]).
-export(['try-catch-function-call-2'/1]).
-export(['try-catch-function-call-3'/1]).
-export(['try-catch-function-call-4'/1]).
-export(['try-catch-error-function-with-static-error-code'/1]).
-export(['try-catch-variable-binding-outside-1'/1]).
-export(['try-catch-variable-binding-outside-2'/1]).
-export(['try-catch-variable-binding-outside-3'/1]).
-export(['try-catch-variable-binding-outside-4'/1]).
-export(['try-catch-variable-binding-outside-5'/1]).
-export(['try-catch-variable-binding-outside-6'/1]).
-export(['try-catch-optimizations-1'/1]).
-export(['try-catch-optimizations-2'/1]).
-export(['try-catch-optimizations-3'/1]).
-export(['try-catch-spec-example-1'/1]).
-export(['try-catch-spec-example-2'/1]).
-export(['try-catch-spec-example-3'/1]).
-export(['try-catch-spec-example-4'/1]).
-export(['try-catch-spec-example-5'/1]).
-export(['try-catch-function-result-type-1'/1]).
-export(['try-catch-all-dynamic-errors-caught-1'/1]).
-export(['try-catch-all-dynamic-errors-caught-2'/1]).
-export(['try-catch-all-dynamic-errors-caught-3'/1]).
-export(['try-catch-all-dynamic-errors-caught-4'/1]).
-export(['try-catch-all-dynamic-errors-caught-5'/1]).
-export(['try-catch-all-dynamic-errors-caught-6'/1]).
-export(['try-catch-all-dynamic-errors-caught-7'/1]).
-export(['try-catch-all-dynamic-errors-caught-8'/1]).
-export(['try-catch-all-dynamic-errors-caught-9'/1]).
-export(['try-catch-all-dynamic-errors-caught-10'/1]).
-export(['try-catch-all-dynamic-errors-caught-11'/1]).
-export(['try-catch-all-dynamic-errors-caught-12'/1]).
-export(['try-catch-all-dynamic-errors-caught-13'/1]).
-export(['try-catch-all-dynamic-errors-caught-13b'/1]).
-export(['try-catch-all-dynamic-errors-caught-14'/1]).
-export(['try-catch-all-dynamic-errors-caught-15'/1]).
-export(['try-catch-nest-1'/1]).
-export(['try-catch-nest-2'/1]).
-export(['try-catch-fn-error-1'/1]).
-export(['try-catch-fn-error-2'/1]).
-export(['try-catch-fn-error-3'/1]).
-export(['try-catch-fn-error-4'/1]).
-export(['try-catch-fn-error-5'/1]).
-export(['try-catch-fn-error-6'/1]).
-export(['try-catch-fn-error-7'/1]).
-export(['try-catch-fn-error-8'/1]).
-export(['try-catch-fn-error-9'/1]).
-export(['try-catch-fn-error-10'/1]).
-export(['try-catch-fn-error-11'/1]).
-export(['try-catch-fn-error-12'/1]).
-export(['try-catch-fn-error-13'/1]).
-export(['try-catch-fn-error-14'/1]).
-export(['try-catch-fn-error-15'/1]).
-export(['try-catch-fn-error-16'/1]).
-export(['try-catch-fn-error-17'/1]).
-export(['try-catch-fn-error-18'/1]).
-export(['try-catch-fn-error-19'/1]).
-export(['try-catch-fn-error-20'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'try-001',
   'try-002',
   'try-003',
   'try-004',
   'try-005',
   'try-006',
   'try-007',
   'try-008',
   'try-009',
   'try-010',
   'try-011',
   'try-012',
   'try-013',
   'try-014',
   'try-015',
   'try-016',
   'try-017',
   'try-018',
   'no-try-catch-1',
   'no-try-catch-2',
   'no-try-catch-3',
   'try-catch-dynamic-error-1',
   'try-catch-dynamic-error-2',
   'try-catch-dynamic-error-3',
   'try-catch-dynamic-error-4',
   'try-catch-static-error-1',
   'try-catch-static-error-2',
   'try-catch-static-error-3',
   'try-catch-static-error-4',
   'try-catch-type-error-1',
   'try-catch-type-error-2',
   'try-catch-type-error-3',
   'try-catch-type-error-4',
   'try-catch-dynamic-error-outside-before-1',
   'try-catch-dynamic-error-outside-before-2',
   'try-catch-dynamic-error-outside-before-3',
   'try-catch-dynamic-error-outside-before-4',
   'try-catch-dynamic-error-outside-after-1',
   'try-catch-dynamic-error-outside-after-2',
   'try-catch-dynamic-error-outside-after-3',
   'try-catch-dynamic-error-outside-after-4',
   'try-catch-dynamic-error-outside-1',
   'try-catch-dynamic-error-outside-2',
   'try-catch-dynamic-error-outside-3',
   'try-catch-dynamic-error-outside-4',
   'try-catch-dynamic-error-outside-5',
   'try-catch-dynamic-error-outside-6',
   'try-catch-dynamic-error-outside-7',
   'try-catch-dynamic-error-outside-8',
   'try-catch-no-error-1',
   'try-catch-no-error-2',
   'try-catch-no-error-3',
   'try-catch-no-error-4',
   'try-catch-no-error-5',
   'try-catch-name-tests-namespace-1',
   'try-catch-name-tests-namespace-2',
   'try-catch-name-no-matching-catch-clause-1',
   'try-catch-name-no-matching-catch-clause-2',
   'try-catch-name-no-matching-catch-clause-3',
   'try-catch-name-no-matching-catch-clause-4',
   'try-catch-name-no-matching-catch-clause-5',
   'try-catch-name-no-matching-catch-clause-6',
   'try-catch-several-name-tests-1',
   'try-catch-several-name-tests-2',
   'try-catch-several-name-tests-3',
   'try-catch-first-matching-catch-clause-1',
   'try-catch-first-matching-catch-clause-2',
   'try-catch-first-matching-catch-clause-3',
   'try-catch-first-matching-catch-clause-4',
   'try-catch-first-matching-catch-clause-5',
   'try-catch-first-matching-catch-clause-6',
   'try-catch-first-matching-catch-clause-7',
   'try-catch-first-matching-catch-clause-8',
   'try-catch-first-matching-catch-clause-9',
   'try-catch-first-matching-catch-clause-10',
   'try-catch-first-matching-catch-clause-11',
   'try-catch-first-matching-catch-clause-12',
   'try-catch-err-code-variable-1',
   'try-catch-err-code-variable-2',
   'try-catch-err-code-variable-3',
   'try-catch-err-code-variable-4',
   'try-catch-err-code-variable-5',
   'try-catch-err-code-variable-6',
   'try-catch-err-code-variable-7',
   'try-catch-err-code-variable-8',
   'try-catch-err-code-variable-9',
   'try-catch-err-code-variable-10',
   'try-catch-err-code-variable-11',
   'try-catch-err-code-variable-12',
   'try-catch-err-code-variable-13',
   'try-catch-err-code-variable-14',
   'try-catch-err-description-variable-1',
   'try-catch-err-description-variable-2',
   'try-catch-err-description-variable-3',
   'try-catch-err-value-variable-1',
   'try-catch-err-value-variable-2',
   'try-catch-err-value-variable-3',
   'try-catch-err-module-variable-1',
   'try-catch-err-module-variable-2',
   'try-catch-err-module-variable-3',
   'try-catch-err-line-number-variable-1',
   'try-catch-err-line-number-variable-2',
   'try-catch-err-line-number-variable-3',
   'try-catch-err-column-number-variable-1',
   'try-catch-err-column-number-variable-2',
   'try-catch-err-column-number-variable-3',
   'try-catch-err-other-variable-1',
   'try-catch-err-dynamic-error-in-catch-clause-1',
   'try-catch-err-dynamic-error-in-catch-clause-2',
   'try-catch-err-dynamic-error-in-catch-clause-3',
   'try-catch-err-dynamic-error-in-catch-clause-4',
   'try-catch-err-dynamic-error-in-catch-clause-5',
   'try-catch-function-call-1',
   'try-catch-function-call-2',
   'try-catch-function-call-3',
   'try-catch-function-call-4',
   'try-catch-error-function-with-static-error-code',
   'try-catch-variable-binding-outside-1',
   'try-catch-variable-binding-outside-2',
   'try-catch-variable-binding-outside-3',
   'try-catch-variable-binding-outside-4',
   'try-catch-variable-binding-outside-5',
   'try-catch-variable-binding-outside-6',
   'try-catch-optimizations-1',
   'try-catch-optimizations-2',
   'try-catch-optimizations-3',
   'try-catch-spec-example-1',
   'try-catch-spec-example-2',
   'try-catch-spec-example-3',
   'try-catch-spec-example-4',
   'try-catch-spec-example-5',
   'try-catch-function-result-type-1',
   'try-catch-all-dynamic-errors-caught-1',
   'try-catch-all-dynamic-errors-caught-2',
   'try-catch-all-dynamic-errors-caught-3',
   'try-catch-all-dynamic-errors-caught-4',
   'try-catch-all-dynamic-errors-caught-5',
   'try-catch-all-dynamic-errors-caught-6',
   'try-catch-all-dynamic-errors-caught-7',
   'try-catch-all-dynamic-errors-caught-8',
   'try-catch-all-dynamic-errors-caught-9',
   'try-catch-all-dynamic-errors-caught-10',
   'try-catch-all-dynamic-errors-caught-11',
   'try-catch-all-dynamic-errors-caught-12',
   'try-catch-all-dynamic-errors-caught-13',
   'try-catch-all-dynamic-errors-caught-13b',
   'try-catch-all-dynamic-errors-caught-14',
   'try-catch-all-dynamic-errors-caught-15',
   'try-catch-nest-1',
   'try-catch-nest-2',
   'try-catch-fn-error-1',
   'try-catch-fn-error-2',
   'try-catch-fn-error-3',
   'try-catch-fn-error-4',
   'try-catch-fn-error-5',
   'try-catch-fn-error-6',
   'try-catch-fn-error-7',
   'try-catch-fn-error-8',
   'try-catch-fn-error-9',
   'try-catch-fn-error-10',
   'try-catch-fn-error-11',
   'try-catch-fn-error-12',
   'try-catch-fn-error-13',
   'try-catch-fn-error-14',
   'try-catch-fn-error-15',
   'try-catch-fn-error-16',
   'try-catch-fn-error-17',
   'try-catch-fn-error-18',
   'try-catch-fn-error-19',
   'try-catch-fn-error-20'].
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
environment('err') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xqt-errors","err"}]},
{resources, []},
{modules, []}
].
'try-001'(_Config) ->
   Qry = "try { doc('rubbish.xml') } catch * {\"ok\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-002'(_Config) ->
   Qry = "
        declare namespace err = \"http://www.w3.org/2005/xqt-errors\";
        try { doc('rubbish.xml') } catch err:FODC0001 | err:FODC0002 | err:FODC0005 {\"ok\"}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-003'(_Config) ->
   Qry = "try { doc('rubbish.xml') } catch *:FODC0001 | *:FODC0002 | *:FODC0005 {\"ok\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-004'(_Config) ->
   Qry = "
        try { doc('rubbish.xml') } 
        catch err:FODC0001 {<caught-error code=\"FODC0001\"/>} 
        catch err:FODC0002 {<caught-error code=\"FODC0002\"/>} 
        catch err:FODC0005 {<caught-error code=\"FODC0005\"/>} 
        catch err:* {<caught-error code=\"other\"/>}
      ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<caught-error code=\"FODC0002\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-005'(_Config) ->
   Qry = "<out>{ try { doc('rubbish.xml') } catch * {<caught-error/>}, try { doc('rubbish.xml') } catch * {<caught-another/>} }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><caught-error/><caught-another/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-006'(_Config) ->
   Qry = "
        declare variable $doc := doc('rubbish.xml'); 
        try { $doc } catch * {<caught-error/>}
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-007'(_Config) ->
   Qry = "
        let $doc := doc('rubbish.xml') 
        return try { $doc } catch * {<caught-error/>}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-008'(_Config) ->
   Qry = "
        declare function local:f() { doc('rubbish.xml') }; 
        try { local:f() } catch * {\"ok\"}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-009'(_Config) ->
   Qry = "
        declare function local:f($d as xs:integer) { 10 div $d }; 
        try { local:f(0) } catch err:FOAR0001 {\"ok\"}
      ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-010'(_Config) ->
   Qry = "
        declare function local:f($d as xs:integer) { 10 div $d };
        try { local:f(0) } catch * {local-name-from-QName($err:code)}
      ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FOAR0001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-011'(_Config) ->
   Qry = "
        declare function local:f($d as xs:integer) { 10 div $d };
        declare variable $t as xs:string := \"text\";
        try { local:f(0) } catch * { try { local:f($t cast as xs:integer) } catch * {local-name-from-QName($err:code)} }
      ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FORG0001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-012'(_Config) ->
   Qry = "
        declare function local:f($d as xs:integer) { 10 div $d };
        try { local:f(0) } catch * {$err:description}
      ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-013'(_Config) ->
   Qry = "
        declare function local:f($d as xs:integer) { 10 div $d };
        try { local:f(0) } catch * {$err:column-number, $err:line-number, $err:line-number}
      ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:integer*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-014'(_Config) ->
   Qry = "try { 9999999999999999999999999999999999999999999999999999999999999999999999
                idiv
                9999999999999999999999999999999999999999999999999999999999999999999999 }
        catch err:FOAR0002 {1}
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-015'(_Config) ->
   Qry = "try { xs:date('2013-02-29') }
          catch err:FORG0001 {true()}
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-016'(_Config) ->
   Qry = "
      declare function local:f() { .+3 };
      try {local:f()} catch err:XPDY0002 {true()}
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-017'(_Config) ->
   Qry = "
      declare function local:f() { a };
      try {local:f()} catch err:XPDY0002 {true()}
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'try-018'(_Config) ->
   Qry = "
      try {1 div 0}
      catch local:foo | local:bar {'first'}
      catch * {'second'}  
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"second\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'no-try-catch-1'(_Config) ->
   Qry = "1 div 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'no-try-catch-2'(_Config) ->
   Qry = "$x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'no-try-catch-3'(_Config) ->
   Qry = "let $i as xs:string := 1 return $i",
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
'try-catch-dynamic-error-1'(_Config) ->
   Qry = "try { 1 div 0 } catch * { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"Division by zero\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-2'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"Division by zero\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-3'(_Config) ->
   Qry = "try { 1 div 0 } catch err:* { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"Division by zero\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-4'(_Config) ->
   Qry = "try { 1 div 0 } catch *:FOAR0001 { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"Division by zero\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-static-error-1'(_Config) ->
   Qry = "try { $x } catch * { \"Undefined variable\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-static-error-2'(_Config) ->
   Qry = "try { $x } catch err:XPST0008 { \"Undefined variable\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-static-error-3'(_Config) ->
   Qry = "try { $x } catch err:* { \"Undefined variable\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-static-error-4'(_Config) ->
   Qry = "try { $x } catch *:XPST0008 { \"Undefined variable\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-type-error-1'(_Config) ->
   Qry = "try { let $i as xs:string := 1 return $i } catch * { \"Type error\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"\"Type error\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-type-error-2'(_Config) ->
   Qry = "try { let $i as xs:string := 1 return $i } catch err:XPTY0004 { \"Type error\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"\"Type error\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-type-error-3'(_Config) ->
   Qry = "try { let $i as xs:string := 1 return $i } catch err:* { \"Type error\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"\"Type error\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-type-error-4'(_Config) ->
   Qry = "try { let $i as xs:string := 1 return $i } catch *:XPTY0004 { \"Type error\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"\"Type error\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-before-1'(_Config) ->
   Qry = "1 div 0, try { () } catch * { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-before-2'(_Config) ->
   Qry = "1 div 0, try { () } catch err:FOAR0001 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-before-3'(_Config) ->
   Qry = "1 div 0, try { () } catch err:* { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-before-4'(_Config) ->
   Qry = "1 div 0, try { () } catch *:FOAR0001 { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-after-1'(_Config) ->
   Qry = "try { () } catch * { \"Division by zero\" }, 1 div 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-after-2'(_Config) ->
   Qry = "try { () } catch err:FOAR0001 { \"Division by zero\" }, 1 div 0",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-after-3'(_Config) ->
   Qry = "try { () } catch err:* { \"Division by zero\" }, 1 div 0",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-after-4'(_Config) ->
   Qry = "try { () } catch *:FOAR0001 { \"Division by zero\" }, 1 div 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-dynamic-error-outside-1'(_Config) ->
   Qry = "1 + (try { \"\" } catch * { \"Invalid argument\" })",
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
'try-catch-dynamic-error-outside-2'(_Config) ->
   Qry = "1 + (try { \"\" } catch err:XPTY0004 { \"Invalid argument\" })",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-dynamic-error-outside-3'(_Config) ->
   Qry = "1 + (try { \"\" } catch err:* { \"Invalid argument\" })",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-dynamic-error-outside-4'(_Config) ->
   Qry = "1 + (try { \"\" } catch *:XPTY0004 { \"Invalid argument\" })",
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
'try-catch-dynamic-error-outside-5'(_Config) ->
   Qry = "(try { \"\" } catch * { \"Invalid argument\" }) + 1",
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
'try-catch-dynamic-error-outside-6'(_Config) ->
   Qry = "(try { \"\" } catch err:FOAR0001 { \"Invalid argument\" }) + 1",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-dynamic-error-outside-7'(_Config) ->
   Qry = "(try { \"\" } catch err:* { \"Invalid argument\" }) + 1",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-dynamic-error-outside-8'(_Config) ->
   Qry = "(try { \"\" } catch *:FOAR0001 { \"Invalid argument\" }) + 1",
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
'try-catch-no-error-1'(_Config) ->
   Qry = "try { 0 } catch * { \"No error\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-no-error-2'(_Config) ->
   Qry = "try { 0 } catch err:FOAR0001 { \"No error\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-no-error-3'(_Config) ->
   Qry = "try { 0 } catch err:* { \"No error\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-no-error-4'(_Config) ->
   Qry = "try { 0 } catch *:FOAR0001 { \"No error\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-no-error-5'(_Config) ->
   Qry = "try { 0 } catch err:FOAR0001 { \"No error\" } catch *:FOAR0001 { \"No error \"} catch err:* { \"No error \"}  catch * { \"No error \"}",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-tests-namespace-1'(_Config) ->
   Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}FOAR0001 { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-tests-namespace-2'(_Config) ->
   Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}* { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-no-matching-catch-clause-1'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XPST0008 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-no-matching-catch-clause-2'(_Config) ->
   Qry = "try { 1 div 0 } catch xs:* { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-no-matching-catch-clause-3'(_Config) ->
   Qry = "try { 1 div 0 } catch *:XPST0008 { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-no-matching-catch-clause-4'(_Config) ->
   Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2005/not-xqt-errors}* { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-no-matching-catch-clause-5'(_Config) ->
   Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}XPST0008 { \"Division by zero\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-name-no-matching-catch-clause-6'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XPST0008 { \"Division by zero\" } catch xs:* { \"Division by zero\" } catch *:XPST0008 { \"Division by zero\" } catch Q{http://www.w3.org/2005/not-xqt-errors}* { \"Division by zero\" } catch Q{http://www.w3.org/2005/xqt-errors}XPST0008 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-several-name-tests-1'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XPST0008 | err:FOAR0001 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-several-name-tests-2'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOAR0001 | err:XPST0008 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-several-name-tests-3'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XPTY0004 | err:FOAR0001 | err:XPST0008 { \"Division by zero\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-1'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-2'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XQST008 { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-3'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:XQST008 { \"Clause 2\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-4'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:XQST008 { \"Clause 2\" } catch err:XPTY0004 { \"Clause 3\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-5'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:XPTY0004 { \"Clause 2\" } catch err:XQST008 { \"Clause 3\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-6'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XPTY0004 { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" } catch err:XQST008 { \"Clause 3\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-7'(_Config) ->
   Qry = "try { 1 div 0 } catch err:XPTY0004 { \"Clause 1\" } catch err:XPST0008 { \"Clause 2\" } catch err:FOAR0001 { \"Clause 3\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-8'(_Config) ->
   Qry = "try { 1 div 0 } catch err:* { \"Clause 1\" } catch xs:* { \"Clause 2\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-9'(_Config) ->
   Qry = "try { 1 div 0 } catch xs:* { \"Clause 1\" } catch err:* { \"Clause 2\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-10'(_Config) ->
   Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}* { \"Clause 1\" } catch Q{http://www.w3.org/2001/XMLSchema}* { \"Clause 2\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-11'(_Config) ->
   Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2001/XMLSchema}* { \"Clause 1\" } catch Q{http://www.w3.org/2005/xqt-errors}* { \"Clause 2\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-first-matching-catch-clause-12'(_Config) ->
   Qry = "try { 1 div 0 } catch * { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Clause 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-1'(_Config) ->
   Qry = "try { 1 div 0 } catch * { $err:code }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err:FOAR0001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-2'(_Config) ->
   Qry = "try { 1 div 0 } catch * { fn:prefix-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-3'(_Config) ->
   Qry = "try { 1 div 0 } catch * { fn:local-name-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FOAR0001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-4'(_Config) ->
   Qry = "try { 1 div 0 } catch * { fn:namespace-uri-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xqt-errors") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-5'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { $err:code }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err:FOER0001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-6'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { fn:prefix-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-7'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { fn:local-name-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FOER0001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-8'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { fn:namespace-uri-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xqt-errors") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-9'(_Config) ->
   Qry = "try { fn:error() } catch * { $err:code }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err:FOER0000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-10'(_Config) ->
   Qry = "try { fn:error() } catch * { fn:prefix-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-11'(_Config) ->
   Qry = "try { fn:error() } catch * { fn:local-name-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FOER0000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-12'(_Config) ->
   Qry = "try { fn:error() } catch * { fn:namespace-uri-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xqt-errors") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-13'(_Config) ->
   Qry = "
        try { 1 div 0 } catch * { <e code=\"{$e:code}\" xmlns:e=\"http://www.w3.org/2005/xqt-errors\"/> }
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"ends-with($result[self::e]/@code, 'FOAR0001')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-code-variable-14'(_Config) ->
   Qry = "
      for $p in (\"p1\", \"p2\") return
         try {parse-xml($p)} catch * {$err:code}
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "err:FODC0006 err:FODC0006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-description-variable-1'(_Config) ->
   Qry = "try { 1 div 0 } catch * { count($err:description) le 1 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-err-description-variable-2'(_Config) ->
   Qry = "try { 1 div 0 } catch * { if (($err:description)) then $err:description instance of xs:string else fn:true() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-err-description-variable-3'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\") } catch * { $err:description }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Description") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-value-variable-1'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\", \"Value\") } catch * { $err:value }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Value") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-value-variable-2'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\", (\"Value\", 3, <a/>, true())) } catch * { count($err:value) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-value-variable-3'(_Config) ->
   Qry = "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\", (\"Value\", 3)) } catch * { $err:value[2] }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-err-module-variable-1'(_Config) ->
   Qry = "try { fn:error() } catch * { let $n := $err:module return true() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-err-module-variable-2'(_Config) ->
   Qry = "try { fn:error() } catch * { count($err:module) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-module-variable-3'(_Config) ->
   Qry = "try { fn:error() } catch * { if (count($err:module) eq 1) then $err:module else \"\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-line-number-variable-1'(_Config) ->
   Qry = "try { fn:error() } catch * { let $n := $err:line-number return true() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-err-line-number-variable-2'(_Config) ->
   Qry = "try { fn:error() } catch * { count($err:line-number) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-line-number-variable-3'(_Config) ->
   Qry = "try { fn:error() } catch * { if (count($err:line-number) eq 1) then $err:line-number else 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-column-number-variable-1'(_Config) ->
   Qry = "try { fn:error() } catch * { let $n := $err:column-number return true() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-err-column-number-variable-2'(_Config) ->
   Qry = "try { fn:error() } catch * { count($err:column-number) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-column-number-variable-3'(_Config) ->
   Qry = "try { fn:error() } catch * { if (count($err:column-number) eq 1) then $err:column-number else 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-other-variable-1'(_Config) ->
   Qry = "try { fn:error() } catch * { $err:other }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-dynamic-error-in-catch-clause-1'(_Config) ->
   Qry = "try { fn:error() } catch * { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-dynamic-error-in-catch-clause-2'(_Config) ->
   Qry = "try { 1 div 0 } catch err:FOER0000 { fn:error() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-dynamic-error-in-catch-clause-3'(_Config) ->
   Qry = "try { 0 } catch err:FOER0000 { fn:error() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-dynamic-error-in-catch-clause-4'(_Config) ->
   Qry = "try { fn:error() } catch err:FOER0001 { fn:error() } catch err:FOER0000 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-err-dynamic-error-in-catch-clause-5'(_Config) ->
   Qry = "try { fn:error() } catch err:FOER0000 { 0 } catch err:FOER0001 { fn:error() }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-function-call-1'(_Config) ->
   Qry = "try { fn:error() } catch err:FOER0000 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-function-call-2'(_Config) ->
   Qry = "try { fn:one-or-more(()) } catch err:FORG0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-function-call-3'(_Config) ->
   Qry = "try { function() { fn:error() } () } catch err:FOER0000 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-function-call-4'(_Config) ->
   Qry = "try { function() { 1 div 0 } () } catch err:FOAR0001 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-error-function-with-static-error-code'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XPST0008\")) } catch err:XPST0008 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-variable-binding-outside-1'(_Config) ->
   Qry = "let $x as xs:integer := \"\" return try { $x } catch err:XPTY0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-variable-binding-outside-2'(_Config) ->
   Qry = "try { let $x as xs:integer := \"\" return $x } catch err:XPTY0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'try-catch-variable-binding-outside-3'(_Config) ->
   Qry = "for $x as xs:integer in (0, 1, \"\") return try { $x } catch err:XPTY0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'try-catch-variable-binding-outside-4'(_Config) ->
   Qry = "
       declare variable $str external := \"\";
       try {
          for $x as xs:integer in (0, 1, $str)
          return $x
       } catch err:XPTY0004 {
          0
       }
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-variable-binding-outside-5'(_Config) ->
   Qry = "for tumbling window $x as xs:string in (2, 4, 6, 8, 10)
      start $s at $spos previous $sprev next $snext when true() end $e at
      $epos previous $eprev next $enext when true() return try { $x } catch err:XPTY0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-variable-binding-outside-6'(_Config) ->
   Qry = "try { for tumbling window $x as xs:string in (2, 4, 6, 8, 10)
      start $s at $spos previous $sprev next $snext when true() end $e at
      $epos previous $eprev next $enext when true() return $x } catch err:XPTY0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'try-catch-optimizations-1'(_Config) ->
   Qry = "try { 1 div 0 } catch * { 0 }, try { 1 div 0 } catch err:FOAR0001 { 1}",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0, 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-optimizations-2'(_Config) ->
   Qry = "try { fn:error() } catch * { 0 }, try { fn:error() } catch err:FOER0000 { 1}",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0, 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-optimizations-3'(_Config) ->
   Qry = "let $x := 1 div 0 return try { $x } catch * { 0 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-spec-example-1'(_Config) ->
   Qry = "let $x := \"\" return try {
      $x cast as xs:integer
      }
      catch * {
      0
      }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-spec-example-2'(_Config) ->
   Qry = "let $x := \"\" return try {
      $x cast as xs:integer
      }
      catch err:FORG0001 {
      0
      }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-spec-example-3'(_Config) ->
   Qry = "let $x := \"\" return try {
      $x cast as xs:integer
      }
      catch err:FORG0001 | err:XPTY0004 {
      0
      }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-spec-example-4'(_Config) ->
   Qry = "
      let $output := (try {
          fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
        }
        catch * {
          $err:code, $err:value, \" module: \",
          $err:module, \"(\", $err:line-number, \",\", $err:column-number, \")\"
        })
      return true()
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-spec-example-5'(_Config) ->
   Qry = "declare function local:thrice($x as xs:integer) as xs:integer
      {
      3*$x
      };
      
      local:thrice(try { \"oops\" } catch * { 3 } )
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
'try-catch-function-result-type-1'(_Config) ->
   Qry = "declare function local:thrice($x as xs:integer) as xs:integer
      { try { if (current-date() gt xs:date('2000-01-01')) then \"three\" else 3 } catch * { 3 } };
      local:thrice(3)
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
'try-catch-all-dynamic-errors-caught-1'(_Config) ->
   Qry = "try { . } catch err:XPDY0002 { \"Context item not set.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Context item not set.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-2'(_Config) ->
   Qry = "try { \"\" treat as element() } catch err:XPDY0050 { \"Sequence type mismatch.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Sequence type mismatch.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-3'(_Config) ->
   Qry = "try { element  element { attribute a {\"\"}, attribute a {\"\"} } } catch err:XQDY0025 { \"Attribute name duplicate.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Attribute name duplicate.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-4'(_Config) ->
   Qry = "try { processing-instruction name { \"?>\" } } catch err:XQDY0026 { \"Invalid PI.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid PI.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-5'(_Config) ->
   Qry = "try { processing-instruction  { \"prefix:name\" } {} } catch err:XQDY0041 { \"Invalid PI.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid PI.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-6'(_Config) ->
   Qry = "try { attribute xmlns {} } catch err:XQDY0044 { \"Invalid attribute.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid attribute.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-7'(_Config) ->
   Qry = "
      try { validate { document { <a/>, <b/> }} } catch err:XQDY0061 { \"Invalid document.\" }
    ",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "Invalid document.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQDY0084") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'try-catch-all-dynamic-errors-caught-8'(_Config) ->
   Qry = "try { processing-instruction XML {} } catch err:XQDY0064 { \"Invalid PI.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid PI.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-9'(_Config) ->
   Qry = "try { comment { \"--\" } } catch err:XQDY0072 { \"Invalid comment.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid comment.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-10'(_Config) ->
   Qry = "try { element { \"prefix:name\" } {} } catch err:XQDY0074 { \"Invalid element.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid element.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-11'(_Config) ->
   Qry = "(try { (attribute xml:id {\"\"})/0 } catch err:XQDY0091 { \"Invalid attribute ID.\" })",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "Invalid attribute ID.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-12'(_Config) ->
   Qry = "try { let $x := (1,2)[position() < 3] group by $x return $x } catch err:XPTY0004 { \"More than a grouping item.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "More than a grouping item.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'try-catch-all-dynamic-errors-caught-13'(_Config) ->
   Qry = "try { element { \"xmlns:name\" } {} } catch err:XQDY0096 | err:XQDY0074 { \"Invalid element.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid element.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-13b'(_Config) ->
   Qry = "try { element { QName(\"http://www.w3.org/2000/xmlns/\", \"xmlns:name\") } {} } catch err:XQDY0096 { \"Invalid element.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid element.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-14'(_Config) ->
   Qry = "try { namespace xmlns { \"http://www.example.com\" } } catch err:XQDY0101 { \"Invalid namespace node.\" }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Invalid namespace node.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-all-dynamic-errors-caught-15'(_Config) ->
   Qry = "try { 10000000000000000000000000001 - 10000000000000000000000000000 } catch err:FOAR0002 { 1 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'try-catch-nest-1'(_Config) ->
   Qry = "try { try { 1 div 0 } catch * { \"Division by zero\" } } catch * { \"Should not be reached.\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-nest-2'(_Config) ->
   Qry = "try { fn:error() } catch * { try { 1 div 0 } catch * { \"Division by zero\" } }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Division by zero") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-1'(_Config) ->
   Qry = "fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://www.example.com/}EXER3141") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-2'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch * { 0 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-3'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch Q{http://www.example.com/}EXER3141 { 0 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-4'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch Q{http://www.example.com/}* { 0 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-5'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch *:EXER3141 { 0 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-6'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { $err:code }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"local-name-from-QName($result) eq 'EXER3141'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri-from-QName($result) eq \"http://www.example.com/\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-7'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { namespace-uri-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'http://www.example.com/'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-8'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { prefix-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'example'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-9'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { local-name-from-QName($err:code) }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'EXER3141'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-10'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { $err:description }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'Description'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-11'(_Config) ->
   Qry = "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\", (1, 2)) } catch Q{http://www.example.com/}EXER3141 { $err:value[2] }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-12'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XPTY0004\")) } catch Q{http://www.w3.org/2005/xqt-errors}XPTY0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-13'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XPST0001\")) } catch Q{http://www.w3.org/2005/xqt-errors}XPST0001 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-14'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XPDY0002\")) } catch Q{http://www.w3.org/2005/xqt-errors}XPDY0002 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-15'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XQTY0105\")) } catch Q{http://www.w3.org/2005/xqt-errors}XQTY0105 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-16'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XQST0089\")) } catch Q{http://www.w3.org/2005/xqt-errors}XQST0089 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-17'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:XQDY0061\")) } catch Q{http://www.w3.org/2005/xqt-errors}XQDY0061 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-18'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:FOTY0014\")) } catch Q{http://www.w3.org/2005/xqt-errors}FOTY0014 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-19'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:FORG0001\")) } catch Q{http://www.w3.org/2005/xqt-errors}FORG0001 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'try-catch-fn-error-20'(_Config) ->
   Qry = "try { fn:error(xs:QName(\"err:FONS0004\")) } catch Q{http://www.w3.org/2005/xqt-errors}FONS0004 { 0 }",
   Env = xqerl_test:handle_environment(environment('err')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
