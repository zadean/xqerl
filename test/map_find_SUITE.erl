-module('map_find_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-find-001'/1]).
-export(['map-find-002'/1]).
-export(['map-find-003'/1]).
-export(['map-find-004'/1]).
-export(['map-find-005'/1]).
-export(['map-find-006'/1]).
-export(['map-find-007'/1]).
-export(['map-find-008'/1]).
-export(['map-find-009'/1]).
-export(['map-find-010'/1]).
-export(['map-find-101'/1]).
-export(['map-find-102'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-find-001',
   'map-find-002',
   'map-find-003',
   'map-find-004',
   'map-find-005',
   'map-find-006',
   'map-find-007',
   'map-find-008',
   'map-find-009',
   'map-find-010',
   'map-find-101',
   'map-find-102'].
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
environment('json-files') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/parse-json/data004.json","http://www.w3.org/qt3/json/data004-json"}]},
{modules, []}
].
'map-find-001'(_Config) ->
   Qry = "map:find((), 17)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-002'(_Config) ->
   Qry = "map:find(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Wednesday\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-003'(_Config) ->
   Qry = "map:find(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 86)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-004'(_Config) ->
   Qry = "map:find((map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"},
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}), 1)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-005'(_Config) ->
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"},
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}], 1)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-006'(_Config) ->
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"},
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}, 1], 1)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-007'(_Config) ->
   Qry = "map:find(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\", \"fr\":
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}}, 1)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"Dimanche\", \"Sunday\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-008'(_Config) ->
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\", \"fr\":
            [map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}, 78]}, 82], 7)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[\"Saturday\", \"Samedi\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"Samedi\", \"Saturday\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-009'(_Config) ->
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:[\"Saturday\", \"Sat\"], \"fr\":
            [map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:[\"Samedi\", \"Sa\"],1:\"Dimanche\"}, 78]}, 82], 7)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[[\"Saturday\", \"Sat\"], [\"Samedi\", \"Sa\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[\"Samedi\", \"Sa\"], [\"Saturday\", \"Sat\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-010'(_Config) ->
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:(\"Saturday\", \"Sat\"), \"fr\":
            [map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:(\"Samedi\", \"Sa\"),1:\"Dimanche\"}, 78]}, 82], 7)",
   Env = xqerl_test:handle_environment(environment('map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[(\"Saturday\", \"Sat\"), (\"Samedi\", \"Sa\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[(\"Samedi\", \"Sa\"), (\"Saturday\", \"Sat\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-101'(_Config) ->
   Qry = "fn:json-doc(\"http://www.w3.org/qt3/json/data004-json\") => map:find(\"servlet-name\")",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"cofaxCDS\", \"cofaxEmail\", \"cofaxAdmin\", \"fileServlet\", \"cofaxTools\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'map-find-102'(_Config) ->
   Qry = "fn:json-doc(\"http://www.w3.org/qt3/json/data004-json\") => map:find(\"init-param\") => map:find(\"mailHost\")",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"mail1\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
