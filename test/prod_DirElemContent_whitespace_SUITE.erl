-module('prod_DirElemContent_whitespace_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-ws-tag-1'/1]).
-export(['Constr-ws-tag-2'/1]).
-export(['Constr-ws-tag-3'/1]).
-export(['Constr-ws-tag-4'/1]).
-export(['Constr-ws-tag-5'/1]).
-export(['Constr-ws-tag-6'/1]).
-export(['Constr-ws-tag-7'/1]).
-export(['Constr-ws-tag-8'/1]).
-export(['Constr-ws-tag-9'/1]).
-export(['Constr-ws-tag-10'/1]).
-export(['Constr-ws-enclexpr-1'/1]).
-export(['Constr-ws-enclexpr-2'/1]).
-export(['Constr-ws-enclexpr-3'/1]).
-export(['Constr-ws-enclexpr-4'/1]).
-export(['Constr-ws-enclexpr-5'/1]).
-export(['Constr-ws-enclexpr-6'/1]).
-export(['Constr-ws-enclexpr-7'/1]).
-export(['Constr-ws-enclexpr-8'/1]).
-export(['Constr-ws-enclexpr-9'/1]).
-export(['Constr-ws-enclexpr-10'/1]).
-export(['Constr-ws-enclexpr-11'/1]).
-export(['Constr-ws-enclexpr-12'/1]).
-export(['Constr-ws-enclexpr-13'/1]).
-export(['Constr-ws-enclexpr-14'/1]).
-export(['Constr-ws-enclexpr-15'/1]).
-export(['Constr-ws-enclexpr-16'/1]).
-export(['Constr-ws-enclexpr-17'/1]).
-export(['Constr-ws-enclexpr-18'/1]).
-export(['Constr-ws-enclexpr-19'/1]).
-export(['Constr-ws-enclexpr-20'/1]).
-export(['Constr-ws-enclexpr-21'/1]).
-export(['Constr-ws-enclexpr-22'/1]).
-export(['Constr-ws-enclexpr-23'/1]).
-export(['Constr-ws-enclexpr-24'/1]).
-export(['Constr-ws-nobound-1'/1]).
-export(['Constr-ws-nobound-2'/1]).
-export(['Constr-ws-nobound-3'/1]).
-export(['Constr-ws-nobound-4'/1]).
-export(['Constr-ws-nobound-5'/1]).
-export(['Constr-ws-nobound-6'/1]).
-export(['Constr-ws-genchref-1'/1]).
-export(['Constr-ws-genchref-2'/1]).
-export(['Constr-ws-genchref-3'/1]).
-export(['Constr-ws-genchref-4'/1]).
-export(['Constr-ws-gencdata-1'/1]).
-export(['Constr-ws-gencdata-3'/1]).
-export(['Constr-ws-adjchref-1'/1]).
-export(['Constr-ws-adjchref-2'/1]).
-export(['Constr-ws-adjchref-3'/1]).
-export(['Constr-ws-adjcdata-1'/1]).
-export(['Constr-ws-adjcdata-2'/1]).
-export(['Constr-ws-adjcdata-3'/1]).
-export(['Constr-ws-genenclexpr-1'/1]).
-export(['Constr-ws-genenclexpr-2'/1]).
-export(['Constr-ws-genenclexpr-3'/1]).
-export(['Constr-ws-xmlspace-1'/1]).
-export(['Constr-ws-xmlspace-2'/1]).
-export(['K2-DirectConElemWhitespace-1'/1]).
-export(['K2-DirectConElemWhitespace-2'/1]).
-export(['K2-DirectConElemWhitespace-3'/1]).
-export(['K2-DirectConElemWhitespace-4'/1]).
-export(['K2-DirectConElemWhitespace-5'/1]).
-export(['K2-DirectConElemWhitespace-6'/1]).
-export(['K2-DirectConElemWhitespace-7'/1]).
-export(['K2-DirectConElemWhitespace-8'/1]).
-export(['K2-DirectConElemWhitespace-9'/1]).
-export(['K2-DirectConElemWhitespace-10'/1]).
-export(['K2-DirectConElemWhitespace-11'/1]).
-export(['K2-DirectConElemWhitespace-12'/1]).
-export(['K2-DirectConElemWhitespace-13'/1]).
-export(['K2-DirectConElemWhitespace-14'/1]).
-export(['K2-DirectConElemWhitespace-15'/1]).
-export(['K2-DirectConElemWhitespace-16'/1]).
-export(['K2-DirectConElemWhitespace-17'/1]).
-export(['K2-DirectConElemWhitespace-18'/1]).
-export(['K2-DirectConElemWhitespace-19'/1]).
-export(['K2-DirectConElemWhitespace-20'/1]).
-export(['K2-DirectConElemWhitespace-21'/1]).
-export(['K2-DirectConElemWhitespace-22'/1]).
-export(['K2-DirectConElemWhitespace-23'/1]).
-export(['K2-DirectConElemWhitespace-24'/1]).
-export(['K2-DirectConElemWhitespace-25'/1]).
-export(['K2-DirectConElemWhitespace-26'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Constr-ws-tag-1',
   'Constr-ws-tag-2',
   'Constr-ws-tag-3',
   'Constr-ws-tag-4',
   'Constr-ws-tag-5',
   'Constr-ws-tag-6',
   'Constr-ws-tag-7',
   'Constr-ws-tag-8',
   'Constr-ws-tag-9',
   'Constr-ws-tag-10',
   'Constr-ws-enclexpr-1',
   'Constr-ws-enclexpr-2',
   'Constr-ws-enclexpr-3',
   'Constr-ws-enclexpr-4',
   'Constr-ws-enclexpr-5',
   'Constr-ws-enclexpr-6',
   'Constr-ws-enclexpr-7',
   'Constr-ws-enclexpr-8',
   'Constr-ws-enclexpr-9',
   'Constr-ws-enclexpr-10',
   'Constr-ws-enclexpr-11',
   'Constr-ws-enclexpr-12',
   'Constr-ws-enclexpr-13',
   'Constr-ws-enclexpr-14',
   'Constr-ws-enclexpr-15',
   'Constr-ws-enclexpr-16',
   'Constr-ws-enclexpr-17',
   'Constr-ws-enclexpr-18',
   'Constr-ws-enclexpr-19',
   'Constr-ws-enclexpr-20',
   'Constr-ws-enclexpr-21',
   'Constr-ws-enclexpr-22',
   'Constr-ws-enclexpr-23',
   'Constr-ws-enclexpr-24',
   'Constr-ws-nobound-1',
   'Constr-ws-nobound-2',
   'Constr-ws-nobound-3',
   'Constr-ws-nobound-4',
   'Constr-ws-nobound-5',
   'Constr-ws-nobound-6',
   'Constr-ws-genchref-1',
   'Constr-ws-genchref-2',
   'Constr-ws-genchref-3',
   'Constr-ws-genchref-4',
   'Constr-ws-gencdata-1',
   'Constr-ws-gencdata-3',
   'Constr-ws-adjchref-1',
   'Constr-ws-adjchref-2',
   'Constr-ws-adjchref-3',
   'Constr-ws-adjcdata-1',
   'Constr-ws-adjcdata-2',
   'Constr-ws-adjcdata-3',
   'Constr-ws-genenclexpr-1',
   'Constr-ws-genenclexpr-2',
   'Constr-ws-genenclexpr-3',
   'Constr-ws-xmlspace-1',
   'Constr-ws-xmlspace-2',
   'K2-DirectConElemWhitespace-1',
   'K2-DirectConElemWhitespace-2',
   'K2-DirectConElemWhitespace-3',
   'K2-DirectConElemWhitespace-4',
   'K2-DirectConElemWhitespace-5',
   'K2-DirectConElemWhitespace-6',
   'K2-DirectConElemWhitespace-7',
   'K2-DirectConElemWhitespace-8',
   'K2-DirectConElemWhitespace-9',
   'K2-DirectConElemWhitespace-10',
   'K2-DirectConElemWhitespace-11',
   'K2-DirectConElemWhitespace-12',
   'K2-DirectConElemWhitespace-13',
   'K2-DirectConElemWhitespace-14',
   'K2-DirectConElemWhitespace-15',
   'K2-DirectConElemWhitespace-16',
   'K2-DirectConElemWhitespace-17',
   'K2-DirectConElemWhitespace-18',
   'K2-DirectConElemWhitespace-19',
   'K2-DirectConElemWhitespace-20',
   'K2-DirectConElemWhitespace-21',
   'K2-DirectConElemWhitespace-22',
   'K2-DirectConElemWhitespace-23',
   'K2-DirectConElemWhitespace-24',
   'K2-DirectConElemWhitespace-25',
   'K2-DirectConElemWhitespace-26'].
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
'Constr-ws-tag-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> <a> </a> <a> </a> <a> <b> </b> </a> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><a/><a/><a><b/></a></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; fn:count((<elem> <a> </a> <a> </a> <a> <b> </b> </a> </elem>)//text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem>   </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>   </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem>


</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>


</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem>			</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>			</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem>   	
      	    <a>          	         
		
	
        </a>	
<a>        	     </a>             <a>	  <b>

         	 </b>

  </a>	

		
      </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>   	
      	    <a>          	         
		
	
        </a>	
<a>        	     </a>             <a>	  <b>

         	 </b>

  </a>	

		
      </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-tag-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; fn:count((<elem> <a> </a> <a> </a> <a> <b> </b> </a> </elem>)//text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-tag-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> {1}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> {1}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> {1}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{1} {2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>12</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{1} {2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>12</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{1} {2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>12</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{1} </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{1} </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{1} </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> <a/> <b/> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><a/><b/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> <a/> <b/> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><a/><b/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> <a/> <b/> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><a/><b/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem>   {1}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>   1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem>


{1}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>


1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-15 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace tab between open tag and enclosed expression :)

declare boundary-space preserve; 
<elem>			{1}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-15.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-16 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace space between enclosed expressions :)

