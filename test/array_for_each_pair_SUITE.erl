-module('array_for_each_pair_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['array-for-each-pair-301'/1]).
-export(['array-for-each-pair-302'/1]).
-export(['array-for-each-pair-303'/1]).
-export(['array-for-each-pair-304'/1]).
-export(['array-for-each-pair-305'/1]).
-export(['array-for-each-pair-306'/1]).
-export(['array-for-each-pair-307'/1]).
-export(['array-for-each-pair-308'/1]).
-export(['array-for-each-pair-309'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "array")

,[{base_dir, BaseDir}|Config].
all() -> [
   'array-for-each-pair-301',
   'array-for-each-pair-302',
   'array-for-each-pair-303',
   'array-for-each-pair-304',
   'array-for-each-pair-305',
   'array-for-each-pair-306',
   'array-for-each-pair-307',
   'array-for-each-pair-308',
   'array-for-each-pair-309'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'array-for-each-pair-301'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair([\"A\", \"B\", \"C\"], [1, 2, 3], function($x, $y) {[$x, $y]})",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-301.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[\"A\", 1], [\"B\", 2], [\"C\", 3]]") of 
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
'array-for-each-pair-302'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $A := [\"A\", \"B\", \"C\", \"D\"] return array:for-each-pair($A, array:tail($A), concat#2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-302.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"AB\", \"BC\", \"CD\"]") of 
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
'array-for-each-pair-303'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair([1,2,3,4,5], [2,4,6,8,10,12,14], function($a,$b){$a + $b})",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-303.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[3,6,9,12,15]") of 
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
'array-for-each-pair-304'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair([function($x){$x+2},function($x){$x*2},function($x){$x*$x}], [3,4,5], function($a,$b){$a($b)})",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-304.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[5,8,25]") of 
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
'array-for-each-pair-305'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair([[\"a\",\"b\",\"c\"],[\"d\",\"e\",\"f\"],[\"g\",\"h\",\"i\"]], [1,2,3], array:remove#2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-305.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[\"b\",\"c\"], [\"d\",\"f\"], [\"g\",\"h\"]]") of 
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
'array-for-each-pair-306'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair([], [], contains#2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-306.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
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
'array-for-each-pair-307'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair([], [1, 2], contains#2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-307.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
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
'array-for-each-pair-308'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair(['a', 'b'], [1, 2], true#0)",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-308.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'array-for-each-pair-309'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "array:for-each-pair(['a', 'b'], [1, 2], contains#2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "array-for-each-pair-309.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
