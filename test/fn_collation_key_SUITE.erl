-module('fn_collation_key_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['collation-key-001'/1]).
-export(['collation-key-002'/1]).
-export(['collation-key-003'/1]).
-export(['collation-key-004'/1]).
-export(['collation-key-005'/1]).
-export(['collation-key-006'/1]).
-export(['collation-key-007'/1]).
-export(['collation-key-008'/1]).
-export(['collation-key-009u'/1]).
-export(['collation-key-009l'/1]).
-export(['collation-key-010'/1]).
-export(['collation-key-011'/1]).
-export(['collation-key-012'/1]).
-export(['collation-key-013'/1]).
-export(['collation-key-014'/1]).
-export(['collation-key-015'/1]).
-export(['collation-key-101'/1]).
-export(['collation-key-102'/1]).
-export(['collation-key-103'/1]).
-export(['collation-key-104'/1]).
-export(['collation-key-105'/1]).
-export(['collation-key-201'/1]).
-export(['collation-key-202'/1]).
-export(['collation-key-203'/1]).
-export(['collation-key-204'/1]).
-export(['collation-key-205'/1]).
-export(['collation-key-206'/1]).
-export(['collation-key-901'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'collation-key-001', 
'collation-key-002', 
'collation-key-003', 
'collation-key-004', 
'collation-key-005', 
'collation-key-006', 
'collation-key-007', 
'collation-key-008', 
'collation-key-009u', 
'collation-key-009l', 
'collation-key-010', 
'collation-key-011', 
'collation-key-012', 
'collation-key-013', 
'collation-key-014', 
'collation-key-015', 
'collation-key-101', 
'collation-key-102', 
'collation-key-103', 
'collation-key-104', 
'collation-key-105', 
'collation-key-201', 
'collation-key-202', 
'collation-key-203', 
'collation-key-204', 
'collation-key-205', 
'collation-key-206', 
'collation-key-901'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/staff.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('auction',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
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
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('math',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array-and-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('html5',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('primary',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'collation-key-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"abc\") eq collation-key(\"123\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"abc\") eq collation-key(\"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(collation-key(\"abc\") eq collation-key(\"ABC\")) eq (compare(\"abc\", \"ABC\", default-collation()) eq 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(collation-key(\"abc\") lt collation-key(\"ABC\")) eq (compare(\"abc\", \"ABC\", default-collation()) lt 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"abc\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\") 
               eq collation-key(\"abc\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"http://www.w3.org/\") eq collation-key(xs:anyURI(\"http://www.w3.org/\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"abc\") 
               eq collation-key(\"abc\", default-collation())
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $C := \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\"
         return collation-key(\"abc\", $C) eq collation-key(\"ABC\", $C)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-009u'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"advanced-uca-fallback"}. 
'collation-key-009l'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $C := \"http://www.w3.org/2013/collation/UCA?lang=en;caseFirst=lower\"
         return collation-key(\"abc\", $C) lt collation-key(\"ABC\", $C) 
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-009l.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $C := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\"
         return collation-key(\"abc\", $C) eq collation-key(\"ABC\", $C)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $C := \"http://www.w3.org/2013/collation/UCA?lang=en;caseFirst=upper\"
         return collation-key(\"abc\", $C)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $C := \"http://www.w3.org/2013/collation/UCA?lang=en;caseFirst=upper\"
         return collation-key(\"abc\", $C)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $C := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\"
         return collation-key(\"abc\", $C)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(codepoints-to-string((37, 65500, 37))) lt collation-key(codepoints-to-string((37, 100000, 37))) ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\" return
        collation-key(\"abc\", $c) eq collation-key(\"123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('html5',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\" return
        collation-key(\"abc\", $c) eq collation-key(\"abc\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('html5',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\" return
        collation-key(\"abc123\", $c) eq collation-key(\"ABC123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('html5',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\" return
        collation-key(\"abc123\", $c) eq collation-key(\"ABC 123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('html5',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $C := \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\" return
        map:merge((map{collation-key(\"A\", $C):1}, map{collation-key(\"a\", $C):2}), map{ \"duplicates\": \"use-last\"})?(collation-key(\"A\", $C))
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('html5',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-105.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-201'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2013/collation/UCA?strength=primary\" return
        collation-key(\"abc\", $c) eq collation-key(\"123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-201.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-202'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2013/collation/UCA?strength=primary\" return
        collation-key(\"abc\", $c) eq collation-key(\"abc\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-202.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-203'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2013/collation/UCA?strength=primary\" return
        collation-key(\"abc123\", $c) eq collation-key(\"ABC123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-203.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-204'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2013/collation/UCA?strength=primary\" return
        collation-key(\"abc123\", $c) eq collation-key(\"ABC 123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-204.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-205'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $c := \"http://www.w3.org/2013/collation/UCA?strength=primary\" return
        collation-key(\"abc123\", $c) eq collation-key(\"áBC123\", $c)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-205.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-206'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $C := \"http://www.w3.org/2013/collation/UCA?strength=primary\" return
        map:merge((map{collation-key(\"A\", $C):1}, map{collation-key(\"a\", $C):2}), map{ \"duplicates\":\"use-last\"} )?(collation-key(\"A\", $C))
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-206.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'collation-key-901'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "collation-key(\"abc\") eq collation-key(123)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "collation-key-901.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.