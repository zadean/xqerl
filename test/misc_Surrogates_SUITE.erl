-module('misc_Surrogates_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['surrogates01'/1]).
-export(['surrogates02'/1]).
-export(['surrogates03'/1]).
-export(['surrogates04'/1]).
-export(['surrogates05'/1]).
-export(['surrogates06'/1]).
-export(['surrogates07'/1]).
-export(['surrogates08'/1]).
-export(['surrogates09'/1]).
-export(['surrogates10'/1]).
-export(['surrogates11'/1]).
-export(['surrogates12'/1]).
-export(['surrogates13'/1]).
-export(['surrogates14'/1]).
-export(['surrogates15'/1]).
-export(['surrogates16'/1]).
-export(['surrogates01a'/1]).
-export(['surrogates02a'/1]).
-export(['surrogates03a'/1]).
-export(['surrogates04a'/1]).
-export(['surrogates05a'/1]).
-export(['surrogates06a'/1]).
-export(['surrogates07a'/1]).
-export(['surrogates08a'/1]).
-export(['surrogates09a'/1]).
-export(['surrogates10a'/1]).
-export(['surrogates11a'/1]).
-export(['surrogates12a'/1]).
-export(['surrogates13a'/1]).
-export(['surrogates14a'/1]).
-export(['surrogates15a'/1]).
-export(['surrogates16a'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "misc")

,[{base_dir, BaseDir}|Config].
all() -> [
   'surrogates01',
   'surrogates02',
   'surrogates03',
   'surrogates04',
   'surrogates05',
   'surrogates06',
   'surrogates07',
   'surrogates08',
   'surrogates09',
   'surrogates10',
   'surrogates11',
   'surrogates12',
   'surrogates13',
   'surrogates14',
   'surrogates15',
   'surrogates16',
   'surrogates01a',
   'surrogates02a',
   'surrogates03a',
   'surrogates04a',
   'surrogates05a',
   'surrogates06a',
   'surrogates07a',
   'surrogates08a',
   'surrogates09a',
   'surrogates10a',
   'surrogates11a',
   'surrogates12a',
   'surrogates13a',
   'surrogates14a',
   'surrogates15a',
   'surrogates16a'].
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
'surrogates01'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string-length(\"abc&#x1D156;def\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates01.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates02'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "substring(\"abc&#x1D156;def\", 5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates02.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates03'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "substring(\"abc&#x1D156;def\", 4)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates03.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "𝅖def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates04'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "translate(\"abc&#x1D156;def\", \"&#x1D156;\", \"#\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates04.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc#def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates05'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "translate(\"abc&#x1D156;def\", \"&#x1D156;de\", \"#DE\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates05.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc#DEf") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates06'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "translate(\"abc&#x1D156;def\", \"def\", \"&#x1D156;EF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates06.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖𝅖EF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates07'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string-to-codepoints(\"abc&#x1D156;def\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates07.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "97 98 99 119126 100 101 102") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates08'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "codepoints-to-string((97, 98, 99, 119126, 100, 101, 102))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates08.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates09'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "substring-before(\"abc&#x1D156;def\", \"&#x1D156;\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates09.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "substring-before(\"abc&#x1D156;def\", \"f\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖de") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "substring-after(\"abc&#x1D156;def\", \"&#x1D156;\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "matches(\"abc&#x1D157;def\", \"abc[&#x1D156;-&#x1D158;]def\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "matches(\"abc&#x1D157;def\", \"abc.def\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "replace(\"abc&#119130;def\", \"[&#119120;-&#119135;]\", \"&#119135;\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅘𝅥def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "replace(\"abc&#x1D157;def\", \"[^a-f]\", \"###\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc###def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string-to-codepoints(substring(\"&#x10FC00;A\", 2, 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates01a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates02a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates03a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates04a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates05a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates06a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates07a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates08a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "codepoints-to-string((97, 98, 99, 119126, 100, 101, 102))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "surrogates08a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc𝅖def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'surrogates09a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates10a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates11a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates12a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates13a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates14a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates15a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
'surrogates16a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20+"}.