declare boundary-space preserve; 
<elem>{1}   {2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-16.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-17 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace line feed between enclosed expressions :)

declare boundary-space preserve; 
<elem>{1}


{2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-17.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-18 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace tab between enclosed expressions :)

declare boundary-space preserve; 
<elem>{1}			{2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-18.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-19 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace space between enclosed expression and close tag :)

declare boundary-space preserve; 
<elem>{1}   </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-19.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-20 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace line feed between enclosed expression and close tag :)

declare boundary-space preserve; 
<elem>{1}


</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-20.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-21 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace tab between enclosed expression and close tag :)

declare boundary-space preserve; 
<elem>{1}			</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-21.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-22 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace space between child elements :)

declare boundary-space preserve;
<elem>   <a/>   <b/>   </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-22.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-23 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace line feed between child elements :)

declare boundary-space preserve;
<elem>


<a/>


<b/>


</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-23.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-enclexpr-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-enclexpr-24 :)
(: Written by: Andreas Behm :)
(: Description: preserve whitespace tab between child elements :)

declare boundary-space preserve;
<elem>			<a/>			<b/>			</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-enclexpr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "DirElemContent.whitespace/Constr-ws-enclexpr-24.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-nobound-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> x</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-nobound-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem> x</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-nobound-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-nobound-2 :)
(: Written by: Andreas Behm :)
(: Description: preserve leading line feed :)

