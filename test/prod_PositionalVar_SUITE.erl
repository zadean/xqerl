-module('prod_PositionalVar_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K-ForExprPositionalVar-1'/1]).
-export(['K-ForExprPositionalVar-2'/1]).
-export(['K-ForExprPositionalVar-3'/1]).
-export(['K-ForExprPositionalVar-4'/1]).
-export(['K-ForExprPositionalVar-5'/1]).
-export(['K-ForExprPositionalVar-6'/1]).
-export(['K-ForExprPositionalVar-7'/1]).
-export(['K-ForExprPositionalVar-8'/1]).
-export(['K-ForExprPositionalVar-9'/1]).
-export(['K-ForExprPositionalVar-10'/1]).
-export(['K-ForExprPositionalVar-11'/1]).
-export(['K-ForExprPositionalVar-12'/1]).
-export(['K-ForExprPositionalVar-13'/1]).
-export(['K-ForExprPositionalVar-14'/1]).
-export(['K-ForExprPositionalVar-15'/1]).
-export(['K-ForExprPositionalVar-16'/1]).
-export(['K-ForExprPositionalVar-17'/1]).
-export(['K-ForExprPositionalVar-18'/1]).
-export(['K-ForExprPositionalVar-19'/1]).
-export(['K-ForExprPositionalVar-20'/1]).
-export(['K-ForExprPositionalVar-21'/1]).
-export(['K-ForExprPositionalVar-22'/1]).
-export(['K-ForExprPositionalVar-23'/1]).
-export(['K-ForExprPositionalVar-24'/1]).
-export(['K-ForExprPositionalVar-25'/1]).
-export(['K-ForExprPositionalVar-26'/1]).
-export(['K-ForExprPositionalVar-27'/1]).
-export(['K-ForExprPositionalVar-28'/1]).
-export(['K-ForExprPositionalVar-29'/1]).
-export(['K-ForExprPositionalVar-30'/1]).
-export(['K2-ForExprPositionalVar-1'/1]).
-export(['K2-ForExprPositionalVar-2'/1]).
-export(['K2-ForExprPositionalVar-3'/1]).
-export(['K2-ForExprPositionalVar-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'K-ForExprPositionalVar-1',
   'K-ForExprPositionalVar-2',
   'K-ForExprPositionalVar-3',
   'K-ForExprPositionalVar-4',
   'K-ForExprPositionalVar-5',
   'K-ForExprPositionalVar-6',
   'K-ForExprPositionalVar-7',
   'K-ForExprPositionalVar-8',
   'K-ForExprPositionalVar-9',
   'K-ForExprPositionalVar-10',
   'K-ForExprPositionalVar-11',
   'K-ForExprPositionalVar-12',
   'K-ForExprPositionalVar-13',
   'K-ForExprPositionalVar-14',
   'K-ForExprPositionalVar-15',
   'K-ForExprPositionalVar-16',
   'K-ForExprPositionalVar-17',
   'K-ForExprPositionalVar-18',
   'K-ForExprPositionalVar-19',
   'K-ForExprPositionalVar-20',
   'K-ForExprPositionalVar-21',
   'K-ForExprPositionalVar-22',
   'K-ForExprPositionalVar-23',
   'K-ForExprPositionalVar-24',
   'K-ForExprPositionalVar-25',
   'K-ForExprPositionalVar-26',
   'K-ForExprPositionalVar-27',
   'K-ForExprPositionalVar-28',
   'K-ForExprPositionalVar-29',
   'K-ForExprPositionalVar-30',
   'K2-ForExprPositionalVar-1',
   'K2-ForExprPositionalVar-2',
   'K2-ForExprPositionalVar-3',
   'K2-ForExprPositionalVar-4'].
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{"file://"++filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
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
'K-ForExprPositionalVar-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $a at $p in (1, 2) return 1, $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $a at p1 in 1 return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in (1, 2, 3) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((true(), true()), for $i at $p in (1, 2) return boolean($p))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $i at $p in (1, 2, 3) return $p + \"1\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in string-to-codepoints(\"abc\") return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in distinct-values((1, 2, 3, 1, 2)) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(for $i at $p in () return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
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
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 13, (current-date(), 3)) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 1, (current-date(), 3)) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 2, (current-date(), 3)) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in 1 to 4 return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in -10 to -7 return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 2) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 4) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, current-time()), 10) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, current-time()), 0) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 1) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 3) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 eq (for $i at $p in subsequence((1, 2, 3, current-time()), 1, 1) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(for $i at $p in subsequence((1, 2, 3, current-time()), 5) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
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
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(for $i at $p in subsequence((1, 2, 3, current-time()), 5, 8) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
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
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 3, 2) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 1, 2) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 2, 2) return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 eq (for $i at $p in 0 return $p)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ForExprPositionalVar-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal(for $i at $p in (1, 2, 3, 4) return ($i, $p), (1, 1, 2, 2, 3, 3, 4, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ForExprPositionalVar-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ForExprPositionalVar-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $i at $p in remove((1, 2, 3), 10) return $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ForExprPositionalVar-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ForExprPositionalVar-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $tree := <e> <a id=\"1\"/> <a id=\"2\"/> <a id=\"3\"/> </e> for $i at $pos in (\"a\", \"b\", \"c\") return ($tree/@id eq $pos, $pos)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ForExprPositionalVar-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-ForExprPositionalVar-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $tree := <e> <a id=\"1\"/> <a id=\"2\"/> <a id=\"3\"/> </e> for $i at $pos in (\"a\", \"b\", \"c\") return ($tree/a/@id = $pos, $pos)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ForExprPositionalVar-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true 1 true 2 true 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ForExprPositionalVar-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $i at $pos in (3 to 6) let $let := $pos + 1 return ($let, $let - 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ForExprPositionalVar-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 1 3 2 4 3 5 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
