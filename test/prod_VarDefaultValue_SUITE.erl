-module('prod_VarDefaultValue_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['extvardef-001'/1]).
-export(['extvardef-001a'/1]).
-export(['extvardef-002'/1]).
-export(['extvardef-002a'/1]).
-export(['extvardef-002b'/1]).
-export(['extvardef-003'/1]).
-export(['extvardef-003a'/1]).
-export(['extvardef-003b'/1]).
-export(['extvardef-004'/1]).
-export(['extvardef-005'/1]).
-export(['extvardef-006'/1]).
-export(['extvardef-006a'/1]).
-export(['extvardef-006b'/1]).
-export(['extvardef-007'/1]).
-export(['extvardef-008'/1]).
-export(['extvardef-009'/1]).
-export(['extvardef-010'/1]).
-export(['extvardef-010a'/1]).
-export(['extvardef-011'/1]).
-export(['extvardef-011a'/1]).
-export(['extvardef-012'/1]).
-export(['extvardef-013'/1]).
-export(['extvardef-014'/1]).
-export(['extvardef-015'/1]).
-export(['extvardef-016a'/1]).
-export(['extvardef-016b'/1]).
-export(['extvardef-017'/1]).
-export(['extvardef-018'/1]).
-export(['extvardef-019'/1]).
-export(['extvardef-020'/1]).
-export(['extvardef-021'/1]).
-export(['extvardef-022'/1]).
-export(['extvardef-023'/1]).
-export(['extvardef-024'/1]).
-export(['extvardef-025'/1]).
-export(['extvardef-026'/1]).
-export(['extvardef-027'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'extvardef-001',
   'extvardef-001a',
   'extvardef-002',
   'extvardef-002a',
   'extvardef-002b',
   'extvardef-003',
   'extvardef-003a',
   'extvardef-003b',
   'extvardef-004',
   'extvardef-005',
   'extvardef-006',
   'extvardef-006a',
   'extvardef-006b',
   'extvardef-007',
   'extvardef-008',
   'extvardef-009',
   'extvardef-010',
   'extvardef-010a',
   'extvardef-011',
   'extvardef-011a',
   'extvardef-012',
   'extvardef-013',
   'extvardef-014',
   'extvardef-015',
   'extvardef-016a',
   'extvardef-016b',
   'extvardef-017',
   'extvardef-018',
   'extvardef-019',
   'extvardef-020',
   'extvardef-021',
   'extvardef-022',
   'extvardef-023',
   'extvardef-024',
   'extvardef-025',
   'extvardef-026',
   'extvardef-027'].
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{"file://"++filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
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
environment('hats',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "SchemaImport/hats.xsd"),"http://www.w3.org/XQueryTest/hats"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'extvardef-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext external := 0; <a>{$ext}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>0</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-001a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext external := 0; $ext",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","5"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-001a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer external := 0; <a>{$ext}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>0</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-002a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer external := 0; <a>{$ext}</a>",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","5"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-002a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>5</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-002b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer external := 0; <a>{$ext}</a>",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","xs:date('2008-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-002b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer* external := (0,1,2); <a>{sum($ext)}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>3</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-003a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer* external := (0,1,2); <a>{sum($ext)}</a>",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","4,5,6"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-003a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>15</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-003b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer* external := (0,1,2); <a>{sum($ext)}</a>",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","42"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-003b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>42</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer* external := 0,1,2; <a>{sum($ext)}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $ext as xs:integer* external := ; <a></a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $var as xs:integer := 17; 
         declare variable $ext as element(a) external := <a>{$var}</a>; 
         <out>{$ext}</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a>17</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-006a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $var as xs:integer := 17; 
        declare variable $ext as xs:integer external := $var; 
        <out>{$ext}</out>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","862"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-006a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>862</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-006b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $var as xs:integer := 17; 
        declare variable $ext as xs:integer external := <a>{$var}</a>; 
        <out>{$ext}</out>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"ext","","862"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-006b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<out>862</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $ext as xs:date external := current-date() + xs:dayTimeDuration('P30D'); 
        $ext gt xs:date('2008-12-30')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $x external; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $x external; \"result\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "result") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
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
'extvardef-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $a := 1;
        declare variable $x external := $a + $b;
        declare variable $b external := 2;
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-010a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $a external := 6 + local:foo();
        declare variable $b external := 12;
        declare function local:foo() { $b + 10 };
        $a
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-010a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"28") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $a := $x;
        declare variable $x external := $a + 2;
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-011a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x external := 3 + local:foo();
        declare variable $b external := 2 + local:foo();

        declare function local:foo()
        {
         $b
         };

         $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-011a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:aaa() { 1 };
        declare variable $x external := local:bbb() + local:aaa();
        declare function local:bbb() { 2 };
        $x 
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $y external;
        declare variable $z external := 10;
        declare function local:aaa() { $z };
        declare variable $x external := local:bbb() + local:aaa() + 2;
        declare function local:bbb() { $y };
        $x 
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"y","","16"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"28") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x external := /works/employee[@name eq \"Jane Doe 1\"];
        fn:count($x)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $y := /works/employee;
        declare context item := $y[9];
        declare variable $x external := fn:position();
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQDY0054") of 
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
'extvardef-016a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $y := (<a>1</a>,<a>2</a>,<a>3</a>,<a>4</a>,<a>5</a>,<a>6</a>,<a>7</a>,<a>8</a>,<a>9</a>,<a>10</a>);
        declare context item := $y[3];
        declare variable $x external := fn:position();
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-016a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-016b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $y := <root><a>1</a>,<a>2</a>,<a>3</a>,<a>4</a>,<a>5</a>,<a>6</a>,<a>7</a>,<a>8</a>,<a>9</a>,<a>10</a></root>;
        declare context item := $y;
        declare variable $x external := fn:last();
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-016b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-017'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x as xs:decimal external := xs:integer(10);
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-018'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x external := $a + 10;
        $x
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-019'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x external := 10;
        declare variable $y external := 18 + $x;
        $y
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"28") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-020'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x external := 5;
        declare variable $a := $x + 2;
        declare function local:foo() {$x +$a};
        declare variable $y external := 11 + local:foo() + $x;
        $y
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"28") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-021'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $x as xs:integer external := xs:int(5);
        declare variable $y as xs:decimal external := $x;
        $y instance of xs:decimal
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"fn:true()") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-022'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:foo() {
          $x
        };
        declare variable $x external := 5;
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extvardef-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extvardef-023'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'extvardef-024'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'extvardef-025'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'extvardef-026'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'extvardef-027'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
