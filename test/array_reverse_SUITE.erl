-module('array_reverse_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['array-reverse-801'/1]).
-export(['array-reverse-802'/1]).
-export(['array-reverse-803'/1]).
-export(['array-reverse-804'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'array-reverse-801',
   'array-reverse-802',
   'array-reverse-803',
   'array-reverse-804'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
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
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'array-reverse-801'(_Config) ->
   Qry = "array:reverse([\"a\", \"b\", \"c\", \"d\"])",
   {Env,Opts} = xqerl_test:handle_environment(environment('array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"d\", \"c\", \"b\", \"a\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'array-reverse-802'(_Config) ->
   Qry = "array:reverse([(\"a\", \"b\"), (\"c\", \"d\")])",
   {Env,Opts} = xqerl_test:handle_environment(environment('array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[(\"c\", \"d\"), (\"a\", \"b\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'array-reverse-803'(_Config) ->
   Qry = "array:reverse([(1 to 5)])",
   {Env,Opts} = xqerl_test:handle_environment(environment('array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[(1, 2, 3, 4, 5)]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'array-reverse-804'(_Config) ->
   Qry = "array:reverse([])",
   {Env,Opts} = xqerl_test:handle_environment(environment('array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