declare boundary-space strip;
<elem>
x</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-nobound-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"string-to-codepoints(string($result))[1] = 10") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-nobound-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-nobound-3 :)
(: Written by: Andreas Behm :)
(: Description: preserve leading tab :)

declare boundary-space strip;
<elem>	x</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-nobound-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"string-to-codepoints(string($result))[1] = 9") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-nobound-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>x </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-nobound-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>x </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-nobound-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-nobound-5 :)
(: Written by: Andreas Behm :)
(: Description: preserve trailing line feed :)

declare boundary-space strip;
<elem>x
</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-nobound-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (120, 10))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-nobound-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-nobound-6 :)
(: Written by: Andreas Behm :)
(: Description: preserve trailing tab :)

declare boundary-space strip;
<elem>x	</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-nobound-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (120, 9))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genchref-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>&#x20;</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genchref-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem> </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genchref-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>&#xA;</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genchref-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (10))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genchref-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>&#xD;</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genchref-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>&#xD;</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genchref-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>&#x9;</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genchref-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>	</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-gencdata-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem><![CDATA[ ]]></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-gencdata-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem> </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-gencdata-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-gencdata-3 :)
(: Written by: Andreas Behm :)
(: Description: preserve cdata tab :)

declare boundary-space strip;
<elem><![CDATA[	]]></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-gencdata-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (9))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-adjchref-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem> &#x30; </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-adjchref-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem> 0 </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-adjchref-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-adjchref-2 :)
(: Written by: Andreas Behm :)
(: Description: preserve line feed adjacent to character reference :)

