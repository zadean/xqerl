-module('prod_EmptyOrderDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['emptyorderdecl-1'/1]).
-export(['emptyorderdecl-2'/1]).
-export(['emptyorderdecl-3'/1]).
-export(['emptyorderdecl-4'/1]).
-export(['emptyorderdecl-5'/1]).
-export(['emptyorderdecl-6'/1]).
-export(['emptyorderdecl-7'/1]).
-export(['emptyorderdecl-8'/1]).
-export(['emptyorderdecl-9'/1]).
-export(['emptyorderdecl-10'/1]).
-export(['emptyorderdecl-11'/1]).
-export(['emptyorderdecl-12'/1]).
-export(['emptyorderdecl-13'/1]).
-export(['emptyorderdecl-14'/1]).
-export(['emptyorderdecl-15'/1]).
-export(['emptyorderdecl-16'/1]).
-export(['emptyorderdecl-17'/1]).
-export(['emptyorderdecl-18'/1]).
-export(['emptyorderdecl-19'/1]).
-export(['emptyorderdecl-20'/1]).
-export(['emptyorderdecl-21'/1]).
-export(['emptyorderdecl-22'/1]).
-export(['emptyorderdecl-23'/1]).
-export(['emptyorderdecl-24'/1]).
-export(['emptyorderdecl-25'/1]).
-export(['emptyorderdecl-26'/1]).
-export(['emptyorderdecl-27'/1]).
-export(['emptyorderdecl-28'/1]).
-export(['emptyorderdecl-29'/1]).
-export(['K-EmptyOrderProlog-1'/1]).
-export(['K-EmptyOrderProlog-2'/1]).
-export(['K-EmptyOrderProlog-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'emptyorderdecl-1',
   'emptyorderdecl-2',
   'emptyorderdecl-3',
   'emptyorderdecl-4',
   'emptyorderdecl-5',
   'emptyorderdecl-6',
   'emptyorderdecl-7',
   'emptyorderdecl-8',
   'emptyorderdecl-9',
   'emptyorderdecl-10',
   'emptyorderdecl-11',
   'emptyorderdecl-12',
   'emptyorderdecl-13',
   'emptyorderdecl-14',
   'emptyorderdecl-15',
   'emptyorderdecl-16',
   'emptyorderdecl-17',
   'emptyorderdecl-18',
   'emptyorderdecl-19',
   'emptyorderdecl-20',
   'emptyorderdecl-21',
   'emptyorderdecl-22',
   'emptyorderdecl-23',
   'emptyorderdecl-24',
   'emptyorderdecl-25',
   'emptyorderdecl-26',
   'emptyorderdecl-27',
   'emptyorderdecl-28',
   'emptyorderdecl-29',
   'K-EmptyOrderProlog-1',
   'K-EmptyOrderProlog-2',
   'K-EmptyOrderProlog-3'].
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
'emptyorderdecl-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least; declare default order empty greatest;  \"aaa\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0069") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a><a>4</a><a>7</a><a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a><a>4</a><a>7</a><a/><a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 4 7 NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 4 7 NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a><a>4</a><a/><a>7</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a><a>4</a><a/><a>7</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,7) return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 4 NaN 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,7) return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 4 NaN 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><a>7</a><a>4</a><a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><a/><a>7</a><a>4</a><a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN 7 4 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN 7 4 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><a>1</a><a>4</a><a>7</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><a/><a>1</a><a>4</a><a>7</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN 1 4 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN 1 4 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>7</a><a>4</a><a>1</a><a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>7</a><a>4</a><a>1</a><a/><a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 4 1 NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 4 1 NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending empty least return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><a>1</a><a>4</a><a>7</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty least return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN 1 3 4 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending empty greatest return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a><a>4</a><a>7</a><a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty greatest;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty greatest return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 3 4 7 NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by $i/text() ascending empty greatest return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a><a>4</a><a>7</a><a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty greatest return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 3 4 7 NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by $i/text() ascending empty least return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><a>1</a><a>4</a><a>7</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'emptyorderdecl-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default order empty least;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty least return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "emptyorderdecl-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN 1 3 4 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-EmptyOrderProlog-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare(::)default order empty(::)greatest; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-EmptyOrderProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-EmptyOrderProlog-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare(::)default order empty(::)least; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-EmptyOrderProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-EmptyOrderProlog-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare(::)default order empty(::)greatest; declare(::)default order empty(::)least; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-EmptyOrderProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0069") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
