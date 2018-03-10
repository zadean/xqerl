-module('prod_Comment_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['XQueryComment001'/1]).
-export(['XQueryComment002'/1]).
-export(['XQueryComment003'/1]).
-export(['XQueryComment004'/1]).
-export(['XQueryComment005'/1]).
-export(['XQueryComment006'/1]).
-export(['XQueryComment007'/1]).
-export(['XQueryComment008'/1]).
-export(['XQueryComment009'/1]).
-export(['XQueryComment010'/1]).
-export(['XQueryComment011'/1]).
-export(['XQueryComment012'/1]).
-export(['XQueryComment013'/1]).
-export(['XQueryComment014'/1]).
-export(['XQueryComment015'/1]).
-export(['XQueryComment016'/1]).
-export(['XQueryComment017'/1]).
-export(['XQueryComment018'/1]).
-export(['XQueryComment019'/1]).
-export(['XQueryComment020'/1]).
-export(['K-XQueryComment-1'/1]).
-export(['K-XQueryComment-2'/1]).
-export(['K-XQueryComment-3'/1]).
-export(['K-XQueryComment-4'/1]).
-export(['K-XQueryComment-5'/1]).
-export(['K-XQueryComment-6'/1]).
-export(['K-XQueryComment-7'/1]).
-export(['K-XQueryComment-8'/1]).
-export(['K-XQueryComment-9'/1]).
-export(['K-XQueryComment-10'/1]).
-export(['K-XQueryComment-11'/1]).
-export(['K-XQueryComment-12'/1]).
-export(['K-XQueryComment-13'/1]).
-export(['K-XQueryComment-14'/1]).
-export(['K-XQueryComment-15'/1]).
-export(['K-XQueryComment-16'/1]).
-export(['K-XQueryComment-17'/1]).
-export(['K-XQueryComment-18'/1]).
-export(['K-XQueryComment-19'/1]).
-export(['K-XQueryComment-20'/1]).
-export(['K2-XQueryComment-1'/1]).
-export(['K2-XQueryComment-2'/1]).
-export(['K2-XQueryComment-3'/1]).
-export(['K2-XQueryComment-4'/1]).
-export(['K2-XQueryComment-5'/1]).
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
   'XQueryComment001',
   'XQueryComment002',
   'XQueryComment003',
   'XQueryComment004',
   'XQueryComment005',
   'XQueryComment006',
   'XQueryComment007',
   'XQueryComment008',
   'XQueryComment009',
   'XQueryComment010',
   'XQueryComment011',
   'XQueryComment012',
   'XQueryComment013',
   'XQueryComment014',
   'XQueryComment015',
   'XQueryComment016',
   'XQueryComment017',
   'XQueryComment018',
   'XQueryComment019',
   'XQueryComment020',
   'K-XQueryComment-1',
   'K-XQueryComment-2',
   'K-XQueryComment-3',
   'K-XQueryComment-4',
   'K-XQueryComment-5',
   'K-XQueryComment-6',
   'K-XQueryComment-7',
   'K-XQueryComment-8',
   'K-XQueryComment-9',
   'K-XQueryComment-10',
   'K-XQueryComment-11',
   'K-XQueryComment-12',
   'K-XQueryComment-13',
   'K-XQueryComment-14',
   'K-XQueryComment-15',
   'K-XQueryComment-16',
   'K-XQueryComment-17',
   'K-XQueryComment-18',
   'K-XQueryComment-19',
   'K-XQueryComment-20',
   'K2-XQueryComment-1',
   'K2-XQueryComment-2',
   'K2-XQueryComment-3',
   'K2-XQueryComment-4',
   'K2-XQueryComment-5'].
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
environment('fsx_NS',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "ForClause/fsx_NS.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/filesystem","fs"}]},
{resources, []},
{modules, []}
];
environment('TreeEmpty',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeEmpty.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
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
'XQueryComment001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment001 :)
(: Description: Simple use case for XQuery comments :)


(: This is a comment :)
<result/>

",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment002 :)
(: Description: Simple use case for XQuery comments :)




(: This is a comment :)
(//fs:Folder)[1]/fs:File[1]/fs:FileName
",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx_NS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment003 :)
(: Description: Simple use case for XQuery comment containing '-' :)


(:This is a comment-:)
<result/>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment004 :)
(: Description: Empty comment :)


(::)
<result/>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment004 :)
(: Description: Comment containing only '-' :)


(:-:)
<result/>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment006 :)
(: Description: Comment containing ':' :)


(: this is a comment ::)
<result/>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment007 :)
(: Description: Comment containing ')' :)


(: this is a comment ):)
<result/>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment008 :)
(: Description: Simple example of embedded comments :)


(: this is a comment (: this is an embedded comment :):)
<result/>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment009 :)
(: Description: Comments inside a conditional expression :)



if (:test (: yada (: neato :) :) :) (/fs:MyComputer) 
	then (: yada :) \"true\"
	else \"false\"
",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx_NS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
(: Name: XQueryComment010 :)
(: Description: Comments inside a conditional expression :)
if (: comment :) 
  ( //fs:Folder[1]/fs:FolderName/text() = \"Folder00000000000\" ) 
then (: this is the then case :) ( true() )
else (: this is the else case :) ( false() )

",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx_NS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment011 :)
(: Description: Comments inside a conditional expression :)



if (:test:)(:t2:)(:t3:) (/fs:MyComputer) 
	then \"true\"
	else \"false\"

",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx_NS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment012 :)
(: Description: Comments that looks like a function call :)


/south(: test :)

",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<south mark=\"s0\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment013 :)
(: Description: Comments inside a sequence expression :)


(1, 2, (: comment :) 3, 4)

",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment014 :)
(: Description: Comments inside a cast expression :)


\"10\" cast as (: type comment :) xs:integer ?

",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment015 :)
(: Description: Incorrect comment syntax :)


(! Wrong syntax :)
<empty/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment016 :)
(: Description: Invalid comment :)