declare boundary-space strip;
<elem>
&#x30;
</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-adjchref-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (10, 48, 10))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-adjchref-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-adjchref-3 :)
(: Written by: Andreas Behm :)
(: Description: preserve tab adjacent to character reference :)

declare boundary-space strip;
<elem>	&#x30;	</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-adjchref-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (9, 48, 9))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-adjcdata-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-adjcdata-1 :)
(: Written by: Andreas Behm :)
(: Description: preserve space adjacent to cdata section :)

declare boundary-space strip;
<elem> <![CDATA[]]> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-adjcdata-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>  </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-adjcdata-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-adjcdata-2 :)
(: Written by: Andreas Behm :)
(: Description: preserve line feed adjacent to cdata section :)

declare boundary-space strip;
<elem>
<![CDATA[]]>
</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-adjcdata-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (10, 10))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-adjcdata-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-adjcdata-3 :)
(: Written by: Andreas Behm :)
(: Description: preserve tab adjacent to cdata section :)

declare boundary-space strip;
<elem>	<![CDATA[]]>	</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-adjcdata-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (9, 9))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genenclexpr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem>{\" \"}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genenclexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem> </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genenclexpr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-genenclexpr-2 :)
(: Written by: Andreas Behm :)
(: Description: preserve enclosed exp line feed :)

declare boundary-space strip;
<elem>{\"
\"}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genenclexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (10))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-genenclexpr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(: Name: Constr-ws-genenclexpr-3 :)
(: Written by: Andreas Behm :)
(: Description: preserve enclosed exp tab :)

declare boundary-space strip;
<elem>{\"	\"}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-genenclexpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"deep-equal(string-to-codepoints(string($result)), (9))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-xmlspace-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <elem xml:space=\"preserve\"> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-xmlspace-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xml:space=\"preserve\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-ws-xmlspace-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <elem xml:space=\"strip\"> </elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-ws-xmlspace-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<elem xml:space=\"strip\"> </elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQDY0092") of 
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
'K2-DirectConElemWhitespace-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; string(<e> <b/> </e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem>{\"\"}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<a>aaaa<b/>aaaa</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "aaaaaaaa") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <e> <b/>  </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e> <b/>  </e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; string(<e xml:space=\"preserve\"> </e>) eq \"\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space strip; <e xml:space=\"preserve\"> </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:space=\"preserve\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; string(<e xml:space=\"default\"> </e>) eq \" \"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare boundary-space preserve; <e xml:space=\"preserve\"> </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:space=\"preserve\"> </e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e>'a''a'''a\"a\"\"a\"\"\"a\"</e>) eq \"'a''a'''a\"\"a\"\"\"\"a\"\"\"\"\"\"a\"\"\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e> &#32; </e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "   ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e> <![CDATA[ ]]> </e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "   ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e>123<b>XX</b>abc</e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123XXabc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e>123<!-- a comment -->ab<!-- another comment -->c</e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e>123<?target content ?>ab<?target2 content?>c</e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(<elem>str{\"\"}asdas{\"asd\", \"asd\", \"''\", \"\"}{''}asd{''}{''}</elem>/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(<a></a>/node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(<a/>/node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<elem> <![CDATA[]]> </elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e>e<b>ddd</b></e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "eddd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{1}{1}{1}<e/></e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>111<e/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e><e/>{1}{1}{1}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><e/>111</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<e>]]></e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "]]>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<elem><![CDATA[cdat]]><!-- a comment --><?target content?></elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cdat") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<elem> content <![CDATA[ content ]]> content </elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " content  content  content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<elem><![CDATA[cdata&<>'\"< ]]>asda <?target content?>asdad</elem>) eq \"cdata&amp;<>'\"\"&lt;&#x20;asda asdad\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemWhitespace-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string(<a> {1} <b> {1} </b> </a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemWhitespace-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
