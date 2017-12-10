-module('op_same_key_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['same-key-001'/1]).
-export(['same-key-002'/1]).
-export(['same-key-003'/1]).
-export(['same-key-004'/1]).
-export(['same-key-005'/1]).
-export(['same-key-006'/1]).
-export(['same-key-007'/1]).
-export(['same-key-008'/1]).
-export(['same-key-009'/1]).
-export(['same-key-010'/1]).
-export(['same-key-011'/1]).
-export(['same-key-012'/1]).
-export(['same-key-013'/1]).
-export(['same-key-014'/1]).
-export(['same-key-015'/1]).
-export(['same-key-016'/1]).
-export(['same-key-017'/1]).
-export(['same-key-018'/1]).
-export(['same-key-019'/1]).
-export(['same-key-020'/1]).
-export(['same-key-021'/1]).
-export(['same-key-022'/1]).
-export(['same-key-023'/1]).
-export(['same-key-024'/1]).
-export(['same-key-025'/1]).
-export(['same-key-026'/1]).
-export(['same-key-027'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'same-key-001',
   'same-key-002',
   'same-key-003',
   'same-key-004',
   'same-key-005',
   'same-key-006',
   'same-key-007',
   'same-key-008',
   'same-key-009',
   'same-key-010',
   'same-key-011',
   'same-key-012',
   'same-key-013',
   'same-key-014',
   'same-key-015',
   'same-key-016',
   'same-key-017',
   'same-key-018',
   'same-key-019',
   'same-key-020',
   'same-key-021',
   'same-key-022',
   'same-key-023',
   'same-key-024',
   'same-key-025',
   'same-key-026',
   'same-key-027'].
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
'same-key-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           map:merge((
              map:entry(xs:untypedAtomic(\"abc\"), 1),
              map:entry(xs:string(\"abc\"), 1),
              map:entry(xs:anyURI(\"abc\"), 1),
              map:entry(xs:string(\"xyz\"), 1),
              map:entry(xs:untypedAtomic(\"xyz\"), 1),
              map:entry(QName((),\"abc\"), 1)
           ), map{\"duplicates\":\"use-last\"})
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count(map:keys($result)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:keys($result)[deep-equal(.,\"abc\")] instance of xs:anyURI") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:keys($result)[deep-equal(.,\"xyz\")] instance of xs:untypedAtomic") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?abc eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           declare default collation \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\";
           let $keys := (\"ABC\", \"abc\", \"aBc\")
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result?1=>map:size() eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?abc eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?2) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?3) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           map {
             \"ab\" || \"c\" : 1,
             xs:anyURI(\"abc\") : 2
           }
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            map:merge((
              map:entry(xs:double('NaN'), 1),
              map:entry(xs:double('INF'), 2),
              map:entry(xs:double('-INF'), 3),
              map:entry(xs:float('NaN'), 1),
              map:entry(xs:float('INF'), 2),
              map:entry(xs:float('-INF'), 3)
            ), map{\"duplicates\":\"use-last\"})
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:keys($result) instance of xs:float+") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double('NaN')) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double('INF')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double('-INF')) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            map:merge((
              map:entry(xs:double('NaN'), 1),
              map:entry(xs:double('INF'), 2),
              map:entry(xs:double('-INF'), 3),
              map:entry(xs:float('NaN'), 1),
              map:entry(xs:float('INF'), 2),
              map:entry(xs:float('-INF'), 3)
              ), map{\"duplicates\":\"use-last\"})
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:keys($result) instance of xs:float+") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double('NaN')) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double('INF')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double('-INF')) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
             let $keys := (
                 xs:decimal(\"1.00000000000000001\"),
                 xs:decimal(\"1.00000000000000002\"),
                 xs:double(\"1.0\")
             )
             return [
                 map:merge($keys ! map:entry(., position())),
                 distinct-values($keys),
                 for $k in $keys group by $k return $k              
             ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?(1)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?(xs:double(\"1.0\") cast as xs:decimal) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?(xs:double(\"1.0\")) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?2) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?3) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            map {
              xs:double(\"1.1\") : 1
            }
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result?(xs:decimal(\"1.1\")) => empty()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(1.1E0) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            map {
              1 div 3 cast as xs:float : \"float\",
              1 div 3 cast as xs:double : \"double\",
              1 div 3 cast as xs:integer : \"integer\"
            }
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result?((1 div 3 cast as xs:float)   cast as xs:decimal) eq \"float\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?((1 div 3 cast as xs:double)  cast as xs:decimal) eq \"double\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?((1 div 3 cast as xs:integer) cast as xs:decimal) eq \"integer\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           map { xs:integer(\"16777218\") : 1 }
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result?(16777218) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:double(\"16777218\")) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:decimal(\"16777218\")) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           for $i in -100000 to 100000
           let $f := xs:float($i)
           let $m := map { $f : 1 }
           where not(map:contains($m, $f)) or
                 not(map:contains($m, $f cast as xs:decimal))
           return error((), \"i=\" || $i)
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           for $i in -100000 to 100000
           let $d := xs:double($i)
           let $m := map { $d : 1 }
           where not(map:contains($m, $d)) or
                 not(map:contains($m, $d cast as xs:decimal))
           return error((), \"i=\" || $i)
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           for $i in -100000 to 100000
           let $m := map { $i : 1 }
           where not(map:contains($m, $i)) or
                 not(map:contains($m, $i cast as xs:decimal))
           return error((), \"i=\" || $i)
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $without_tz := xs:dateTime('2015-04-08T01:30:00') 
           let $with_tz := adjust-dateTime-to-timezone($without_tz, implicit-timezone())
           let $keys := (xs:dateTime('2015-04-08T02:30:00'), $without_tz, $with_tz)
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?1) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?(xs:dateTime('2015-04-08T02:30:00')) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?2) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?3) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $without_tz := xs:date('2015-04-08') 
           let $with_tz := adjust-date-to-timezone($without_tz, implicit-timezone())
           let $keys := (xs:date('2015-04-09'), $without_tz, $with_tz)
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?1) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?(xs:date('2015-04-08')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?2) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?3) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $without_tz := xs:time('01:30:00') 
           let $with_tz := adjust-time-to-timezone($without_tz, implicit-timezone())
           let $keys := (xs:time('02:30:00'), $without_tz, $with_tz)
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?1) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?(xs:time('02:30:00')) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?2) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?3) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-016'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())
           let $keys := ($date cast as xs:gYear, xs:gYear(\"2015\"), xs:gYear(\"2014\"))
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?(1)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(1)?(xs:gYear('2015')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(2)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(3)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-017'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())
           let $keys := ($date cast as xs:gYearMonth, xs:gYearMonth(\"2015-10\"), xs:gYearMonth(\"2015-11\"))
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?(1)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(1)?(xs:gYearMonth('2015-10')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(2)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(3)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-018'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())
           let $keys := ($date cast as xs:gMonth, xs:gMonth(\"--10\"), xs:gMonth(\"--11\"))
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?(1)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(1)?(xs:gMonth('--10')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(2)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(3)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-019'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())
           let $keys := ($date cast as xs:gMonthDay, xs:gMonthDay(\"--10-10\"), xs:gMonthDay(\"--11-11\"))
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?(1)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(1)?(xs:gMonthDay('--10-10')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(2)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(3)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-020'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())
           let $keys := ($date cast as xs:gDay, xs:gDay(\"---10\"), xs:gDay(\"---11\"))
           return [
               map:merge($keys ! map:entry(., position())),
               distinct-values($keys),
               for $k in $keys group by $k return $k             
           ]
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result?(1)) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(1)?(xs:gDay('---10')) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(2)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?(3)) lt 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-021'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            map {
               fn:true() : 1,
               fn:false() : 2,
               xs:hexBinary(\"ff\") : 3,
               xs:base64Binary(xs:hexBinary(\"ff\")) : 4,
               xs:duration(\"P12M\") : 5,
               QName((), \"abc\") : 6,
               QName(\"http://example.org\", \"abc\") : 7
            }
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(fn:true()) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(fn:false()) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:hexBinary(\"ff\")) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:base64Binary(xs:hexBinary(\"ff\"))) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(xs:duration(\"P12M\")) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(QName((), \"abc\")) eq 6") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(QName(\"http://example.org\", \"abc\")) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-022'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          let $ns := \"http://example.org\",
           $keys := (QName($ns, \"foo\"), QName($ns, \"ns:foo\"), QName($ns, \"ns2:foo\"))
          return
             map:merge($keys ! map:entry(., position()), map{\"duplicates\":\"use-last\"})
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(QName(\"http://example.org\",\"foo\")) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-023'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         let $keys :=
           let $range := 48 to 122
           for $c1 in $range, $c2 in $range, $c3 in $range
           return codepoints-to-string(($c1, $c2, $c3))
         
         let $map := 
           map:merge(($keys,$keys) ! map:entry(.,.))
         
         return
           map:size($map) eq count($keys) and 
           (
             every $key in $keys 
             satisfies 
               $map($key) eq $key and 
               not(map:contains(map:remove($map, $key), $key)) and
               map:get(map:put($map, $key, \"x\"), $key) eq \"x\"      
           )
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-024'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         let $keys :=
           let $range := 48 to 122
           for $c1 in $range, $c2 in $range
           let $i := $c1*1000 + $c2
           return (
             codepoints-to-string(($c1, $c2)),
             switch($i mod 3)
               case 0 return xs:integer($i)
               case 1 return xs:decimal($i)
               case 2 return xs:double($i)
               default return error()
           )

         let $map :=
           map:merge(($keys,$keys) ! map:entry(.,.), map{\"duplicates\":\"use-last\"})
         
         return
           map:size($map) eq count($keys) and
           (
             every $key in $keys
             satisfies
               $map($key) eq $key and
               not(map:contains(map:remove($map, $key), $key)) and
               map:get(map:put($map, $key, \"x\"), $key) eq \"x\"
           )
         
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-025'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         let $keys := (1 to 10000) ! xs:float(1 div .)
         let $map := map:merge(
           $keys ! (
              map:entry(.,.), 
              map:entry(-.,-.)
           )
         )
         return 
            map:size($map) eq 20000 and
            (
             every $key in $keys 
             satisfies $map($key) eq $key and
                       $map(xs:double($key)) eq $key and
                       $map(xs:decimal($key)) eq $key
            )
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'same-key-026'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare function local:type($n) {
            if ($n instance of xs:integer) then \"integer\"
            else if ($n instance of xs:double) then \"double\" 
            else if ($n instance of xs:float) then \"float\"
            else error()
         };

         let $values := (
           xs:integer(\"9223372036854773760\"), xs:double(\"9.223372036854774E18\"), 
           xs:integer(\"9223372036854773761\"),
           xs:integer(\"9223372036854774784\"), xs:double(\"9.223372036854775E18\"), 
           xs:integer(\"9223372036854774785\"),
           xs:integer(\"9223372036854775808\"), xs:double(\"9.223372036854776E18\"), xs:float(\"9.223372E18\"), 
           xs:integer(\"9223372036854775809\"),
           xs:integer(\"9223372036854777856\"), xs:double(\"9.223372036854778E18\")
         )
         let $m := map:merge(
                     for $i in $values
                     return
                       map:entry($i,$i)
                   , map{\"duplicates\":\"use-last\"})
         let $contents := 
            string-join(for $v at $p in $values return
              ($p || \" $m(\" || local:type($v) || \") == \" || local:type($m($v))), 
              \", \"
            )
         return
            (\"Size: \" || map:size($m) || \", \" || $contents)
       ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "Size: 7, 1 $m(integer) == double, 2 $m(double) == double, 3 $m(integer) == integer, 4 $m(integer) == double, 5 $m(double) == double, 6 $m(integer) == integer, 7 $m(integer) == float, 8 $m(double) == float, 9 $m(float) == float, 10 $m(integer) == integer, 11 $m(integer) == double, 12 $m(double) == double") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'same-key-027'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            map{ xs:time('17:00:00Z'):1, xs:time('12:00:00-05:00'):2 }
        ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "same-key-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
