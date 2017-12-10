-module('prod_ValueComp_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K-ValCompTypeChecking-1'/1]).
-export(['K-ValCompTypeChecking-2'/1]).
-export(['K-ValCompTypeChecking-3'/1]).
-export(['K-ValCompTypeChecking-4'/1]).
-export(['K-ValCompTypeChecking-5'/1]).
-export(['K-ValCompTypeChecking-6'/1]).
-export(['K-ValCompTypeChecking-7'/1]).
-export(['K-ValCompTypeChecking-8'/1]).
-export(['K-ValCompTypeChecking-9'/1]).
-export(['K-ValCompTypeChecking-10'/1]).
-export(['K-ValCompTypeChecking-11'/1]).
-export(['K-ValCompTypeChecking-12'/1]).
-export(['K-ValCompTypeChecking-13'/1]).
-export(['K-ValCompTypeChecking-14'/1]).
-export(['K-ValCompTypeChecking-15'/1]).
-export(['K-ValCompTypeChecking-16'/1]).
-export(['K-ValCompTypeChecking-17'/1]).
-export(['K-ValCompTypeChecking-18'/1]).
-export(['K-ValCompTypeChecking-19'/1]).
-export(['K-ValCompTypeChecking-20'/1]).
-export(['K-ValCompTypeChecking-21'/1]).
-export(['K-ValCompTypeChecking-22'/1]).
-export(['K-ValCompTypeChecking-23'/1]).
-export(['K-ValCompTypeChecking-24'/1]).
-export(['K-ValCompTypeChecking-25'/1]).
-export(['K-ValCompTypeChecking-26'/1]).
-export(['K-ValCompTypeChecking-27'/1]).
-export(['K-ValCompTypeChecking-28'/1]).
-export(['K-ValCompTypeChecking-29'/1]).
-export(['K-ValCompTypeChecking-30'/1]).
-export(['K-ValCompTypeChecking-31'/1]).
-export(['K-ValCompTypeChecking-32'/1]).
-export(['K-ValCompTypeChecking-33'/1]).
-export(['K-ValCompTypeChecking-34'/1]).
-export(['K-ValCompTypeChecking-35'/1]).
-export(['K-ValCompTypeChecking-36'/1]).
-export(['K-ValCompTypeChecking-37'/1]).
-export(['K-ValCompTypeChecking-38'/1]).
-export(['K-ValCompTypeChecking-39'/1]).
-export(['K-ValCompTypeChecking-40'/1]).
-export(['K-ValCompTypeChecking-41'/1]).
-export(['K-ValCompTypeChecking-42'/1]).
-export(['value-comparison-3'/1]).
-export(['value-comparison-4'/1]).
-export(['value-comparison-5'/1]).
-export(['value-comparison-6'/1]).
-export(['value-comparison-7'/1]).
-export(['value-comparison-8'/1]).
-export(['value-comparison-9'/1]).
-export(['value-comparison-10'/1]).
-export(['value-comparison-11'/1]).
-export(['value-comparison-12'/1]).
-export(['value-comparison-13'/1]).
-export(['value-comparison-14'/1]).
-export(['value-comp-eq-string-1'/1]).
-export(['value-comp-eq-string-2'/1]).
-export(['value-comp-eq-string-3'/1]).
-export(['value-comp-eq-string-4'/1]).
-export(['value-comp-eq-string-5'/1]).
-export(['value-comp-eq-string-6'/1]).
-export(['value-comp-eq-string-7'/1]).
-export(['value-comp-eq-string-8'/1]).
-export(['value-comp-eq-string-9'/1]).
-export(['value-comp-eq-string-10'/1]).
-export(['value-comp-eq-string-11'/1]).
-export(['value-comp-eq-string-12'/1]).
-export(['value-comp-eq-string-13'/1]).
-export(['value-comp-eq-string-14'/1]).
-export(['value-comp-ne-string-1'/1]).
-export(['value-comp-ne-string-2'/1]).
-export(['value-comp-ne-string-3'/1]).
-export(['value-comp-ne-string-4'/1]).
-export(['value-comp-ne-string-5'/1]).
-export(['value-comp-ne-string-6'/1]).
-export(['value-comp-ne-string-7'/1]).
-export(['value-comp-ne-string-8'/1]).
-export(['value-comp-ne-string-9'/1]).
-export(['value-comp-ne-string-10'/1]).
-export(['value-comp-ne-string-11'/1]).
-export(['value-comp-ne-string-12'/1]).
-export(['value-comp-ne-string-13'/1]).
-export(['value-comp-ne-string-14'/1]).
-export(['value-comp-eq-int-1'/1]).
-export(['value-comp-eq-int-2'/1]).
-export(['value-comp-eq-int-3'/1]).
-export(['value-comp-eq-int-4'/1]).
-export(['value-comp-eq-int-5'/1]).
-export(['value-comp-eq-int-6'/1]).
-export(['value-comp-eq-int-7'/1]).
-export(['value-comp-eq-int-8'/1]).
-export(['value-comp-eq-double-1'/1]).
-export(['value-comp-eq-double-2'/1]).
-export(['value-comp-eq-double-3'/1]).
-export(['value-comp-eq-double-4'/1]).
-export(['value-comp-eq-double-5'/1]).
-export(['value-comp-eq-double-6'/1]).
-export(['value-comp-eq-double-7'/1]).
-export(['value-comp-eq-double-8'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'K-ValCompTypeChecking-1',
   'K-ValCompTypeChecking-2',
   'K-ValCompTypeChecking-3',
   'K-ValCompTypeChecking-4',
   'K-ValCompTypeChecking-5',
   'K-ValCompTypeChecking-6',
   'K-ValCompTypeChecking-7',
   'K-ValCompTypeChecking-8',
   'K-ValCompTypeChecking-9',
   'K-ValCompTypeChecking-10',
   'K-ValCompTypeChecking-11',
   'K-ValCompTypeChecking-12',
   'K-ValCompTypeChecking-13',
   'K-ValCompTypeChecking-14',
   'K-ValCompTypeChecking-15',
   'K-ValCompTypeChecking-16',
   'K-ValCompTypeChecking-17',
   'K-ValCompTypeChecking-18',
   'K-ValCompTypeChecking-19',
   'K-ValCompTypeChecking-20',
   'K-ValCompTypeChecking-21',
   'K-ValCompTypeChecking-22',
   'K-ValCompTypeChecking-23',
   'K-ValCompTypeChecking-24',
   'K-ValCompTypeChecking-25',
   'K-ValCompTypeChecking-26',
   'K-ValCompTypeChecking-27',
   'K-ValCompTypeChecking-28',
   'K-ValCompTypeChecking-29',
   'K-ValCompTypeChecking-30',
   'K-ValCompTypeChecking-31',
   'K-ValCompTypeChecking-32',
   'K-ValCompTypeChecking-33',
   'K-ValCompTypeChecking-34',
   'K-ValCompTypeChecking-35',
   'K-ValCompTypeChecking-36',
   'K-ValCompTypeChecking-37',
   'K-ValCompTypeChecking-38',
   'K-ValCompTypeChecking-39',
   'K-ValCompTypeChecking-40',
   'K-ValCompTypeChecking-41',
   'K-ValCompTypeChecking-42',
   'value-comparison-3',
   'value-comparison-4',
   'value-comparison-5',
   'value-comparison-6',
   'value-comparison-7',
   'value-comparison-8',
   'value-comparison-9',
   'value-comparison-10',
   'value-comparison-11',
   'value-comparison-12',
   'value-comparison-13',
   'value-comparison-14',
   'value-comp-eq-string-1',
   'value-comp-eq-string-2',
   'value-comp-eq-string-3',
   'value-comp-eq-string-4',
   'value-comp-eq-string-5',
   'value-comp-eq-string-6',
   'value-comp-eq-string-7',
   'value-comp-eq-string-8',
   'value-comp-eq-string-9',
   'value-comp-eq-string-10',
   'value-comp-eq-string-11',
   'value-comp-eq-string-12',
   'value-comp-eq-string-13',
   'value-comp-eq-string-14',
   'value-comp-ne-string-1',
   'value-comp-ne-string-2',
   'value-comp-ne-string-3',
   'value-comp-ne-string-4',
   'value-comp-ne-string-5',
   'value-comp-ne-string-6',
   'value-comp-ne-string-7',
   'value-comp-ne-string-8',
   'value-comp-ne-string-9',
   'value-comp-ne-string-10',
   'value-comp-ne-string-11',
   'value-comp-ne-string-12',
   'value-comp-ne-string-13',
   'value-comp-ne-string-14',
   'value-comp-eq-int-1',
   'value-comp-eq-int-2',
   'value-comp-eq-int-3',
   'value-comp-eq-int-4',
   'value-comp-eq-int-5',
   'value-comp-eq-int-6',
   'value-comp-eq-int-7',
   'value-comp-eq-int-8',
   'value-comp-eq-double-1',
   'value-comp-eq-double-2',
   'value-comp-eq-double-3',
   'value-comp-eq-double-4',
   'value-comp-eq-double-5',
   'value-comp-eq-double-6',
   'value-comp-eq-double-7',
   'value-comp-eq-double-8'].
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
];
environment('user-defined-types',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "../docs/userdefined.xsd"),"http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'K-ValCompTypeChecking-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 eq (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) ne 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 ne (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) lt 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 lt (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) le 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 le (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) gt 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 gt (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) ge 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 ge (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(() eq 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-13.xq"), Qry1),
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
'K-ValCompTypeChecking-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(1 eq ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-14.xq"), Qry1),
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
'K-ValCompTypeChecking-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(() eq ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-15.xq"), Qry1),
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
'K-ValCompTypeChecking-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"1\") eq xs:integer(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:integer(1) eq xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"0\") ne xs:double(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:double(1) ne xs:untypedAtomic(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"0\") lt xs:float(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:float(0) lt xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"0\") gt xs:decimal(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:decimal(0) gt xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"4\") eq 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "4 eq xs:untypedAtomic(\"4\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"3\") eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:double(2) lt xs:untypedAtomic(\"3\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:float(4) gt xs:untypedAtomic(\"3\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"3\") ne xs:decimal(3.1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"a string\") eq \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"a string\" eq xs:untypedAtomic(\"a string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((0, current-time())) ge 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((0, current-time())) ne 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(count((1, 2, current-time())) eq 0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "error() eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "error() eq error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 eq error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 eq (error(), 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 eq (3, error())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'K-ValCompTypeChecking-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(error(), 3) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ValCompTypeChecking-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(3, error()) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'K-ValCompTypeChecking-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((1, 2)) eq 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ValCompTypeChecking-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'value-comparison-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'value-comparison-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3] le [3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3,4] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[] eq ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "map{} eq ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOTY0013") of 
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
'value-comparison-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "map{1:1} eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comparison-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comparison-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'value-comparison-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'value-comparison-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'value-comp-eq-string-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" eq concat(\"a\", \"bc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" eq /works/@id",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" eq string(/works/@id)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" eq xs:string(/works/@id)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "works/@id eq \"abc\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(/works/@id) eq \"abc\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:string(/works/@id) eq \"abc\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" eq concat(\"a\", \"bc\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" eq /works/@id)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" eq string(/works/@id))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" eq xs:string(/works/@id))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(works/@id eq \"abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(string(/works/@id) eq \"abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-string-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:string(/works/@id) eq \"abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-string-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" ne concat(\"a\", \"bc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" ne /works/@id",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" ne string(/works/@id)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"abc\" ne xs:string(/works/@id)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "works/@id ne \"abc\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(/works/@id) ne \"abc\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:string(/works/@id) ne \"abc\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" ne concat(\"a\", \"bc\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" ne /works/@id)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" ne string(/works/@id))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"abc\" ne xs:string(/works/@id))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(works/@id ne \"abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(string(/works/@id) ne \"abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-ne-string-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:string(/works/@id) ne \"abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-ne-string-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "13 eq 12+1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "13 eq /works/@id",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40 eq xs:integer(/works/employee[1]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40 eq xs:integer(/works/employee[830]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:integer(/works/employee[830]/hours) eq 40",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40 eq number(/works/employee[1]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40 eq xs:double(/works/employee[1]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-int-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40 eq xs:double(/works/employee[830]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-int-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "13e0 eq 12e0+1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "13e0 eq /works/@id",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40e0 eq xs:double(/works/employee[1]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40e0 eq xs:integer(/works/employee[830]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:integer(/works/employee[830]/hours) eq 40e0",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40e0 eq number(/works/employee[1]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40e0 eq xs:double(/works/employee[1]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'value-comp-eq-double-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "40e0 eq xs:double(/works/employee[830]/hours)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "value-comp-eq-double-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
