-module('prod_InlineFunctionExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['inline-fn-001'/1]).
-export(['inline-fn-002'/1]).
-export(['inline-fn-003'/1]).
-export(['inline-fn-004'/1]).
-export(['inline-fn-005'/1]).
-export(['inline-fn-006'/1]).
-export(['inline-fn-007'/1]).
-export(['inline-fn-008'/1]).
-export(['inline-fn-009'/1]).
-export(['inline-fn-010'/1]).
-export(['inline-fn-011'/1]).
-export(['inline-fn-012'/1]).
-export(['inline-fn-012a'/1]).
-export(['inline-fn-013'/1]).
-export(['inline-fn-014'/1]).
-export(['inline-fn-015'/1]).
-export(['inline-fn-016'/1]).
-export(['inline-fn-017'/1]).
-export(['inline-fn-018'/1]).
-export(['inline-fn-019'/1]).
-export(['inline-fn-020'/1]).
-export(['inline-fn-021'/1]).
-export(['inline-fn-022'/1]).
-export(['inline-fn-023'/1]).
-export(['inline-fn-024'/1]).
-export(['inline-fn-025'/1]).
-export(['inline-fn-026'/1]).
-export(['inline-fn-027'/1]).
-export(['inline-fn-028'/1]).
-export(['inline-fn-029'/1]).
-export(['inline-fn-030'/1]).
-export(['inline-fn-031'/1]).
-export(['inline-fn-032'/1]).
-export(['inline-fn-033'/1]).
-export(['inline-fn-034'/1]).
-export(['inline-fn-035'/1]).
-export(['inline-fn-036'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_ds),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'inline-fn-001',
   'inline-fn-002',
   'inline-fn-003',
   'inline-fn-004',
   'inline-fn-005',
   'inline-fn-006',
   'inline-fn-007',
   'inline-fn-008',
   'inline-fn-009',
   'inline-fn-010',
   'inline-fn-011',
   'inline-fn-012',
   'inline-fn-012a',
   'inline-fn-013',
   'inline-fn-014',
   'inline-fn-015',
   'inline-fn-016',
   'inline-fn-017',
   'inline-fn-018',
   'inline-fn-019',
   'inline-fn-020',
   'inline-fn-021',
   'inline-fn-022',
   'inline-fn-023',
   'inline-fn-024',
   'inline-fn-025',
   'inline-fn-026',
   'inline-fn-027',
   'inline-fn-028',
   'inline-fn-029',
   'inline-fn-030',
   'inline-fn-031',
   'inline-fn-032',
   'inline-fn-033',
   'inline-fn-034',
   'inline-fn-035',
   'inline-fn-036'].
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
'inline-fn-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        let $f := function($x){$x+1} return $f(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $pi := function(){3.14159} return $pi()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3.14159") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y){$x + $y} return $add(4, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         sum(for $i in 1 to 6 return
             let $add := function($x){$x + $i} return $add(4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"45") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         (1 to 4) !
         (let $add := function($x){$x + .} return $add(4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30 XQ30"}.
'inline-fn-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $void := function(){} return $void()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $outer := function($x) {
            let $inner := function($y) {$y + $x}
            return $inner(5)
         }
         return $outer(3)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $bonus := 10,
             $outer := function($x) {
                let $inner := function($y) {$y + $x + $bonus}
                return $inner(5)
             }
         return $outer(3)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"18") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x as xs:integer, $y as xs:integer){$x + $y}
         return $add(3,4)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x as xs:integer, $y as xs:integer){$x + $y}
         return $add(3,4.2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y) as xs:integer {$x + $y}
         return $add(3, 4)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-012a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y) as xs:integer {$x + $y}
         return $add(3, 4.1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-012a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y) as xs:double {$x + $y}
         return $add(3, 4)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $process := function($op, $x, $y) as function(*) {if ($op = \"+\") then function() {$x + $y} else function() {$x - $y}}
         return $process(\"+\", 3, 4)()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := %Q{http://example.com/speed}fast %Q{http://example.com/origin}author(\"Mike\") function($x, $y) {$x + $y} return $add(2,2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
'inline-fn-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := %Q{http://example.com/speed}fast() %Q{http://example.com/origin}author(\"Mike\") function($x, $y) {$x + $y} return $add(2,2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := %Q{http://example.com/speed}fast(true())  function($x, $y) {$x + $y} return $add(2,2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := % Q{http://example.com/speed}speed (-1)  function($x, $y) {$x + $y} return $add(2,2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := % Q{http://example.com/speed}speed (())  function($x, $y) {$x + $y} return $add(2,2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y) {$x + $y} return function-name($add)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y) {$x + $y} return function-arity($add)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $add := function($x, $y) {$x + $y} return apply($add, [12, 5])
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"17") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         function($x, $y) {$x + $y} (12, 5)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"17") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         function($x, $y) {$x + $y} [function-arity(.) = 2] (12, 5)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"17") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $weirdo := function($x, $f) {if ($x=0) then 0 else $f($x - 1, $f)} 
         return $weirdo(12, $weirdo)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $calc := map{
            \"+\" : function($a, $b) {$a + $b},
            \"-\" : function($a, $b) {$a - $b},
            \"*\" : function($a, $b) {$a * $b},
            \"/\" : function($a, $b) {$a div $b}}
         return $calc(\"*\")(2,3)  
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-028'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         string(function($a, $b) {$a + $b})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0014") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-029'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         deep-equal(function($a, $b) {$a + $b}, function($a, $b) {$a - $b})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0015") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-030'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         data(function($a, $b) {$a + $b})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-031'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $x := function($a, $b) {$a + $b}, 
             $y := function($a, $b) {$a - $b},
             $c := function($x, $y) {$x = $y}
         return $c($x, $y)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-032'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         function($a, $b) {$a + $b}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"item()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(item()*, item()*) as item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(xs:integer, xs:integer) as item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case (   case xqerl_test:assert_type(Res,"function(item()*, item()*) as xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end,
   case (   case xqerl_test:assert_type(Res,"function(item()*, item()*, item()*) as item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-033'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         function($a as xs:integer, $b as xs:integer) as xs:integer {$a + $b}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"item()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(xs:integer, xs:integer) as item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(xs:long, xs:long) as xs:integer+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case (   case xqerl_test:assert_type(Res,"function(item()*, item()*) as xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end,
   case (   case xqerl_test:assert_type(Res,"function(xs:integer, xs:decimal) as xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-034'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $p as xs:integer external;
         declare variable $f := function($a) {$a + $p};
         $f(12)
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"p","","7"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"19") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-035'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $p as xs:integer external;
         declare function local:negate($x) {-$x};
         declare variable $f := let $x := $p return function($a) {local:negate($a + $x + $p)};
         $f(12)
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"p","","7"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-035.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-26") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'inline-fn-036'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($x as xs:double) {1 to $x}
         return $f(3)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "inline-fn-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
