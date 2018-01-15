-module('op_QName_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-qname-equal-1'/1]).
-export(['op-qname-equal-2'/1]).
-export(['op-qname-equal-3'/1]).
-export(['op-qname-equal-4'/1]).
-export(['op-qname-equal-5'/1]).
-export(['op-qname-equal-6'/1]).
-export(['op-qname-equal-7'/1]).
-export(['op-qname-equal-8'/1]).
-export(['op-qname-equal-9'/1]).
-export(['op-qname-equal-10'/1]).
-export(['op-qname-equal-11'/1]).
-export(['op-qname-equal-12'/1]).
-export(['op-qname-equal-13'/1]).
-export(['op-qname-equal-14'/1]).
-export(['op-qname-equal-15'/1]).
-export(['op-qname-equal-16'/1]).
-export(['op-qname-equal-17'/1]).
-export(['op-qname-equal-18'/1]).
-export(['op-qname-equal-19'/1]).
-export(['op-qname-equal-20'/1]).
-export(['op-qname-equal-21'/1]).
-export(['op-qname-equal-22'/1]).
-export(['op-qname-equal-23'/1]).
-export(['op-qname-equal-24'/1]).
-export(['value-comparison-1'/1]).
-export(['value-comparison-2'/1]).
-export(['K-QNameEQ-1'/1]).
-export(['K-QNameEQ-2'/1]).
-export(['K-QNameEQ-3'/1]).
-export(['K-QNameEQ-4'/1]).
-export(['K-QNameEQ-5'/1]).
-export(['K-QNameEQ-6'/1]).
-export(['K-QNameEQ-7'/1]).
-export(['K-QNameEQ-8'/1]).
-export(['K-QNameEQ-9'/1]).
-export(['K-QNameEQ-10'/1]).
-export(['cbcl-QName-equal-001'/1]).
-export(['cbcl-QName-equal-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-qname-equal-1',
   'op-qname-equal-2',
   'op-qname-equal-3',
   'op-qname-equal-4',
   'op-qname-equal-5',
   'op-qname-equal-6',
   'op-qname-equal-7',
   'op-qname-equal-8',
   'op-qname-equal-9',
   'op-qname-equal-10',
   'op-qname-equal-11',
   'op-qname-equal-12',
   'op-qname-equal-13',
   'op-qname-equal-14',
   'op-qname-equal-15',
   'op-qname-equal-16',
   'op-qname-equal-17',
   'op-qname-equal-18',
   'op-qname-equal-19',
   'op-qname-equal-20',
   'op-qname-equal-21',
   'op-qname-equal-22',
   'op-qname-equal-23',
   'op-qname-equal-24',
   'value-comparison-1',
   'value-comparison-2',
   'K-QNameEQ-1',
   'K-QNameEQ-2',
   'K-QNameEQ-3',
   'K-QNameEQ-4',
   'K-QNameEQ-5',
   'K-QNameEQ-6',
   'K-QNameEQ-7',
   'K-QNameEQ-8',
   'K-QNameEQ-9',
   'K-QNameEQ-10',
   'cbcl-QName-equal-001',
   'cbcl-QName-equal-002'].
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
'op-qname-equal-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") eq fn:QName(\"http://www.example.com/example\", \"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") ne fn:QName(\"http://www.example.com/example\", \"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example1\", \"person\") eq fn:QName(\"http://www.example.com/example2\", \"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example1\", \"person\") ne fn:QName(\"http://www.example.com/example2\", \"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"person1\") eq fn:QName(\"http://www.example.com/example\",\"person2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"person1\") ne fn:QName(\"http://www.example.com/example\",\"person2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") eq fn:QName(\"http://www.example.com/example\",\"px1:person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") ne fn:QName(\"http://www.example.com/example\",\"px1:person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") eq fn:QName(\"http://www.example.com/example\",\"px2:person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") ne fn:QName(\"http://www.example.com/example\",\"px2:person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person1\") eq fn:QName(\"http://www.example.com/example\",\"px2:person2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person1\") ne fn:QName(\"http://www.example.com/example\",\"px2:person2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example1\", \"px1:person1\") eq fn:QName(\"http://www.example.com/example2\",\"px2:person2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example1\", \"px1:person1\") ne fn:QName(\"http://www.example.com/example2\",\"px2:person2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"\", \"person\") eq fn:QName(\"http://www.example.com/example\",\"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"\", \"person\") ne fn:QName(\"http://www.example.com/example\",\"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") eq fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") ne fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"\", \"person\") eq fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:QName(\"\", \"person\") ne fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:QName(\"http://www.example.com/example\", \"px1:person1\") eq fn:QName(\"http://www.example.com/example\",\"px2:person2\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:QName(\"http://www.example.com/example\", \"px1:person1\") ne fn:QName(\"http://www.example.com/example\",\"px2:person2\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:QName(\"http://www.example.com/example\", \"px:person\") eq fn:QName(\"http://www.example.com/example\",\"px:person\")) and fn:true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-qname-equal-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:QName(\"http://www.example.com/example\", \"px:person\") ne fn:QName(\"http://www.example.com/example\",\"px:person\")) and fn:true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-qname-equal-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"example.org/\") eq xs:anyURI(\"example.org/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"example.org/\") ne xs:anyURI(\"example.org/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") eq QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") eq QName(\"example.com/\", \"pdifferent:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") ne QName(\"example.com/Nope\", \"p:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") ne QName(\"example.com/\", \"p:ncnameNope\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") lt 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") eq xs:anyURI(\"org\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") lt QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") le QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") gt QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QNameEQ-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "QName(\"example.com/\", \"p:ncname\") ge QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QNameEQ-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-QName-equal-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:QName-value($arg as xs:boolean) as xs:QName { if ($arg) then QName(\"example.com/\", \"p:ncname\") else QName(\"example.com/\", \"q:ncname\") };
        not(local:QName-value(true()) eq local:QName-value(false()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-QName-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-QName-equal-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:QName-value($arg as xs:boolean) as xs:QName { if ($arg) then QName(\"example.com/\", \"p:ncname\") else QName(\"example.com/\", \"q:ncname\") };
        not(local:QName-value(true()) ne local:QName-value(false()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-QName-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