(:)
<empty/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment017 :)
(: Description: Invalid comment :)


(:: )
<empty/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment018 :)
(: Description: Invalid comment :)


-- Wrong comment format
<empty/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment019 :)
(: Description: Old style comment syntax :)


{-- Wrong comment format --}
<empty/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQueryComment020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Name: XQueryComment020 :)
(: Description: Comment containing an enclosed expression :)


(: { \"comment\" } :)
<result/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XQueryComment020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-1                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `(3(: comment inbetween :)- 1) eq 2`. :)
(:*******************************************************:)
(3(: comment inbetween :)- 1) eq 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-2                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `1 (: a (: nested :) comment :) eq 1`. :)
(:*******************************************************:)
1 (: a (: nested :) comment :) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-3                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `1 (: comment (: inside :) comment :) eq 1`. :)
(:*******************************************************:)
1 (: comment (: inside :) comment :) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-4                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: Comparison of two string literals, whose content reminds of comments. :)
(:*******************************************************:)
\"reminds of a comment :)\" eq
		    \"reminds of a comment :)\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-5                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `5 instance (: strange place for a comment :) of item()`. :)
(:*******************************************************:)
5 instance (: strange place for a comment :) of item()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-6                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `1 (: simple comment :) eq 1`. :)
(:*******************************************************:)
1 (: simple comment :) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-7                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `1 (: comment (: inside :) NEW LINE comment :) eq 1`. :)
(:*******************************************************:)
1 (: comment (: inside :)
				NEW LINE comment :) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-8                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `(: \"recursive comments must be balanced, this one is not :)\" :)`. :)
(:*******************************************************:)
(: \"recursive comments must be 
	balanced, this one is not :)\" :)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-9                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: An empty comment inbetween the 'eq' operator and a number literal. :)
(:*******************************************************:)
1 eq (::)1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-10                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: An empty comment at the very beginning of an expression. :)
(:*******************************************************:)
(::) 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-11                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: An empty comment after a function's paranteses. :)
(:*******************************************************:)
true()(::)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-12                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A for loop with a comment inbetween.         :)
(:*******************************************************:)
for (: set up loop :) $i in 3 return $i eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-13                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `if((: comment inbetween :)) then 1 else 1`. :)
(:*******************************************************:)
if((: comment inbetween :)) then 1 else 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-14                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A syntactically invalid comment that never ends. :)
(:*******************************************************:)
1(: this comment does not end:",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-15                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A comment inside a comment that isn't terminated. :)
(:*******************************************************:)
1(: content (: this comment does not end :)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-16                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A comment inside a comment that does not start properly. :)
(:*******************************************************:)
1(: content this comment does not start properly :) :)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-17                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: Colons and paranteses appearing freely in comment content. :)
(:*******************************************************:)
1(: ((( : )) ))ladl:  :(): ()()(dahsi ()()( dad: ) :) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-18                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: Three comments appearing serially inside a comment. :)
(:*******************************************************:)
1(: (:one comment:) content (:another comment:) content (:a third:):)
			   eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-19                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test stressing many nested comments.       :)
(:*******************************************************:)
1(:(:(:(:(:(:(:(::):):):):):):):) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-XQueryComment-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K-XQueryComment-20                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A syntactically invalid comment that doesn't properly start. :)
(:*******************************************************:)
: :) 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-XQueryComment-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-XQueryComment-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K2-XQueryComment-1                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: An invalid comment after a name test.        :)
(:*******************************************************:)
let $i := <e>
                                            <b/>
                                            <b/>
                                            <b/>
                                        </e>
                              return $i/b(:  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-XQueryComment-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-XQueryComment-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K2-XQueryComment-2                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: An invalid comment after a name test(#2).    :)
(:*******************************************************:)
let $i := <e>
                                            <b/>
                                            <b/>
                                            <b/>
                                        </e>
                              return $i/b(: some : content (:some content  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-XQueryComment-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-XQueryComment-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K2-XQueryComment-3                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Have a computed comment constructor as a last step. :)
(:*******************************************************:)
let $i := <e>
                                            <b/>
                                            <b/>
                                            <b/>
                                        </e>
                                        return $i/b/comment(: some : content (:some content:):){\"content\"}  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-XQueryComment-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--content--><!--content--><!--content-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-XQueryComment-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K2-XQueryComment-4                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Have a direct comment constructor as a last step. :)
(:*******************************************************:)
let $i := <e>
                                            <b/>
                                            <b/>
                                            <b/>
                                        </e>
                                        return $i/(: some : content (:some content:):)<!--content-->  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-XQueryComment-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--content-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-XQueryComment-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(:*******************************************************:)
(: Test: K2-XQueryComment-5                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Have a direct comment constructor as a last step(#2). :)
(:*******************************************************:)
let $i := <e>
                                            <b/>
                                            <b/>
                                            <b/>
                                        </e>
                                        return $i/b/(: some : content (:some content:):)<!--content-->  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-XQueryComment-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!--content--><!--content--><!--content-->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
