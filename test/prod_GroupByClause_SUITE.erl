-module('prod_GroupByClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['group-001'/1]).
-export(['group-001a'/1]).
-export(['group-002'/1]).
-export(['group-002a'/1]).
-export(['group-003'/1]).
-export(['group-003a'/1]).
-export(['group-004'/1]).
-export(['group-005'/1]).
-export(['group-006'/1]).
-export(['group-007'/1]).
-export(['group-008'/1]).
-export(['group-009'/1]).
-export(['group-009a'/1]).
-export(['group-010'/1]).
-export(['group-011'/1]).
-export(['group-012'/1]).
-export(['group-013'/1]).
-export(['group-014'/1]).
-export(['group-015'/1]).
-export(['group-016'/1]).
-export(['group-017'/1]).
-export(['group-018'/1]).
-export(['group-019'/1]).
-export(['use-case-groupby-Q1'/1]).
-export(['use-case-groupby-Q2'/1]).
-export(['use-case-groupby-Q3'/1]).
-export(['use-case-groupby-Q4'/1]).
-export(['use-case-groupby-Q5'/1]).
-export(['use-case-groupby-Q6'/1]).
-export(['use-case-groupby-Q7'/1]).
-export(['use-case-groupby-Q8'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'group-001',
   'group-001a',
   'group-002',
   'group-002a',
   'group-003',
   'group-003a',
   'group-004',
   'group-005',
   'group-006',
   'group-007',
   'group-008',
   'group-009',
   'group-009a',
   'group-010',
   'group-011',
   'group-012',
   'group-013',
   'group-014',
   'group-015',
   'group-016',
   'group-017',
   'group-018',
   'group-019',
   'use-case-groupby-Q1',
   'use-case-groupby-Q2',
   'use-case-groupby-Q3',
   'use-case-groupby-Q4',
   'use-case-groupby-Q5',
   'use-case-groupby-Q6',
   'use-case-groupby-Q7',
   'use-case-groupby-Q8'].
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
environment('GroupByUseCases') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/GroupByClause/products.xml","$products-doc",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/GroupByClause/sales-records.xml","$sales-records-doc",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/GroupByClause/stores.xml","$stores-doc",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/GroupByClause/books.xml","$books-doc",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'group-001'(_Config) ->
   Qry = " 
            for $x in 1 to 100 
            let $key := $x mod 10 
            group by $key 
            return string(text{$x})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"1 11 21 31 41 51 61 71 81 91\", \"2 12 22 32 42 52 62 72 82 92\", \"3 13 23 33 43 53 63 73 83 93\", 
            \"4 14 24 34 44 54 64 74 84 94\", \"5 15 25 35 45 55 65 75 85 95\", \"6 16 26 36 46 56 66 76 86 96\", 
            \"7 17 27 37 47 57 67 77 87 97\", \"8 18 28 38 48 58 68 78 88 98\", \"9 19 29 39 49 59 69 79 89 99\", 
            \"10 20 30 40 50 60 70 80 90 100\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-001a'(_Config) ->
   Qry = " 
            for $x in 1 to 100 
            group by $key := $x mod 10 
            return string(text{$x})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"1 11 21 31 41 51 61 71 81 91\", \"2 12 22 32 42 52 62 72 82 92\", \"3 13 23 33 43 53 63 73 83 93\", 
            \"4 14 24 34 44 54 64 74 84 94\", \"5 15 25 35 45 55 65 75 85 95\", \"6 16 26 36 46 56 66 76 86 96\", 
            \"7 17 27 37 47 57 67 77 87 97\", \"8 18 28 38 48 58 68 78 88 98\", \"9 19 29 39 49 59 69 79 89 99\", 
            \"10 20 30 40 50 60 70 80 90 100\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-002'(_Config) ->
   Qry = " 
            for $x in //employee 
            let $key := $x/@gender 
            group by $key 
            return concat($key, ':',  
                   string-join(for $e in $x return $e/@name/string(), ',')) 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"
            \"female:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",
            \"male:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"
         ") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-002a'(_Config) ->
   Qry = " 
            for $x in //employee 
            group by $key := $x/@gender 
            return concat($key, ':',  
                   string-join(for $e in $x return $e/@name/string(), ',')) 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"
            \"female:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",
            \"male:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"
         ") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-003'(_Config) ->
   Qry = " 
            for $x in //employee 
            let $key := ($x/@gender = 'male') 
            group by $key 
            return concat($key, ':',  
                   string-join(for $e in $x return $e/@name/string(), ',')) 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"
            \"false:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",
            \"true:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"
         ") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-003a'(_Config) ->
   Qry = " 
            for $x in //employee 
            group by $key := ($x/@gender = 'male') 
            return concat($key, ':',  
                   string-join(for $e in $x return $e/@name/string(), ',')) 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"
            \"false:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",
            \"true:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"
         ") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-004'(_Config) ->
   Qry = " 
            for $x in //employee 
            let $key := $x/@gender 
            group by $key 
            return concat($key, ':', avg($x/hours)) 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"female:41.25\", \"male:37.75\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-005'(_Config) ->
   Qry = "
            for $x in //employee 
            let $key := $x/hours 
            group by $key 
            return <group hours=\"{$key}\" avHours=\"{avg($x/hours)}\"/> 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
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
'group-006'(_Config) ->
   Qry = "
        <out>{ 
            for $x in //employee 
            group by $key := $x/status 
            return <group status=\"{$key}\" count=\"{count($x)}\"/> 
        }</out>
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<out><group status=\"\" count=\"12\"/><group status=\"active\" count=\"1\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<out><group status=\"active\" count=\"1\"/><group status=\"\" count=\"12\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-007'(_Config) ->
   Qry = " 
            for $x in //employee 
            let $key := $x/hours[1] 
            group by $key 
            where count($x) gt 2 
            return concat($key, ':', count($x)) 
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"40:3\", \"80:3\", \"20:5\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-008'(_Config) ->
   Qry = "
        <out>{ 
            for $x in //employee 
            let $key := $x/empnum 
            group by $key 
            order by count($x), $key 
            return <group count=\"{count($x)}\"> {string-join($x/@name, '|')} </group> 
        }</out>
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><group count=\"2\">Jane Doe 7|John Doe 8</group><group count=\"2\">Jane Doe 9|John Doe 10</group><group count=\"3\">Jane Doe 11|John Doe 12|Jane Doe 13</group><group count=\"6\">Jane Doe 1|John Doe 2|Jane Doe 3|John Doe 4|Jane Doe 5|John Doe 6</group></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-009'(_Config) ->
   Qry = "
        <out>{ 
            for $x in //employee 
            let $key := $x/empnum 
            group by $key collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\" 
            order by $key 
            return <group count=\"{count($x)}\" key=\"{$key}\"> {string-join($x/pnum, '|')} </group> 
        }</out>
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><group count=\"6\" key=\"E1\">P1|P2|P3|P4|P5|P6</group><group count=\"2\" key=\"E2\">P1|P2</group><group count=\"2\" key=\"E3\">P2|P2</group><group count=\"3\" key=\"E4\">P2|P4|P5</group></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-009a'(_Config) ->
   Qry = "
        <out>{ 
            for $x in //employee 
            group by $key := $x/empnum collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\" 
            order by $key 
            return <group count=\"{count($x)}\" key=\"{$key}\"> {string-join($x/pnum, '|')} </group> 
        }</out>
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><group count=\"6\" key=\"E1\">P1|P2|P3|P4|P5|P6</group><group count=\"2\" key=\"E2\">P1|P2</group><group count=\"2\" key=\"E3\">P2|P2</group><group count=\"3\" key=\"E4\">P2|P4|P5</group></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-010'(_Config) ->
   Qry = "
        <out>{ 
            for $x in //employee 
            let $key := if ($x/@gender='male') then number('NaN') else 42 
            group by $key 
            return <group key=\"{$key}\" count=\"{count($x)}\"/> 
        }</out>
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<out><group key=\"NaN\" count=\"6\"/><group key=\"42\" count=\"7\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<out><group key=\"42\" count=\"7\"/><group key=\"NaN\" count=\"6\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-011'(_Config) ->
   Qry = "
        for $a at $p in 1 to 10
        let $g := $p mod 2
        group by $g
        return string-join($p!string(), ' ')  
     ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"1 3 5 7 9\", \"2 4 6 8 10\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-012'(_Config) ->
   Qry = "
        <out>{ 
            for $x in //employee[age > 300] 
            let $key := @gender 
            group by $key 
            return <group gender=\"{$key}\"> { 
                        for $e in $x return <person>{$e/@name/string()}</person> 
                   } </group> 
        }</out>
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-013'(_Config) ->
   Qry = "
       for $x in 1 to 10, $y in 1 to 4
       let $org_y := $y
       group by $y, $y := $x mod 2
       return <grp y=\"{$org_y[1]}\" even=\"{$y}\">{$x}</grp>
     ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<grp even=\"1\" y=\"1\">1 1 1 1 3 3 3 3 5 5 5 5 7 7 7 7 9 9 9 9</grp><grp even=\"0\" y=\"1\">2 2 2 2 4 4 4 4 6 6 6 6 8 8 8 8 10 10 10 10</grp>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<grp even=\"0\" y=\"1\">2 2 2 2 4 4 4 4 6 6 6 6 8 8 8 8 10 10 10 10</grp><grp even=\"1\" y=\"1\">1 1 1 1 3 3 3 3 5 5 5 5 7 7 7 7 9 9 9 9</grp>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-014'(_Config) ->
   Qry = "
         let $x := 1
         return
           for $i in (\"a\", \"b\")
           group by $x
           return
             ($x, count($i))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0094") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-015'(_Config) ->
   Qry = "
          for $x in (true(), \"true\", xs:QName(\"true\"))
          group by $x
          return $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"true(), \"true\", xs:QName(\"true\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'group-016'(_Config) ->
   Qry = "
       count(
         for $y in 1 to 10
         group by $y := $y, $y := $y mod 2
         return $y
       )
     ",
   Qry1 = Qry,
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
'group-017'(_Config) ->
   {skip,"Collation Environment"}.
'group-018'(_Config) ->
   {skip,"Collation Environment"}.
'group-019'(_Config) ->
   Qry = "
           let $without_tz := xs:dateTime('2015-04-08T01:30:00') 
           let $with_tz := adjust-dateTime-to-timezone($without_tz, implicit-timezone())
           let $keys := (xs:dateTime('2015-04-08T02:30:00'), $without_tz, $with_tz)
           return count(for $k in $keys group by $k return $k)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"$result lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q1'(_Config) ->
   Qry = "
               <sales-qty-by-product>{
                 for $sales in $sales-records-doc/*/record
                 let $pname := $sales/product-name
                 group by $pname
                 order by $pname
                 return
                   <product name=\"{$pname}\">{
                     sum($sales/qty)
                   }</product>
               }</sales-qty-by-product> 
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<sales-qty-by-product><product name=\"blender\">250</product><product name=\"broiler\">20</product><product name=\"shirt\">10</product><product name=\"socks\">510</product><product name=\"toaster\">200</product></sales-qty-by-product>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q2'(_Config) ->
   Qry = "
               <result>{
                 for $sales in $sales-records-doc/*/record
                 let $state := $stores-doc/*/store[store-number = $sales/store-number]/state
                 let $category := $products-doc/*/product[name = $sales/product-name]/category
                 group by $state, $category
                 order by $state, $category
                 return
                   <group>
                     <state>{$state}</state>
                     <category>{$category}</category>
                     <total-qty>{sum($sales/qty)}</total-qty>
                   </group>
               }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><group><state>CA</state><category>clothes</category><total-qty>510</total-qty></group><group><state>CA</state><category>kitchen</category><total-qty>170</total-qty></group><group><state>MA</state><category>clothes</category><total-qty>10</total-qty></group><group><state>MA</state><category>kitchen</category><total-qty>300</total-qty></group></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q3'(_Config) ->
   Qry = "
               <result>{
                 for $sales in $sales-records-doc/*/record
                 let $state := $stores-doc/*/store[store-number = $sales/store-number]/state,
                   $product := $products-doc/*/product[name = $sales/product-name],
                   $category := $product/category,
                   $revenue := $sales/qty * $product/price
                 group by $state, $category
                 order by $state, $category
                 return
                   <group>
                     <state>{$state}</state>
                     <category>{$category}</category>
                     <total-revenue>{sum($revenue)}</total-revenue>
                   </group>
               }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><group><state>CA</state><category>clothes</category><total-revenue>2550</total-revenue></group><group><state>CA</state><category>kitchen</category><total-revenue>6500</total-revenue></group><group><state>MA</state><category>clothes</category><total-revenue>100</total-revenue></group><group><state>MA</state><category>kitchen</category><total-revenue>14000</total-revenue></group></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q4'(_Config) ->
   Qry = "
               <result>{
                 for $store in $stores-doc/*/store
                 let $state := $store/state
                 group by $state
                 order by $state
                 return
                   <state name=\"{$state}\">{
                     for $product in $products-doc/*/product
                     let $category := $product/category
                     group by $category
                     order by $category
                     return
                       <category name=\"{$category}\">{
                         for $sales in $sales-records-doc/*/record[store-number = $store/store-number
                           and product-name = $product/name]
                         let $pname := $sales/product-name
                         group by $pname
                         order by $pname
                         return
                           <product name=\"{$pname}\" total-qty=\"{sum($sales/qty)}\" />
                         }</category>
                   }</state>
               }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><state name=\"CA\"><category name=\"clothes\"><product name=\"socks\" total-qty=\"510\"/></category><category name=\"kitchen\"><product name=\"broiler\" total-qty=\"20\"/><product name=\"toaster\" total-qty=\"150\"/></category></state><state name=\"MA\"><category name=\"clothes\"><product name=\"shirt\" total-qty=\"10\"/></category><category name=\"kitchen\"><product name=\"blender\" total-qty=\"250\"/><product name=\"toaster\" total-qty=\"50\"/></category></state><state name=\"WA\"><category name=\"clothes\"/><category name=\"kitchen\"/></state></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q5'(_Config) ->
   Qry = "
               <result>{
                 for $sales in $sales-records-doc/*/record
                 let $storeno := $sales/store-number
                 group by $storeno
                 order by $storeno
                 return
                   <store number = \"{$storeno}\">{
                     for $s in $sales
                     order by xs:int($s/qty) descending
                     return
                       <product name = \"{$s/product-name}\" qty = \"{$s/qty}\"/>
                   }</store>
               }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><store number=\"1\"><product name=\"socks\" qty=\"500\"/><product name=\"broiler\" qty=\"20\"/></store><store number=\"2\"><product name=\"toaster\" qty=\"100\"/><product name=\"toaster\" qty=\"50\"/><product name=\"socks\" qty=\"10\"/></store><store number=\"3\"><product name=\"blender\" qty=\"150\"/><product name=\"blender\" qty=\"100\"/><product name=\"toaster\" qty=\"50\"/><product name=\"shirt\" qty=\"10\"/></store></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q6'(_Config) ->
   Qry = "
               <result>{
                 for $sales in $sales-records-doc/*/record
                 let $storeno := $sales/store-number,
                   $product := $products-doc/*/product[name = $sales/product-name],
                   $prd := $product,
                   $profit := $sales/qty * ($prd/price - $prd/cost)
                 group by $storeno
                 let $total-store-profit := sum($profit)
                 where $total-store-profit > 100
                 order by $total-store-profit descending
                 return
                   <store number = \"{$storeno}\" total-profit = \"{$total-store-profit}\"/>
                }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><store number=\"3\" total-profit=\"7320\"/><store number=\"2\" total-profit=\"3030\"/><store number=\"1\" total-profit=\"2100\"/></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q7'(_Config) ->
   Qry = "
               <result>{
                 for $book in $books-doc/*/book
                 for $author in $book/author
                 group by $author
                 order by $author
                 return
                 <author name=\"{$author}\">{
                   for $b in $book
                   order by $b/title
                   return
                     <title> {fn:data($b/title)} </title>
                 }</author>
               }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><author name=\"Alan Simon\"><title>SQL:1999</title><title>Strategic Database Technology</title></author><author name=\"Andrew Eisenberg\"><title>Understanding SQL and Java Together</title></author><author name=\"Jim Melton\"><title>Advanced SQL:1999</title><title>Querying XML</title><title>SQL:1999</title><title>Understanding SQL and Java Together</title></author><author name=\"Stephen Buxton\"><title>Querying XML</title></author></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'use-case-groupby-Q8'(_Config) ->
   Qry = "
               <result>{
                 for $book in $books-doc/*/book
                 let $author-list := fn:string-join($book/author, ', ')
                 group by $author-list
                 order by $author-list
                 return
                   <author-list names=\"{$author-list}\">{
                     for $b in $book
                     order by $b/title
                     return
                       <title> {fn:data($b/title)} </title>
                   }</author-list>
               }</result>
      ",
   Env = xqerl_test:handle_environment(environment('GroupByUseCases')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><author-list names=\"Alan Simon\"><title>Strategic Database Technology</title></author-list><author-list names=\"Jim Melton\"><title>Advanced SQL:1999</title></author-list><author-list names=\"Jim Melton, Alan Simon\"><title>SQL:1999</title></author-list><author-list names=\"Jim Melton, Andrew Eisenberg\"><title>Understanding SQL and Java Together</title></author-list><author-list names=\"Jim Melton, Stephen Buxton\"><title>Querying XML</title></author-list></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
