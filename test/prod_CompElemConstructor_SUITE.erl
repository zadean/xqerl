-module('prod_CompElemConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-compelem-name-1'/1]).
-export(['Constr-compelem-name-2'/1]).
-export(['Constr-compelem-name-3'/1]).
-export(['Constr-compelem-compname-1'/1]).
-export(['Constr-compelem-compname-2'/1]).
-export(['Constr-compelem-compname-3'/1]).
-export(['Constr-compelem-compname-4'/1]).
-export(['Constr-compelem-compname-5'/1]).
-export(['Constr-compelem-compname-6'/1]).
-export(['Constr-compelem-compname-7'/1]).
-export(['Constr-compelem-compname-8'/1]).
-export(['Constr-compelem-compname-9'/1]).
-export(['Constr-compelem-compname-10'/1]).
-export(['Constr-compelem-compname-11'/1]).
-export(['Constr-compelem-compname-12'/1]).
-export(['Constr-compelem-compname-13'/1]).
-export(['Constr-compelem-compname-14'/1]).
-export(['Constr-compelem-compname-15'/1]).
-export(['Constr-compelem-compname-16'/1]).
-export(['Constr-compelem-compname-17'/1]).
-export(['Constr-compelem-compname-18'/1]).
-export(['Constr-compelem-compname-19'/1]).
-export(['Constr-compelem-adjtext-1'/1]).
-export(['Constr-compelem-adjtext-2'/1]).
-export(['Constr-compelem-adjtext-3'/1]).
-export(['Constr-compelem-nested-1'/1]).
-export(['Constr-compelem-nested-2'/1]).
-export(['Constr-compelem-enclexpr-1'/1]).
-export(['Constr-compelem-enclexpr-2'/1]).
-export(['Constr-compelem-enclexpr-3'/1]).
-export(['Constr-compelem-enclexpr-4'/1]).
-export(['Constr-compelem-nodeid-1'/1]).
-export(['Constr-compelem-nodeid-2'/1]).
-export(['Constr-compelem-nodeid-3'/1]).
-export(['Constr-compelem-nodeid-4'/1]).
-export(['Constr-compelem-nodeid-5'/1]).
-export(['Constr-compelem-constrmod-3'/1]).
-export(['Constr-compelem-constrmod-4'/1]).
-export(['Constr-compelem-constrmod-7'/1]).
-export(['Constr-compelem-constrmod-8'/1]).
-export(['Constr-compelem-baseuri-1'/1]).
-export(['Constr-compelem-baseuri-2'/1]).
-export(['Constr-compelem-baseuri-3'/1]).
-export(['Constr-compelem-doc-1'/1]).
-export(['Constr-compelem-parent-1'/1]).
-export(['Constr-compelem-string-1'/1]).
-export(['Constr-compelem-data-1'/1]).
-export(['Constr-compelem-attr-1'/1]).
-export(['Constr-compelem-attr-2'/1]).
-export(['Constr-compelem-attr-3'/1]).
-export(['Constr-compelem-attr-4'/1]).
-export(['K2-ComputeConElem-1'/1]).
-export(['K2-ComputeConElem-2'/1]).
-export(['K2-ComputeConElem-3'/1]).
-export(['K2-ComputeConElem-4'/1]).
-export(['K2-ComputeConElem-5'/1]).
-export(['K2-ComputeConElem-6'/1]).
-export(['K2-ComputeConElem-7'/1]).
-export(['K2-ComputeConElem-8'/1]).
-export(['K2-ComputeConElem-9'/1]).
-export(['K2-ComputeConElem-10'/1]).
-export(['K2-ComputeConElem-11'/1]).
-export(['K2-ComputeConElem-12'/1]).
-export(['K2-ComputeConElem-13'/1]).
-export(['K2-ComputeConElem-14'/1]).
-export(['K2-ComputeConElem-15'/1]).
-export(['comp-elem-bad-name-1'/1]).
-export(['comp-elem-bad-name-2'/1]).
-export(['comp-elem-bad-name-3'/1]).
-export(['comp-elem-bad-name-4'/1]).
-export(['comp-elem-bad-name-5'/1]).
-export(['comp-elem-bad-name-6'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Constr-compelem-name-1',
   'Constr-compelem-name-2',
   'Constr-compelem-name-3',
   'Constr-compelem-compname-1',
   'Constr-compelem-compname-2',
   'Constr-compelem-compname-3',
   'Constr-compelem-compname-4',
   'Constr-compelem-compname-5',
   'Constr-compelem-compname-6',
   'Constr-compelem-compname-7',
   'Constr-compelem-compname-8',
   'Constr-compelem-compname-9',
   'Constr-compelem-compname-10',
   'Constr-compelem-compname-11',
   'Constr-compelem-compname-12',
   'Constr-compelem-compname-13',
   'Constr-compelem-compname-14',
   'Constr-compelem-compname-15',
   'Constr-compelem-compname-16',
   'Constr-compelem-compname-17',
   'Constr-compelem-compname-18',
   'Constr-compelem-compname-19',
   'Constr-compelem-adjtext-1',
   'Constr-compelem-adjtext-2',
   'Constr-compelem-adjtext-3',
   'Constr-compelem-nested-1',
   'Constr-compelem-nested-2',
   'Constr-compelem-enclexpr-1',
   'Constr-compelem-enclexpr-2',
   'Constr-compelem-enclexpr-3',
   'Constr-compelem-enclexpr-4',
   'Constr-compelem-nodeid-1',
   'Constr-compelem-nodeid-2',
   'Constr-compelem-nodeid-3',
   'Constr-compelem-nodeid-4',
   'Constr-compelem-nodeid-5',
   'Constr-compelem-constrmod-3',
   'Constr-compelem-constrmod-4',
   'Constr-compelem-constrmod-7',
   'Constr-compelem-constrmod-8',
   'Constr-compelem-baseuri-1',
   'Constr-compelem-baseuri-2',
   'Constr-compelem-baseuri-3',
   'Constr-compelem-doc-1',
   'Constr-compelem-parent-1',
   'Constr-compelem-string-1',
   'Constr-compelem-data-1',
   'Constr-compelem-attr-1',
   'Constr-compelem-attr-2',
   'Constr-compelem-attr-3',
   'Constr-compelem-attr-4',
   'K2-ComputeConElem-1',
   'K2-ComputeConElem-2',
   'K2-ComputeConElem-3',
   'K2-ComputeConElem-4',
   'K2-ComputeConElem-5',
   'K2-ComputeConElem-6',
   'K2-ComputeConElem-7',
   'K2-ComputeConElem-8',
   'K2-ComputeConElem-9',
   'K2-ComputeConElem-10',
   'K2-ComputeConElem-11',
   'K2-ComputeConElem-12',
   'K2-ComputeConElem-13',
   'K2-ComputeConElem-14',
   'K2-ComputeConElem-15',
   'comp-elem-bad-name-1',
   'comp-elem-bad-name-2',
   'comp-elem-bad-name-3',
   'comp-elem-bad-name-4',
   'comp-elem-bad-name-5',
   'comp-elem-bad-name-6'].
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
environment('DupNode',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "CompAttrConstructor/DupNode.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomicns',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomicns.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TopMany',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "AxisStep/TopMany.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('acme_corp',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../op/union/acme_corp.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-compelem-name-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-name-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>text</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-name-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace foo=\"http://www.example.com/foo\"; element foo:elem {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-name-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:elem xmlns:foo=\"http://www.example.com/foo\">text</foo:elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-name-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element foo:elem {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-name-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {()} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {'one', 'two'} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:untypedAtomic('one'), xs:untypedAtomic('two')} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {//a} {'text'}",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {1,2} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {123} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:dateTime(\"1999-05-31T13:20:00\")} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Constr-compelem-compname-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:QName('aQname')} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<aQname>text</aQname>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {'elem'} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>text</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {'elem', ()} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>text</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {(), 'elem'} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>text</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{element {'foo:elem'} {'text'}}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {'foo:elem'} {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:untypedAtomic('elem')} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>text</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{element {xs:untypedAtomic('foo:elem')} {'text'}}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:untypedAtomic('foo:elem')} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {'el em'} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-compname-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:untypedAtomic('el em')} {'text'}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-compname-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-adjtext-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((element elem {1, 'string', 1,2e3})/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-adjtext-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-adjtext-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((element elem {1, //text(), 'string'})/text())",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-adjtext-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-adjtext-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((element elem {1, 2, <a/>, 3, 4, <b/>, 5, 6})/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-adjtext-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nested-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {1, element a {2, element b {element c {}, element d {3}}, 4}}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nested-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1<a>2<b><c/><d>3</d></b>4</a></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nested-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {}",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nested-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-enclexpr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-enclexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-enclexpr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {1,'a',3.5,4e2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-enclexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1 a 3.5 400</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-enclexpr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {1,//a,2,3,//comment(),4,5,//processing-instruction(),6,7,//text(),8}",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-enclexpr-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-enclexpr-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {1, '', 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-enclexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1  2</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nodeid-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <a/>, $y in element elem {$x} return exactly-one($y/a) is $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nodeid-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nodeid-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <a b=\"b\"/>, $y in element elem {$x/@b} return $y/@b is $x/@b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nodeid-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nodeid-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <!--comment-->, $y in element elem {$x} return exactly-one($y/comment()) is $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nodeid-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nodeid-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <?pi content?>, $y in element elem {$x} return exactly-one($y/processing-instruction()) is $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nodeid-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-nodeid-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <a>text</a>, $y in element elem {$x/text()} return exactly-one($y/text()) is exactly-one($x/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-nodeid-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-constrmod-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare construction strip; (element elem {xs:decimal((//decimal[1]))}) cast as xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-constrmod-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-constrmod-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare construction preserve; (element elem {xs:decimal((//decimal[1]))}) cast as xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-constrmod-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12678967") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORG0001") of 
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
'Constr-compelem-constrmod-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare construction strip; (element elem {//*:decimal/@*:attr})/@*:attr cast as xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-constrmod-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-constrmod-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare construction preserve; (element elem {xs:decimal(//*:decimal[1]/@*:attr)}) cast as xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-constrmod-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12678967") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORG0001") of 
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
'Constr-compelem-baseuri-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:base-uri(element elem {attribute xml:base {\"http://www.example.com\"}})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-baseuri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-baseuri-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:base-uri(exactly-one((<elem xml:base=\"http://www.example.com\">{element a {}}</elem>)/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-baseuri-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-baseuri-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare base-uri \"http://www.example.com\"; fn:base-uri(element elem {})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-baseuri-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-doc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {., .}",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-doc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-parent-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count((element elem {})/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-parent-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-string-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(element elem {'a', element a {}, 'b'})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-string-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-data-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data(element elem {'a', element a {}, 'b'})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-data-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-attr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {1, //west/@mark}",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-attr-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-attr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {element a {}, //west/@mark}",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-attr-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-attr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {//west/@mark, //west/@west-attr-1}",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-attr-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem mark=\"w0\" west-attr-1=\"w1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-compelem-attr-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element elem {//west/@mark, //center/@mark}",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-compelem-attr-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element \"name\" {\"content\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem>{\"\", \"\", <e/>, <b></b>}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem> <e/><b/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem>{<e/>, <b></b>, \"\", \"\"}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><e/><b/> </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {\"aPrefix:localName\"} {\"content\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {xs:untypedAtomic(\"aPrefix::localName\")} {\"content\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data(element foo {\"dsa\"}) instance of xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data(element foo {\"dsa\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "dsa") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element e {\"content\"} instance of element(*, xs:anyType)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element e {\"content\"} instance of element(*, xs:untyped)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare construction strip; element e {\"content\"} instance of element(*, xs:untyped)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element e {\"content\"} instance of element(a, xs:anyType)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare construction strip; element e {\"content\"} instance of element(b, xs:untyped)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element e {element b{()}}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><b/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:addNamespace($argElement as element(), $argPrefix as xs:string, $namespaceURI as xs:string) as element() { 
            element { QName($namespaceURI, concat($argPrefix, \":x\")) }{$argElement}/* 
        }; 
        local:addNamespace(<a><b/></a>, \"prefix\", \"http://example.com/\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:prefix=\"http://example.com/\"><b/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ComputeConElem-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare default element namespace \"http://example.com/NS\"; 
        element {exactly-one((//*)[3])} {}",
   {Env,Opts} = xqerl_test:handle_environment(environment('acme_corp',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ComputeConElem-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Boston xmlns=\"http://example.com/NS\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'comp-elem-bad-name-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "element {\"xmlns:error\"} {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "comp-elem-bad-name-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQDY0096") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQDY0074") of 
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
'comp-elem-bad-name-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace URI is 'http://www.w3.org/2000/xmlns/' Mary Holstege :) element { fn:QName(\"http://www.w3.org/2000/xmlns/\",\"error\")} {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "comp-elem-bad-name-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0096") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'comp-elem-bad-name-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace URI is 'http://www.w3.org/2000/xmlns/' Mary Holstege :) element { fn:QName(\"http://www.w3.org/2000/xmlns/\",\"foo:error\")} {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "comp-elem-bad-name-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0096") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'comp-elem-bad-name-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace prefix is 'xml' and namespace URI is not 'http://www.w3.org/XML/1998/namespace' Mary Holstege :) element { fn:QName(\"http://example.com/not-XML-uri\",\"xml:error\") } {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "comp-elem-bad-name-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0096") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'comp-elem-bad-name-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace prefix is not 'xml' and its namespace URI is 'http://www.w3.org/XML/1998/namespace' Mary Holstege :) element { fn:QName(\"http://www.w3.org/XML/1998/namespace\",\"foo:error\") } {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "comp-elem-bad-name-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0096") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'comp-elem-bad-name-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace prefix is 'xmlns' Mary Holstege :) element { fn:QName(\"http://example.com/some-uri\",\"xmlns:error\") } {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "comp-elem-bad-name-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0096") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
