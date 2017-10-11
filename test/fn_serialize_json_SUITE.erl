-module('fn_serialize_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-serialize-json-001'/1]).
-export(['fn-serialize-json-002'/1]).
-export(['fn-serialize-json-003'/1]).
-export(['fn-serialize-json-004'/1]).
-export(['fn-serialize-json-005'/1]).
-export(['fn-serialize-json-006'/1]).
-export(['fn-serialize-json-007'/1]).
-export(['fn-serialize-json-008'/1]).
-export(['fn-serialize-json-009'/1]).
-export(['fn-serialize-json-010'/1]).
-export(['fn-serialize-json-011'/1]).
-export(['fn-serialize-json-012'/1]).
-export(['fn-serialize-json-013'/1]).
-export(['fn-serialize-json-014'/1]).
-export(['fn-serialize-json-015'/1]).
-export(['fn-serialize-json-016'/1]).
-export(['fn-serialize-json-017'/1]).
-export(['fn-serialize-json-018'/1]).
-export(['fn-serialize-json-019'/1]).
-export(['fn-serialize-json-020'/1]).
-export(['fn-serialize-json-021'/1]).
-export(['fn-serialize-json-022'/1]).
-export(['fn-serialize-json-023'/1]).
-export(['fn-serialize-json-024'/1]).
-export(['fn-serialize-json-100'/1]).
-export(['fn-serialize-json-101'/1]).
-export(['fn-serialize-json-102'/1]).
-export(['fn-serialize-json-103'/1]).
-export(['fn-serialize-json-104'/1]).
-export(['fn-serialize-json-901'/1]).
-export(['fn-serialize-json-902'/1]).
-export(['fn-serialize-json-903'/1]).
-export(['fn-serialize-json-904'/1]).
-export(['fn-serialize-json-905'/1]).
-export(['fn-serialize-json-906'/1]).
-export(['fn-serialize-json-907'/1]).
-export(['fn-serialize-json-908'/1]).
-export(['fn-serialize-json-909'/1]).
-export(['fn-serialize-json-910'/1]).
-export(['fn-serialize-json-911'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-serialize-json-001',
   'fn-serialize-json-002',
   'fn-serialize-json-003',
   'fn-serialize-json-004',
   'fn-serialize-json-005',
   'fn-serialize-json-006',
   'fn-serialize-json-007',
   'fn-serialize-json-008',
   'fn-serialize-json-009',
   'fn-serialize-json-010',
   'fn-serialize-json-011',
   'fn-serialize-json-012',
   'fn-serialize-json-013',
   'fn-serialize-json-014',
   'fn-serialize-json-015',
   'fn-serialize-json-016',
   'fn-serialize-json-017',
   'fn-serialize-json-018',
   'fn-serialize-json-019',
   'fn-serialize-json-020',
   'fn-serialize-json-021',
   'fn-serialize-json-022',
   'fn-serialize-json-023',
   'fn-serialize-json-024',
   'fn-serialize-json-100',
   'fn-serialize-json-101',
   'fn-serialize-json-102',
   'fn-serialize-json-103',
   'fn-serialize-json-104',
   'fn-serialize-json-901',
   'fn-serialize-json-902',
   'fn-serialize-json-903',
   'fn-serialize-json-904',
   'fn-serialize-json-905',
   'fn-serialize-json-906',
   'fn-serialize-json-907',
   'fn-serialize-json-908',
   'fn-serialize-json-909',
   'fn-serialize-json-910',
   'fn-serialize-json-911'].
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
'fn-serialize-json-001'(_Config) ->
   Qry = "serialize-json(map{})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"translate($result,' 	
', '') = '{}'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-002'(_Config) ->
   Qry = "serialize-json((), map{\"spec\":=\"ECMA-262\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"translate($result,' 	
', '') = 'null'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-003'(_Config) ->
   Qry = "serialize-json(12.5, map{\"spec\":=\"ECMA-262\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"number($result) = 12.5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-004'(_Config) ->
   Qry = "normalize-space(serialize-json(true(), map{\"spec\":=\"ECMA-262\"}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-005'(_Config) ->
   Qry = "normalize-space(serialize-json(false(), map{\"spec\":=\"ECMA-262\"}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-006'(_Config) ->
   Qry = "serialize-json(map{'abc':=23})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"translate($result,' 	
', '') = '{\"abc\":23}'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-007'(_Config) ->
   Qry = "let $r := serialize-json(map{'abc':=23, 'xyz':=49}, map{\"spec\":=\"RFC4627\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"starts-with($result, '{')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"contains($result, '\"abc\":23')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"contains($result, '\"xyz\":49')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"ends-with($result, '}')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"parse-json($result)(\"abc\") = 23") of 
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
'fn-serialize-json-008'(_Config) ->
   Qry = "let $r := serialize-json(parse-json('[1, 2, 3, \"four\", true, false, null]'), map{\"spec\":=\"RFC4627\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[1,2,3,\"four\",true,false,null]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-009'(_Config) ->
   Qry = "let $r := serialize-json((1, 2, 3, \"four\", true(), false()), map{\"spec\":=\"RFC4627\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[1,2,3,\"four\",true,false]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-010'(_Config) ->
   Qry = "let $r := serialize-json(parse-json('[[1, 2], [3, 4], [5, 6], [7], [], [null]]'))
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[[1,2],[3,4],[5,6],[7],[],[null]]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-011'(_Config) ->
   Qry = "let $r := serialize-json(map{\"abc\":=(1 to 10)}, map{\"spec\":=\"RFC4627\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"abc\":[1,2,3,4,5,6,7,8,9,10]}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-012'(_Config) ->
   Qry = "let $r := serialize-json((map{\"abc\":=1},map{\"def\":=2},map{\"ghi\":=3}))
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":1},{\"def\":2},{\"ghi\":3}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-013'(_Config) ->
   Qry = "let $r := serialize-json((map{\"abc\":=map{\"abc\":=1}},map{\"def\":=map{\"def\":=2}},map{\"ghi\":=map{\"ghi\":=3}}), map{\"spec\":=\"RFC4627\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":{\"abc\":1}},{\"def\":{\"def\":2}},{\"ghi\":{\"ghi\":3}}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-014'(_Config) ->
   Qry = "let $r := serialize-json('𝄞', map{\"spec\":=\"ECMA-262\"})
            return translate(normalize-space($r), 'abcdef', 'ABCDEF')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"\\uD834\\uDD1E\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-015'(_Config) ->
   Qry = "let $r := serialize-json('
', map{\"spec\":=\"ECMA-262\"})
            return translate(normalize-space($r), 'abcdef', 'ABCDEF')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "\"\\n\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "\"\\u0010\"") of 
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
'fn-serialize-json-016'(_Config) ->
   Qry = "serialize-json((map{\"abc\":=map{\"abc\":=1}},map{\"def\":=map{\"def\":=2}},map{\"ghi\":=map{\"ghi\":=3}}),
        map{\"indent\":=false()})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":{\"abc\":1}},{\"def\":{\"def\":2}},{\"ghi\":{\"ghi\":3}}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-017'(_Config) ->
   Qry = "let $r := serialize-json((map{\"abc\":=map{\"abc\":=1}},map{\"def\":=map{\"def\":=2}},map{\"ghi\":=map{\"ghi\":=3}}),
              map{\"indent\":=true(), \"spec\":=\"RFC4627\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":{\"abc\":1}},{\"def\":{\"def\":2}},{\"ghi\":{\"ghi\":3}}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-018'(_Config) ->
   Qry = "parse-json(serialize-json(12.34, map{\"spec\":=\"ECMA-262\"}), map{\"spec\":=\"ECMA-262\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq xs:double('12.34')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'fn-serialize-json-019'(_Config) ->
   Qry = "parse-json(serialize-json(12.34e-30, map{\"spec\":=\"ECMA-262\"}), map{\"spec\":=\"ECMA-262\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq 12.34e-30") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'fn-serialize-json-020'(_Config) ->
   Qry = "serialize-json(\"abc\"\"def\", map{\"spec\":=\"ECMA-262\",\"escape\":=true()})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq '\"abc\\\"def\"'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:string") of 
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
'fn-serialize-json-021'(_Config) ->
   Qry = "serialize-json(\"abc\\\\def\", map{\"spec\":=\"ECMA-262\",\"escape\":=false()})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq '\"abc\\\\def\"'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:string") of 
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
'fn-serialize-json-022'(_Config) ->
   Qry = "let $r := serialize-json((number('NaN'), number('INF'), number('-INF')))
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[\"NaN\",\"INF\",\"-INF\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-023'(_Config) ->
   Qry = "let $r := serialize-json((0,0,xs:untypedAtomic(\"abcd\")))
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[0,0,\"abcd\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-024'(_Config) ->
   Qry = "let $r := serialize-json(map{1:=\"a\",2:=\"b\",4:=\"d\",10:=\"j\",7:=\"g\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[\"a\",\"b\",null,\"d\",null,null,\"g\",null,null,\"j\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-100'(_Config) ->
   Qry = "let $r := serialize-json((0,0,xs:date('2011-04-06')), map{\"fallback\":=function($v){string($v)}})
        return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[0,0,\"2011-04-06\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-101'(_Config) ->
   Qry = "let $r := serialize-json(map{\"a\":=xs:date('2011-04-06')}, map{\"fallback\":=function($v){string($v)}})
        return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"a\":\"2011-04-06\"}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-102'(_Config) ->
   Qry = "let $r := serialize-json(map{\"a\":=doc($uri)}, map{\"fallback\":=function($v){serialize($v)}})
        return translate($r,' 	
', '')",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/serialize-json/doc001.xml","","http://www.w3.org/fots/serialize-json/doc001.xml"}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"uri","xs:string","'http://www.w3.org/fots/serialize-json/doc001.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"a\":\"<?xmlversion=\\\"1.0\\\"encoding=\\\"UTF-8\\\"?><a>text</a>\"}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-103'(_Config) ->
   Qry = "let $r := serialize-json((0,0,map{true():=\"gogogo\"}), map{\"fallback\":=function($v){if ($v instance of map(xs:boolean, item()*)) then \"a-boolean-map\" else $v}})
        return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[0,0,\"a-boolean-map\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-104'(_Config) ->
   Qry = "let $r := serialize-json((0,0,map{false():=map{false():=\"ok\"}}), 
           map{\"fallback\":=function($v){
                 if ($v instance of map(xs:boolean, item()*)) 
                 then map:new(for $k in map:keys($v) return map:entry(string($k), map:get($v, $k)))  
                 else $v}})
        return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[0,0,{\"false\":{\"false\":\"ok\"}}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-901'(_Config) ->
   Qry = "serialize-json(\"abcd\", map{\"spec\":=\"RFC4627\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-902'(_Config) ->
   Qry = "serialize-json(true(), map{\"spec\":=\"RFC4627\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-903'(_Config) ->
   Qry = "serialize-json((), map{\"spec\":=\"RFC4627\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-904'(_Config) ->
   Qry = "serialize-json((0,0,xs:date('2011-04-06')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-905'(_Config) ->
   Qry = "serialize-json(map{\"uri\":=xs:anyURI('http://www.w3.org/')})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-906'(_Config) ->
   Qry = "serialize-json((1,2,3),map:entry(\"indent\",23))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-907'(_Config) ->
   Qry = "serialize-json((1,2,3),map:entry(\"indent\",\"true\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-908'(_Config) ->
   Qry = "serialize-json((1,2,3),map:entry(\"indent\",(true(),false())))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-909'(_Config) ->
   Qry = "let $r := serialize-json(map{1:=\"a\",2:=\"b\",4:=\"d\",10:=\"j\",7:=\"g\",-1:=\"$$$\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-910'(_Config) ->
   Qry = "let $r := serialize-json(map{1:=\"a\",2:=\"b\",4:=\"d\",10:=\"j\",7:=\"g\",0:=\"$$$\"})
            return translate($r,' 	
', '')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-serialize-json-911'(_Config) ->
   Qry = "serialize-json((1,2,3),map:entry(\"escape\",map{}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
