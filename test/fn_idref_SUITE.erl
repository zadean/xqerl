-module('fn_idref_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-idref-1'/1]).
-export(['fn-idref-2'/1]).
-export(['fn-idref-3'/1]).
-export(['fn-idref-4'/1]).
-export(['fn-idref-5'/1]).
-export(['fn-idref-6'/1]).
-export(['fn-idref-7'/1]).
-export(['fn-idref-8'/1]).
-export(['fn-idref-9'/1]).
-export(['fn-idref-10'/1]).
-export(['fn-idref-11'/1]).
-export(['fn-idref-12'/1]).
-export(['fn-idref-13'/1]).
-export(['fn-idref-14'/1]).
-export(['fn-idref-15'/1]).
-export(['fn-idref-16'/1]).
-export(['fn-idref-17'/1]).
-export(['fn-idref-18'/1]).
-export(['fn-idref-19'/1]).
-export(['fn-idref-20'/1]).
-export(['fn-idref-21'/1]).
-export(['fn-idref-23'/1]).
-export(['fn-idref-30'/1]).
-export(['fn-idref-31'/1]).
-export(['fn-idref-32'/1]).
-export(['fn-idref-33'/1]).
-export(['fn-idref-34'/1]).
-export(['fn-idref-dtd-5'/1]).
-export(['fn-idref-dtd-6'/1]).
-export(['fn-idref-dtd-7'/1]).
-export(['fn-idref-dtd-8'/1]).
-export(['fn-idref-dtd-9'/1]).
-export(['fn-idref-dtd-10'/1]).
-export(['fn-idref-dtd-11'/1]).
-export(['fn-idref-dtd-12'/1]).
-export(['fn-idref-dtd-13'/1]).
-export(['fn-idref-dtd-14'/1]).
-export(['fn-idref-dtd-15'/1]).
-export(['fn-idref-dtd-16'/1]).
-export(['fn-idref-dtd-17'/1]).
-export(['fn-idref-dtd-18'/1]).
-export(['fn-idref-dtd-19'/1]).
-export(['fn-idref-dtd-20'/1]).
-export(['fn-idref-dtd-21'/1]).
-export(['fn-idref-22'/1]).
-export(['fn-idref-dtd-23'/1]).
-export(['fn-idref-dtd-24'/1]).
-export(['fn-idref-dtd-25'/1]).
-export(['K2-SeqIDREFFunc-1'/1]).
-export(['K2-SeqIDREFFunc-2'/1]).
-export(['K2-SeqIDREFFunc-3'/1]).
-export(['cbcl-idref-001'/1]).
-export(['cbcl-idref-002'/1]).
-export(['cbcl-idref-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3-test-suite/fn/id/copy.xq") catch _:_ -> ok end,Config.
all() -> [
   'fn-idref-1',
   'fn-idref-2',
   'fn-idref-3',
   'fn-idref-4',
   'fn-idref-5',
   'fn-idref-6',
   'fn-idref-7',
   'fn-idref-8',
   'fn-idref-9',
   'fn-idref-10',
   'fn-idref-11',
   'fn-idref-12',
   'fn-idref-13',
   'fn-idref-14',
   'fn-idref-15',
   'fn-idref-16',
   'fn-idref-17',
   'fn-idref-18',
   'fn-idref-19',
   'fn-idref-20',
   'fn-idref-21',
   'fn-idref-23',
   'fn-idref-30',
   'fn-idref-31',
   'fn-idref-32',
   'fn-idref-33',
   'fn-idref-34',
   'fn-idref-dtd-5',
   'fn-idref-dtd-6',
   'fn-idref-dtd-7',
   'fn-idref-dtd-8',
   'fn-idref-dtd-9',
   'fn-idref-dtd-10',
   'fn-idref-dtd-11',
   'fn-idref-dtd-12',
   'fn-idref-dtd-13',
   'fn-idref-dtd-14',
   'fn-idref-dtd-15',
   'fn-idref-dtd-16',
   'fn-idref-dtd-17',
   'fn-idref-dtd-18',
   'fn-idref-dtd-19',
   'fn-idref-dtd-20',
   'fn-idref-dtd-21',
   'fn-idref-22',
   'fn-idref-dtd-23',
   'fn-idref-dtd-24',
   'fn-idref-dtd-25',
   'K2-SeqIDREFFunc-1',
   'K2-SeqIDREFFunc-2',
   'K2-SeqIDREFFunc-3',
   'cbcl-idref-001',
   'cbcl-idref-002',
   'cbcl-idref-003'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('id-idref-dtd') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/id/iddtd.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('id-idref') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/id/id.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/id/id.xsd","http://www.w3.org/XQueryTest/ididrefs"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('id-idref3') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/id/id2.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/id/id.xsd","http://www.w3.org/XQueryTest/ididrefs"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('functx_book') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/app/FunctxFn/functx_book.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-idref-1'(_Config) ->
   Qry = "fn:idref(\"argument 1\", / ,\"Argument 3\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-2'(_Config) ->
   Qry = "(1 to 10)[fn:idref(\"argument1\")]",
   Qry1 = Qry,
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
'fn-idref-3'(_Config) ->
   Qry = "fn:idref(\"argument1\", \"A\")",
   Qry1 = Qry,
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
'fn-idref-4'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        let $var := copy:copy(/*) return fn:idref(\"argument1\", $var)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-5'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-6'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-7'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-8'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-9'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-10'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-11'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-12'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-13'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-14'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-15'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-16'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-17'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-18'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-19'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-20'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-21'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-23'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-30'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-31'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-32'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-33'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-34'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-dtd-5'(_Config) ->
   Qry = "fn:idref(\"id1\",/IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-6'(_Config) ->
   Qry = "fn:idref(\"nomatchingid\", /IDS[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-7'(_Config) ->
   Qry = "fn:idref(\"id4\", /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-8'(_Config) ->
   Qry = "<results>{fn:idref((\"id1\", \"id2\"), /IDS[1])}</results>",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-9'(_Config) ->
   Qry = "fn:idref((\"id1\", \"nomatching\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-10'(_Config) ->
   Qry = "fn:count(fn:idref(\"nomatching1 nomatching2\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-11'(_Config) ->
   Qry = "fn:count(fn:idref(\"\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-12'(_Config) ->
   Qry = "fn:node-name(fn:idref(\"id2\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "anIdRef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-13'(_Config) ->
   Qry = "(fn:idref(\"id1\", /IDS[1])) is (fn:idref(\"id1\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-14'(_Config) ->
   Qry = "(fn:idref(\"id1\", /IDS[1])) is (fn:idref(\"id2\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-15'(_Config) ->
   Qry = "count(fn:idref((\"id1\",\"id1\"), /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-16'(_Config) ->
   Qry = "count(fn:idref((\"id1\",\"ID1\"), /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-17'(_Config) ->
   Qry = "fn:idref(fn:lower-case(\"ID1\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-18'(_Config) ->
   Qry = "fn:idref(fn:upper-case(\"id5\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-19'(_Config) ->
   Qry = "fn:idref(fn:concat(\"i\",\"d1\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-20'(_Config) ->
   Qry = "fn:idref(xs:string(\"id1\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-21'(_Config) ->
   Qry = "fn:idref(fn:string-join((\"id\",\"1\"),\"\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-22'(_Config) ->
   Qry = "fn:idref(\"argument1\",.)",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-23'(_Config) ->
   Qry = "declare ordering ordered;  
        <results>{fn:idref(\"id4\", /IDS[1])}</results>",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results anIdRef=\"id4\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-24'(_Config) ->
   Qry = "<results>{fn:idref(\"language\", /)}</results>",
   {Env,Opts} = xqerl_test:handle_environment(environment('functx_book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results refs='context language'/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-25'(_Config) ->
   Qry = "fn:idref(\"id1\")/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqIDREFFunc-1'(_Config) ->
   Qry = "idref((), ())",
   Qry1 = Qry,
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
'K2-SeqIDREFFunc-2'(_Config) ->
   Qry = "(1, 2, 3)[idref(\"ncname\", .)]",
   Qry1 = Qry,
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
'K2-SeqIDREFFunc-3'(_Config) ->
   Qry = "(1, 2, 3)[idref(\"ncname\")]",
   Qry1 = Qry,
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
'cbcl-idref-001'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( fn:idref( local:generate(0), $doc) )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-idref-002'(_Config) ->
   Qry = "
      	let $doc := document { <root /> } return fn:empty( fn:idref( (), $doc) )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'cbcl-idref-003'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( $doc/fn:idref( local:generate(0)) )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
