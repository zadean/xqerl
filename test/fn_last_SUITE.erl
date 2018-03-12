-module('fn_last_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['last-1'/1]).
-export(['last-2'/1]).
-export(['last-3'/1]).
-export(['last-4'/1]).
-export(['last-5'/1]).
-export(['last-6'/1]).
-export(['last-7'/1]).
-export(['last-8'/1]).
-export(['last-9'/1]).
-export(['last-10'/1]).
-export(['last-11'/1]).
-export(['last-12'/1]).
-export(['last-13'/1]).
-export(['last-14'/1]).
-export(['last-15'/1]).
-export(['last-16'/1]).
-export(['last-17'/1]).
-export(['last-18'/1]).
-export(['last-19'/1]).
-export(['last-20'/1]).
-export(['last-21'/1]).
-export(['last-22'/1]).
-export(['last-23'/1]).
-export(['last-24'/1]).
-export(['last-25'/1]).
-export(['K-ContextLastFunc-1'/1]).
-export(['K-ContextLastFunc-2'/1]).
-export(['K-ContextLastFunc-3'/1]).
-export(['K-ContextLastFunc-4'/1]).
-export(['K-ContextLastFunc-5'/1]).
-export(['K-ContextLastFunc-6'/1]).
-export(['K-ContextLastFunc-7'/1]).
-export(['K-ContextLastFunc-8'/1]).
-export(['K-ContextLastFunc-9'/1]).
-export(['K-ContextLastFunc-10'/1]).
-export(['K-ContextLastFunc-11'/1]).
-export(['K-ContextLastFunc-12'/1]).
-export(['K-ContextLastFunc-13'/1]).
-export(['K-ContextLastFunc-14'/1]).
-export(['K-ContextLastFunc-15'/1]).
-export(['K-ContextLastFunc-16'/1]).
-export(['K-ContextLastFunc-17'/1]).
-export(['K-ContextLastFunc-18'/1]).
-export(['K-ContextLastFunc-19'/1]).
-export(['K-ContextLastFunc-20'/1]).
-export(['K-ContextLastFunc-21'/1]).
-export(['K-ContextLastFunc-22'/1]).
-export(['K-ContextLastFunc-23'/1]).
-export(['K-ContextLastFunc-24'/1]).
-export(['K-ContextLastFunc-25'/1]).
-export(['K-ContextLastFunc-26'/1]).
-export(['K-ContextLastFunc-27'/1]).
-export(['K-ContextLastFunc-28'/1]).
-export(['K-ContextLastFunc-29'/1]).
-export(['cbcl-last-in-sequence-001'/1]).
-export(['cbcl-last-in-sequence-002'/1]).
-export(['cbcl-last-in-sequence-003'/1]).
-export(['cbcl-last-in-sequence-004'/1]).
-export(['cbcl-last-in-sequence-005'/1]).
-export(['cbcl-last-in-sequence-006'/1]).
-export(['cbcl-last-in-sequence-007'/1]).
-export(['cbcl-last-in-sequence-008'/1]).
-export(['cbcl-last-in-sequence-009'/1]).
-export(['cbcl-last-in-sequence-010'/1]).
-export(['cbcl-last-in-sequence-011'/1]).
-export(['cbcl-last-in-sequence-012'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'last-1',
   'last-2',
   'last-3',
   'last-4',
   'last-5',
   'last-6',
   'last-7',
   'last-8',
   'last-9',
   'last-10',
   'last-11',
   'last-12',
   'last-13',
   'last-14',
   'last-15',
   'last-16',
   'last-17',
   'last-18',
   'last-19',
   'last-20',
   'last-21',
   'last-22',
   'last-23',
   'last-24',
   'last-25',
   'K-ContextLastFunc-1',
   'K-ContextLastFunc-2',
   'K-ContextLastFunc-3',
   'K-ContextLastFunc-4',
   'K-ContextLastFunc-5',
   'K-ContextLastFunc-6',
   'K-ContextLastFunc-7',
   'K-ContextLastFunc-8',
   'K-ContextLastFunc-9',
   'K-ContextLastFunc-10',
   'K-ContextLastFunc-11',
   'K-ContextLastFunc-12',
   'K-ContextLastFunc-13',
   'K-ContextLastFunc-14',
   'K-ContextLastFunc-15',
   'K-ContextLastFunc-16',
   'K-ContextLastFunc-17',
   'K-ContextLastFunc-18',
   'K-ContextLastFunc-19',
   'K-ContextLastFunc-20',
   'K-ContextLastFunc-21',
   'K-ContextLastFunc-22',
   'K-ContextLastFunc-23',
   'K-ContextLastFunc-24',
   'K-ContextLastFunc-25',
   'K-ContextLastFunc-26',
   'K-ContextLastFunc-27',
   'K-ContextLastFunc-28',
   'K-ContextLastFunc-29',
   'cbcl-last-in-sequence-001',
   'cbcl-last-in-sequence-002',
   'cbcl-last-in-sequence-003',
   'cbcl-last-in-sequence-004',
   'cbcl-last-in-sequence-005',
   'cbcl-last-in-sequence-006',
   'cbcl-last-in-sequence-007',
   'cbcl-last-in-sequence-008',
   'cbcl-last-in-sequence-009',
   'cbcl-last-in-sequence-010',
   'cbcl-last-in-sequence-011',
   'cbcl-last-in-sequence-012'].
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
'last-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h//employee[last()]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 13") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "last()",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]) return $h/overtime[last() = 1]/*/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = last()]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 13") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[last() = position()]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 13") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[last()] << $h/employee[last()]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[last()] is $h/employee[last()]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]) return $h/overtime[last() = last()]/*/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h//employee[@name=\"Jane Doe 13\"][last() = 1]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 13") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h//employee[last() = 13][@name = \"Jane Doe 13\"]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 13") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]/overtime) return $h/day[not(position() = 1)]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Tuesday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]/overtime) return $h/*[position() = position()]/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = (2 + 2)]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "John Doe 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = (5 - 2)]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = (3 * 2)]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "John Doe 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = (6 div 2)]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = (6 idiv 2)]/string(@name)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]) return ($h/overtime[position() and fn:true()]/*/string())",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]) return $h/overtime[position() and fn:false()]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
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
'last-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]) return $h/overtime[position() or fn:true()]/*/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[12]) return $h/overtime[position() or fn:false()]/*/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = 12]/overtime/*/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/employee[position() = 5 to last()]/@name/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Jane Doe 5\", \"John Doe 6\", \"Jane Doe 7\", \"John Doe 8\", 
            \"Jane Doe 9\", \"John Doe 10\", \"Jane Doe 11\", \"John Doe 12\", \"Jane Doe 13\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "last()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'last-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/works/employee/*/last()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "last-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "44") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"every $i in $result satisfies $i = 44") of 
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
'K-ContextLastFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "last(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3)[if(1) then 1 else last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3)[count((last(), last())) eq 2], (1, 2, 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3)[last() eq last()], (1, 2, 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, current-time())[last() - 1] treat as xs:integer eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time())[last() + 1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() = 0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-7.xq"), Qry1),
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
'K-ContextLastFunc-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [0 = last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-8.xq"), Qry1),
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
'K-ContextLastFunc-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() eq 0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-9.xq"), Qry1),
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
'K-ContextLastFunc-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [0 eq last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-10.xq"), Qry1),
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
'K-ContextLastFunc-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() != 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() ne 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [0 != last()], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [0 ne last()], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() lt 1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-15.xq"), Qry1),
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
'K-ContextLastFunc-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() < 1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-16.xq"), Qry1),
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
'K-ContextLastFunc-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() le 0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-17.xq"), Qry1),
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
'K-ContextLastFunc-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() <= 0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-18.xq"), Qry1),
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
'K-ContextLastFunc-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() > 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() > 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() gt 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() >= 1], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() ge 1], (1, 2, 3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last() - 2] treat as xs:integer eq 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last() - 1] treat as xs:integer eq 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last()] treat as xs:integer eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last() - 0] treat as xs:integer eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 6)[last()] eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ContextLastFunc-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(-20 to -5)[last() - 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ContextLastFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else () }; 
      	( local:generate(0), 1, local:generate(0) )[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then (1, 2, 3) else $arg }; 
      	( local:generate(()), for $x in local:generate(0) return $x + 2 )[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 0 else () }; 
      	( local:generate(()), for $x in local:generate(0) return $x + 2 )[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then ( 1, 2, 3 ) else ( $arg ) }; 
      	( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 1 else $arg }; 
      	( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else ('d' ) }; 
      	( if (local:generate(1) = 'd') then () else 1, for $x in local:generate(0) return fn:lower-case($x))[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer? { $arg }; 
      	( if (local:generate(0) = 0) then () else 1, for $x in local:generate(0) return -$x)[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "( (<a><b>cheese</b></a>)/b )[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b>cheese</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; 
      	( local:generate(()), for $x in local:generate(0) return 3)[last()]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; 
      	boolean(local:generate(0)[last()])
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; boolean(local:generate(1)[last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-last-in-sequence-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:boolean) as xs:string+ { if ($arg) then ('a', 'b', 'c') else ('A', 'B', 'C') }; ( for $x in local:generate(true()) return 3)[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-last-in-sequence-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
