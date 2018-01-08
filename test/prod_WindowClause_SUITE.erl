-module('prod_WindowClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['SlidingWindowExpr501'/1]).
-export(['SlidingWindowExpr502'/1]).
-export(['SlidingWindowExpr503'/1]).
-export(['TumblingWindowExpr503'/1]).
-export(['WindowingUseCase01'/1]).
-export(['WindowingUseCase01S'/1]).
-export(['WindowingUseCase02'/1]).
-export(['WindowingUseCase02S'/1]).
-export(['WindowingUseCase03'/1]).
-export(['WindowingUseCase03S'/1]).
-export(['WindowingUseCase04'/1]).
-export(['WindowingUseCase04S'/1]).
-export(['WindowingUseCase05'/1]).
-export(['WindowingUseCase05S'/1]).
-export(['WindowingUseCase06'/1]).
-export(['WindowingUseCase06S'/1]).
-export(['WindowingUseCase07'/1]).
-export(['WindowingUseCase07S'/1]).
-export(['WindowingUseCase08'/1]).
-export(['WindowingUseCase08S'/1]).
-export(['WindowingUseCase09'/1]).
-export(['WindowingUseCase09S'/1]).
-export(['WindowingUseCase10'/1]).
-export(['WindowingUseCase10S'/1]).
-export(['WindowingUseCase11'/1]).
-export(['WindowingUseCase11S'/1]).
-export(['WindowingUseCase12'/1]).
-export(['WindowingUseCase12S'/1]).
-export(['WindowingUseCase13'/1]).
-export(['WindowingUseCase13S'/1]).
-export(['WindowingUseCase14'/1]).
-export(['WindowingUseCase14S'/1]).
-export(['WindowingUseCase15'/1]).
-export(['WindowingUseCase15S'/1]).
-export(['WindowingUseCase16'/1]).
-export(['WindowingUseCase16S'/1]).
-export(['WindowingUseCase17'/1]).
-export(['WindowingUseCase17S'/1]).
-export(['WindowingUseCase18'/1]).
-export(['WindowingUseCase18S'/1]).
-export(['WindowingUseCase19'/1]).
-export(['WindowingUseCase19S'/1]).
-export(['TumblingWindowExpr504'/1]).
-export(['SlidingWindowExpr504'/1]).
-export(['SlidingWindowExpr505'/1]).
-export(['TumblingWindowExpr505'/1]).
-export(['SlidingWindowExpr506'/1]).
-export(['SlidingWindowExpr507'/1]).
-export(['TumblingWindowExpr507'/1]).
-export(['SlidingWindowExpr508'/1]).
-export(['TumblingWindowExpr508'/1]).
-export(['SlidingWindowExpr509'/1]).
-export(['TumblingWindowExpr509'/1]).
-export(['TumblingWindowExpr510'/1]).
-export(['SlidingWindowExpr510'/1]).
-export(['TumblingWindowExpr511'/1]).
-export(['SlidingWindowExpr511'/1]).
-export(['TumblingWindowExpr512'/1]).
-export(['SlidingWindowExpr512'/1]).
-export(['TumblingWindowExpr513'/1]).
-export(['SlidingWindowExpr513'/1]).
-export(['TumblingWindowExpr514'/1]).
-export(['SlidingWindowExpr514'/1]).
-export(['TumblingWindowExpr515'/1]).
-export(['SlidingWindowExpr515'/1]).
-export(['TumblingWindowExpr516'/1]).
-export(['TumblingWindowExpr517'/1]).
-export(['SlidingWindowExpr517'/1]).
-export(['TumblingWindowExpr518'/1]).
-export(['TumblingWindowExpr518a'/1]).
-export(['SlidingWindowExpr518'/1]).
-export(['TumblingWindowExpr519'/1]).
-export(['SlidingWindowExpr519'/1]).
-export(['TumblingWindowExpr520'/1]).
-export(['TumblingWindowExpr521'/1]).
-export(['TumblingWindowExpr522'/1]).
-export(['TumblingWindowExpr523'/1]).
-export(['TumblingWindowExpr524'/1]).
-export(['TumblingWindowExpr525'/1]).
-export(['TumblingWindowExpr526'/1]).
-export(['TumblingWindowExpr527'/1]).
-export(['TumblingWindowExpr528'/1]).
-export(['TumblingWindowExpr529'/1]).
-export(['SlidingWindowExpr529'/1]).
-export(['TumblingWindowExpr530'/1]).
-export(['TumblingWindowExpr531'/1]).
-export(['TumblingWindowExpr531a'/1]).
-export(['TumblingWindowExpr532'/1]).
-export(['TumblingWindowExpr533'/1]).
-export(['TumblingWindowExpr534'/1]).
-export(['SlidingWindowExpr534'/1]).
-export(['TumblingWindowExpr535a'/1]).
-export(['TumblingWindowExpr535b'/1]).
-export(['TumblingWindowExpr536'/1]).
-export(['TumblingWindowExpr537'/1]).
-export(['TumblingWindowExpr538'/1]).
-export(['SlidingWindowExpr538'/1]).
-export(['TumblingWindowExpr539'/1]).
-export(['SlidingWindowExpr539'/1]).
-export(['TumblingWindowExpr540'/1]).
-export(['SlidingWindowExpr540'/1]).
-export(['TumblingWindowExpr541'/1]).
-export(['TumblingWindowExpr542'/1]).
-export(['TumblingWindowExpr544'/1]).
-export(['SlidingWindowExpr544'/1]).
-export(['TumblingWindowExpr545'/1]).
-export(['TumblingWindowExpr546'/1]).
-export(['TumblingWindowExpr547'/1]).
-export(['TumblingWindowExpr549'/1]).
-export(['TumblingWindowExpr550'/1]).
-export(['SlidingWindowExpr550'/1]).
-export(['TumblingWindowExpr551'/1]).
-export(['TumblingWindowExpr552'/1]).
-export(['TumblingWindowExpr553'/1]).
-export(['TumblingWindowExpr554'/1]).
-export(['TumblingWindowExpr555'/1]).
-export(['WindowExpr500'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'SlidingWindowExpr501',
   'SlidingWindowExpr502',
   'SlidingWindowExpr503',
   'TumblingWindowExpr503',
   'WindowingUseCase01',
   'WindowingUseCase01S',
   'WindowingUseCase02',
   'WindowingUseCase02S',
   'WindowingUseCase03',
   'WindowingUseCase03S',
   'WindowingUseCase04',
   'WindowingUseCase04S',
   'WindowingUseCase05',
   'WindowingUseCase05S',
   'WindowingUseCase06',
   'WindowingUseCase06S',
   'WindowingUseCase07',
   'WindowingUseCase07S',
   'WindowingUseCase08',
   'WindowingUseCase08S',
   'WindowingUseCase09',
   'WindowingUseCase09S',
   'WindowingUseCase10',
   'WindowingUseCase10S',
   'WindowingUseCase11',
   'WindowingUseCase11S',
   'WindowingUseCase12',
   'WindowingUseCase12S',
   'WindowingUseCase13',
   'WindowingUseCase13S',
   'WindowingUseCase14',
   'WindowingUseCase14S',
   'WindowingUseCase15',
   'WindowingUseCase15S',
   'WindowingUseCase16',
   'WindowingUseCase16S',
   'WindowingUseCase17',
   'WindowingUseCase17S',
   'WindowingUseCase18',
   'WindowingUseCase18S',
   'WindowingUseCase19',
   'WindowingUseCase19S',
   'TumblingWindowExpr504',
   'SlidingWindowExpr504',
   'SlidingWindowExpr505',
   'TumblingWindowExpr505',
   'SlidingWindowExpr506',
   'SlidingWindowExpr507',
   'TumblingWindowExpr507',
   'SlidingWindowExpr508',
   'TumblingWindowExpr508',
   'SlidingWindowExpr509',
   'TumblingWindowExpr509',
   'TumblingWindowExpr510',
   'SlidingWindowExpr510',
   'TumblingWindowExpr511',
   'SlidingWindowExpr511',
   'TumblingWindowExpr512',
   'SlidingWindowExpr512',
   'TumblingWindowExpr513',
   'SlidingWindowExpr513',
   'TumblingWindowExpr514',
   'SlidingWindowExpr514',
   'TumblingWindowExpr515',
   'SlidingWindowExpr515',
   'TumblingWindowExpr516',
   'TumblingWindowExpr517',
   'SlidingWindowExpr517',
   'TumblingWindowExpr518',
   'TumblingWindowExpr518a',
   'SlidingWindowExpr518',
   'TumblingWindowExpr519',
   'SlidingWindowExpr519',
   'TumblingWindowExpr520',
   'TumblingWindowExpr521',
   'TumblingWindowExpr522',
   'TumblingWindowExpr523',
   'TumblingWindowExpr524',
   'TumblingWindowExpr525',
   'TumblingWindowExpr526',
   'TumblingWindowExpr527',
   'TumblingWindowExpr528',
   'TumblingWindowExpr529',
   'SlidingWindowExpr529',
   'TumblingWindowExpr530',
   'TumblingWindowExpr531',
   'TumblingWindowExpr531a',
   'TumblingWindowExpr532',
   'TumblingWindowExpr533',
   'TumblingWindowExpr534',
   'SlidingWindowExpr534',
   'TumblingWindowExpr535a',
   'TumblingWindowExpr535b',
   'TumblingWindowExpr536',
   'TumblingWindowExpr537',
   'TumblingWindowExpr538',
   'SlidingWindowExpr538',
   'TumblingWindowExpr539',
   'SlidingWindowExpr539',
   'TumblingWindowExpr540',
   'SlidingWindowExpr540',
   'TumblingWindowExpr541',
   'TumblingWindowExpr542',
   'TumblingWindowExpr544',
   'SlidingWindowExpr544',
   'TumblingWindowExpr545',
   'TumblingWindowExpr546',
   'TumblingWindowExpr547',
   'TumblingWindowExpr549',
   'TumblingWindowExpr550',
   'SlidingWindowExpr550',
   'TumblingWindowExpr551',
   'TumblingWindowExpr552',
   'TumblingWindowExpr553',
   'TumblingWindowExpr554',
   'TumblingWindowExpr555',
   'WindowExpr500'].
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
environment('WindowingUseCases01',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/arrange_rows.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases01S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/arrange_rows.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/arrange_rows.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases02',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/head_para.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases02S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/head_para.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/head_para.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases03',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/term_def_list.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases03S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/term_def_list.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/term_def_list.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases04',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/temp_events.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases04S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/temp_events.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/temp_events.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases05',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/person_events.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases05S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/person_events.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/person_events.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases06',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/rss.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases06S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/rss.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/rss.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases07',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/cxml.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases07S',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "WindowClause/cxml.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "WindowClause/cxml.xsd"),""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'SlidingWindowExpr501'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for sliding window $w in (1, 2, 3, 4) 
      start at $s when fn:true()
      end at $e when $e - $s eq 1
      return $w",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr501.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 2, 2, 3, 3, 4, 4)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr502'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for sliding window $w in (1, 2, 3, 4) 
      start at $s when fn:true()
      only end at $e when $e - $s eq 1
      return $w",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr502.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 2, 2, 3, 3, 4)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr503'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for sliding window $w in (1, 2, 3, 4) 
      start $s at $s previous $s when fn:true()
      only end $s at $s previous $s when $s - $s eq 1
      return $w",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr503.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0089") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0103") of 
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
'TumblingWindowExpr503'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for tumbling window $w in (1, 2, 3, 4) 
      start $s at $s previous $s when fn:true()
      only end $s at $s previous $s when $s - $s eq 1
      return $w",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr503.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase01'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<table>{
  for tumbling window $w in ./doc/*
    start at $x when fn:true()
    end at $y when $y - $x = 2
  return
    <tr>{
      for $i in $w
      return
        <td>{data($i)}</td>
    }</tr>
}</table>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases01',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase01.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase01S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase02'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<chapter>{
  for tumbling window $w in ./body/*
    start previous $s when $s[self::h2]
    end next $e when $e[self::h2]
  return
    <section title=\"{data($s)}\">{
       for $x in $w
       return
         <para>{data($x)}</para>
  }</section>
}</chapter>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases02',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase02.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<chapter><section title=\"heading1\"><para>para1</para><para>para2</para></section><section title=\"heading2\"><para>para3</para><para>para4</para><para>para5</para></section></chapter>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase02S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase03'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<doc>{
for tumbling window $w in ./doc/*
  start $x when $x[self::dt]
  end $y next $z when $y[self::dd] and $z[self::dt]
return
  <term>{
    $w
  }</term>
}</doc>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases03',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase03.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<doc><term><dt>XML</dt><dd>Extensible Markup Language</dd></term><term><dt>XSLT</dt><dt>XSL Transformations</dt><dd>A language for transforming XML</dd><dd>A specification produced by W3C</dd></term></doc>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase03S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase04'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
let $MAX_DIFF := 2

for sliding window $w in ./stream/event
  start  $s_curr at $s_pos previous $s_prev
    when ($s_curr/@time ne $s_prev/@time) or (empty($s_prev))
  only end next $e_next
    when $e_next/@time - $s_curr/@time gt $MAX_DIFF
return
  avg( $w/@temp )
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases04',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase04.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"8, 9, 17, 18") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase04S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase05'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
let $SMOOTH_CONST := 0.2

for sliding window $w in ./stream/event
  start at $s_pos when true()
  only end at $e_pos when $e_pos - $s_pos eq 2
return
  round-half-to-even($SMOOTH_CONST * data($w[3]/@temp) + (1 - $SMOOTH_CONST) *
    ( $SMOOTH_CONST * data($w[2]/@temp) +
      (1 - $SMOOTH_CONST) * data($w[1]/@temp) ), 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases04',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase05.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"8.88, 8.68, 12.32, 15.24, 23.92") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase05S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase06'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
for sliding window $w in ./stream/event
  start  $s_curr when fn:true()
  only end next $next when $next/@time > $s_curr/@time + 3
return
  let $avg := fn:avg($w/@temp)
  where $avg * 2 lt xs:double($next/@temp) or $avg div 2 gt xs:double($next/@temp)
  return <alarm>Outlier detected. Event id:{data($next/@time)}</alarm>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases04',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase06.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<alarm>Outlier detected. Event id:5</alarm>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase06S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase07'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for tumbling window $w in ./stream/event
    start  $s when $s/person eq \"Anton\" and $s/direction eq \"in\"
    only end $e next $n when  xs:dateTime($n/@time) - xs:dateTime($s/@time) gt
      xs:dayTimeDuration(\"PT1H\")
      or  ($e/person eq \"Barbara\" and $e/direction eq \"in\")
      or ($e/person eq \"Anton\" and $e/direction eq \"out\")
  where $e/person eq \"Barbara\" and $e/direction eq \"in\"
  return
    <warning time=\"{ $e/@time }\">Barbara: Anton arrived 1h ago</warning>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase07.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><warning time=\"2006-01-01T11:00:00-00:00\">Barbara: Anton arrived 1h ago</warning></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase07S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase08'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
for sliding window $w in ./stream/event
  start  $s when $s/direction eq \"in\"
  only end  $e when $s/person eq $e/person and
    $e/direction eq \"out\"
return
  <working-time>
      {$s/person}
      <time>{ xs:dateTime($e/@time) - xs:dateTime($s/@time)}</time>
  </working-time>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase08.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><working-time><person>Anton</person><time>PT4H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT1H</time></working-time><working-time><person>Anton</person><time>PT5H</time></working-time><working-time><person>Clara</person><time>PT10M</time></working-time><working-time><person>Clara</person><time>PT5M</time></working-time><working-time><person>Clara</person><time>PT15M</time></working-time><working-time><person>Clara</person><time>PT2H15M</time></working-time></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase08S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase09'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
for sliding window $w in ./stream/event
  start  $s when $s/direction eq \"in\"
  only end  $e when $s/person eq $e/person and
    $e/direction eq \"out\"
let $person := $s/person
let $workingTime := xs:dateTime($e/@time) - xs:dateTime($s/@time)
group by $person
order by $person
return
  <working-time>
    <person>{ $person }</person>
    <time>{ sum($workingTime) }</time>
  </working-time>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase09.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><working-time><person>Anton</person><time>PT9H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT3H45M</time></working-time></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase09S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for tumbling window $w in ./stream/event[direction eq \"in\"]
    start  $s when fn:true()
    end next $e when xs:date( xs:dateTime($s/@time) ) ne xs:date( xs:dateTime($e/@time) )
  let $date := xs:date(xs:dateTime($s/@time))
  where not($w[person eq \"Barbara\"])
  return <alert date=\"{ $date }\">Barbara did not come to work</alert>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><alert date=\"2006-01-02Z\">Barbara did not come to work</alert></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase10S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<results>{
  for tumbling window $w in ./stream/event[direction eq \"in\"]
    start when true()
    only end next $x when  $x/person eq \"Clara\"
  return
    <result time=\"{ $x/@time }\">{
      distinct-values(for $y in $w
        where (xs:dateTime($y/@time) + xs:dayTimeDuration(\"PT15M\") ) ge xs:dateTime($x/@time)
        return $y/person)
    }</result>
}</results>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result time=\"2006-01-01T11:15:00-00:00\">Barbara</result><result time=\"2006-01-02T12:00:00-00:00\"/><result time=\"2006-01-02T12:15:00-00:00\">Clara</result><result time=\"2006-01-02T12:25:00-00:00\">Clara</result><result time=\"2006-01-02T14:00:00-00:00\"/></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase11S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
        for tumbling window $w in ./stream/event[direction eq \"in\"]
                start  $x when $x/person = (\"Barbara\", \"Anton\")
                end next $y when xs:dateTime($y/@time) - xs:dateTime($x/@time) gt xs:dayTimeDuration(\"PT30M\")
        where $w[person eq \"Anton\"] and $w[person eq \"Barbara\"]
        return
                <alert time=\"{ xs:dateTime($y/@time) }\">Anton and Barbara just arrived</alert>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><alert time=\"2006-01-01T11:15:00Z\">Anton and Barbara just arrived</alert></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase12S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for sliding window $w in ./stream/event
    start  $s when true()
    end next $e when xs:dateTime($e/@time) - xs:dateTime($s/@time) gt
      xs:dayTimeDuration(\"PT1H\")
  where count($w[person eq $s/person and direction eq \"in\"]) ge 3
  return
    <alert time=\"{ $e/@time }\">{fn:data($s/person)} is suspicious</alert>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><alert time=\"2006-01-02T14:00:00-00:00\">Clara is suspicious</alert></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase13S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for tumbling window $w in ./rss/channel/item
    start  $first when fn:true()
    end next $lookAhead when $first/author ne $lookAhead/author
  where count($w) ge 3
  return <annoying-author>{
      $w[1]/author
    }</annoying-author>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases06',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><annoying-author><author>rokas@e-mail.de</author></annoying-author></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase14S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for tumbling window $w in ./rss/channel/item
    start  $s_curr when true()
    end next $e_next when
      fn:day-from-dateTime(xs:dateTime($e_next/pubDate)) ne
      fn:day-from-dateTime(xs:dateTime($s_curr/pubDate))
  return
    <item>
        <date>{xs:date(xs:dateTime($s_curr/pubDate))}</date>
        {  for $item in $w
                   where fn:contains( xs:string($item/title), 'XQuery')
                   return $item/title   }
      </item>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases06',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><item><date>2003-06-03</date><title>Extending XQuery with Window Functions</title><title>XQueryP: A new programming language is born</title></item><item><date>2003-06-04</date></item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase15S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for tumbling window $w in ./rss/channel/item
    start  $s_curr when true()
    end next $e_next when
      fn:day-from-dateTime(xs:dateTime($e_next/pubDate)) ne
      fn:day-from-dateTime(xs:dateTime($s_curr/pubDate))
  return
    <item>
      <date>{xs:date(xs:dateTime($s_curr/pubDate))}</date>
       {  for $a in fn:distinct-values($w/author)
           return
             <author name=\"{$a}\">
               <titles>
                 { $w[author eq $a]/title }
               </titles>
             </author>
            }
          </item>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases06',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><item><date>2003-06-03</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are important Part 1.</title><title>Why use cases are important Part 2.</title><title>Why use cases are important Part 3.</title></titles></author><author name=\"tim@e-mail.de\"><titles><title>Extending XQuery with Window Functions</title></titles></author><author name=\"david@e-mail.de\"><titles><title>XQueryP: A new programming language is born</title></titles></author></item><item><date>2003-06-04</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are annoying to write.</title></titles></author></item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase16S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
for sliding window $w in ./sequence/*
  start  $cur previous $prev
   when day-from-dateTime($cur/@date) ne day-from-dateTime($prev/@date) or empty($prev)
  end $end next $next
   when day-from-dateTime(xs:dateTime($end/@date)) ne
day-from-dateTime(xs:dateTime($next/@date))
return
  <mostValuableCustomer endOfDay=\"{xs:dateTime($cur/@date)}\">{
    let $companies :=   for $x in distinct-values($w/@billTo )
                        return <amount company=\"{$x}\">{sum($w[@billTo eq $x]/@total)}</amount>
    let $max := max($companies)
    for $company in $companies
    where $company eq xs:untypedAtomic($max)
    return $company
  }</mostValuableCustomer>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases07',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><mostValuableCustomer endOfDay=\"2006-01-01T00:00:00Z\"><amount company=\"ACME1\">1100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-02T00:00:00Z\"><amount company=\"ACME1\">10000</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-03T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-04T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-05T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-06T00:00:00Z\"><amount company=\"ACME2\">100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-07T00:00:00Z\"/></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase17S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for sliding window $w in ./sequence/*
    start $s when $s[self::OrderRequest]
    end   $e when $e/@orderID eq  $s/@orderID
             and ($e[self::ConfirmationRequest] and $e/@status eq \"reject\"
                  or $e[self::ShipNotice])
  where $e[self::ShipNotice]
  return
    <timeToShip orderID=\"{ $s/@orderID}\">{xs:dateTime($e/@date) - xs:dateTime($s/@date) }</timeToShip>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases07',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><timeToShip orderID=\"OID01\">P3DT22H</timeToShip><timeToShip orderID=\"OID03\">P2DT19H</timeToShip></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase18S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'WindowingUseCase19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
<result>{
  for sliding window $w in ./sequence/*
    start previous $wSPrev when $wSPrev[self::OrderRequest]
    end next $wENext when $wENext/@orderID eq  $wSPrev/@orderID
        and ($wENext[self::ConfirmationRequest] and $wENext/@status eq \"reject\"
                 or $wENext[self::ShipNotice])
  where $wENext[self::ShipNotice]
  return
    <bundleWith orderId=\"{$wSPrev/@orderID}\">{
        for sliding window $bundle in $w
          start  $bSCur
            when $bSCur[self::OrderRequest] and $bSCur/@shipTo eq $wSPrev/@shipTo
          end  $bECur next $bENext
            when $bECur/@orderID eq  $bSCur/@orderID
             and ($bECur[self::ConfirmationRequest] and $bECur/@status eq \"reject\"
              or $bECur[self::ShipNotice])
          where empty($bENext)
          return $bSCur
    }</bundleWith>
}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('WindowingUseCases07',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowingUseCase19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><bundleWith orderId=\"OID01\"><OrderRequest billTo=\"ACME1\" date=\"2006-01-02T14:00:00-00:00\" orderID=\"OID03\" shipTo=\"ACME1\" total=\"10000\" type=\"new\">
    <Item partID=\"ID3\" quantity=\"100\" unitPrice=\"100\"/>
  </OrderRequest></bundleWith><bundleWith orderId=\"OID03\"/></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowingUseCase19S'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'TumblingWindowExpr504'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for tumbling window $w in (1, 2, 3, 4) 
      start $s at $ps previous $pps when fn:true()
      only end $s at $ps previous $pps when $ps - $ps eq 1
      return $w",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr504.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr504'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for sliding window $w in (1, 2, 3, 4) 
      start $s at $ps previous $pps when fn:true()
      only end $s at $ps previous $pps when $ps - $ps eq 1
      return $w",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr504.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr505'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for sliding window $w in (1, 2, 3, 4) 
      start at $s when fn:true()
      end at $e  when $s - $e eq 1
      return $s",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr505.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"$result[1] instance of xs:integer") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr505'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for tumbling window $w in (1, 2, 3, 4) 
      start at $s when fn:true()
      end at $e  when $s - $e eq 1
      return $s",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr505.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"$result[1] instance of xs:integer") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr506'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1, 2, 3, 4, 14, 13, 12, 11) 
          start $s when fn:true()
          only end $e when $e eq $s + 10
          return string-join($w!string(), ' ')
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr506.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1 2 3 4 14 13 12 11\", \"2 3 4 14 13 12\", \"3 4 14 13\", \"4 14\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr507'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w as xs:integer+ in (1, 2, \"london\", 3, 4, \"paris\")
          start $start when $start instance of xs:integer
          only end next $beyond when $beyond instance of xs:string
          return string-join($w!string(), ' ')
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr507.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1 2\", \"2\", \"3 4\", \"4\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr507'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w as xs:integer+ in (1, 2, \"london\", 3, 4, \"paris\")
          start $start when $start instance of xs:integer
          only end next $beyond when $beyond instance of xs:string
          return string-join($w!string(), ' ')
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr507.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1 2\", \"3 4\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr508'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w as xs:integer+ in (1, 2, \"london\", 3, 4.1, \"paris\")
          start $start when $start instance of xs:integer
          only end next $beyond when $beyond instance of xs:string
          return string-join($w!string(), ' ')
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr508.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr508'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w as xs:integer+ in (1, 2, \"london\", 3, 4.1, \"paris\")
          start $start when $start instance of xs:integer
          only end next $beyond when $beyond instance of xs:string
          return string-join($w!string(), ' ')
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr508.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr509'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
            avg(
              for sliding window $w in (1, 2, \"london\", 3, 4, \"paris\")
              start $start when $start instance of xs:integer
              only end next $beyond when $beyond instance of xs:string
              return count($w)
            )
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr509.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr509'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          avg(
              for tumbling window $w in (1, 2, \"london\", 3, 4, \"paris\")
              start $start when $start instance of xs:integer
              only end next $beyond when $beyond instance of xs:string
              return count($w)
            )
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr509.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr510'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when true()
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr510.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr510'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          end $e when true()
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr510.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr511'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr511.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr511'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr511.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr512'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s at $x when true()
          end $e at $y when $y - $x eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr512.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr512'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s at $x when true()
          end $e at $y when $y - $x eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr512.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr513'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s at $x when true()
          only end $e at $y when $y - $x eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr513.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr513'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s at $x when true()
          only end $e at $y when $y - $x eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr513.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr514'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          only end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr514.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr514'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          only end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr514.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr515'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr515.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr515'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr515.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr516'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare namespace window = \"foo:bar\";
          
          for tumbling window $window:w in (1 to 10)
          start $s when true()
          end $e when false() 
          return <window>{$window:w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr516.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr517'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare namespace window = \"foo:bar\";
          
          for tumbling window $Q{foo:bar}w in (1 to 10)
          start $s when true()
          end $e when false() 
          return <window>{$window:w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr517.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr517'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare namespace window = \"foo:bar\";
          
          for sliding window $Q{foo:bar}w in (1 to 10)
          start $s when true()
          end $e when false() 
          return <window>{$window:w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr517.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr518'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare namespace w = \"foo:bar\";
          
          for tumbling window $Q{foo:bar}w in (1 to 10)
          start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()
          end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() 
          return <window>{
            string-join (
              for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)
              return string($w:w), \" \"
            )}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr518.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr518a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare namespace w = \"foo:bar\";
          <window>{
          	for tumbling window $Q{foo:bar}w in (1 to 10)
          	start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()
          	end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() 
          	return 
            	string-join (
              		for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)
              		return string($w:w), \" \"
            )
          }</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr518a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr518'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare namespace w = \"foo:bar\";
          
          for sliding window $Q{foo:bar}w in (1 to 10)
          start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()
          end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() 
          return <window>{
            string-join (
              for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)
              return string($w:w), \" \"
            )}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr518.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window><window>2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9</window><window>3 4 5 6 7 8 9 10 3 3 2 4 10 10 9</window><window>4 5 6 7 8 9 10 4 4 3 5 10 10 9</window><window>5 6 7 8 9 10 5 5 4 6 10 10 9</window><window>6 7 8 9 10 6 6 5 7 10 10 9</window><window>7 8 9 10 7 7 6 8 10 10 9</window><window>8 9 10 8 8 7 9 10 10 9</window><window>9 10 9 9 8 10 10 10 9</window><window>10 10 10 9 10 10 9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr519'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when $e - $w eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr519.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr519'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          end $e when $e - $w eq 2
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr519.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr520'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $w when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr520.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr521'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $w when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr521.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr522'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s at $w when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr522.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr523'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e at $w when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr523.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr524'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s previous $w when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr524.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr525'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s next $w when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr525.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr526'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e previous $w when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr526.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr527'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e next $w when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr527.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr528'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $s when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr528.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0103") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr529'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s at $x previous $sp next $sn when true()
          end $e at $y previous $ep next $en when false() 
          where count($w) eq 10 and $x eq 1 and empty($sp) and $sn eq 2 and $e eq 10 and $y eq 10 and $ep eq 9 and empty($en)
          return true()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr529.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr529'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s at $x previous $sp next $sn when true()
          end $e at $y previous $ep next $en when false() 
          where count($w) eq 10 and $x eq 1 and empty($sp) and $sn eq 2 and $e eq 10 and $y eq 10 and $ep eq 9 and empty($en)
          return true()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr529.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr530'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in ()
          start $s at $x previous $sp next $sn when true()
          end $e at $y previous $ep next $en when false() 
          return ($w, $s, $x, $sp, $sn, $e, $y, $ep, $en)
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr530.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr531'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)
          start $first when $first mod 3 = 0
          return <window>{ $w }</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr531.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>6 8 10</window><window>12 14</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr531a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        <o>{
          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)
          start $first when $first mod 3 = 0
          return <window>{ $w }</window>
        }</o>  
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr531a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<o><window>6 8 10</window><window>12 14</window></o>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr532'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for $w in (1 to 2)
          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)
          start $first when $first mod 3 = 0
          return <window>{ $w }</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr532.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>6 8 10</window><window>12 14</window><window>6 8 10</window><window>12 14</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr533'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for $w at $y in (1 to 2)
          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)
          start $first when $first mod $y = 0
          return <window>{ $y }</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr533.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr534'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for $x1 in 11
          for $x2 in 12
          for $x3 in 13
          for $x4 in 14
          for $x5 in 15
          for $x6 in 16
          for $x7 in 17
          for $x8 in 18
          for $x9 in 19
          for tumbling window $x1 in (1 to 10)
          start $x2 at $x3 previous $x4 next $x5 when true()
          end $x6 at $x7 previous $x8 next $x9 when false()
          return 
            string-join(
              for $i in ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8, $x9)
              return string($i), \" \"
            )
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr534.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr534'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for $x1 in 11
          for $x2 in 12
          for $x3 in 13
          for $x4 in 14
          for $x5 in 15
          for $x6 in 16
          for $x7 in 17
          for $x8 in 18
          for $x9 in 19
          for sliding window $x1 in (1 to 10)
          start $x2 at $x3 previous $x4 next $x5 when true()
          end $x6 at $x7 previous $x8 next $x9 when false()
          return 
            string-join(
              for $i in ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8, $x9)
              return string($i), \" \"
            )
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr534.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9 2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9 3 4 5 6 7 8 9 10 3 3 2 4 10 10 9 4 5 6 7 8 9 10 4 4 3 5 10 10 9 5 6 7 8 9 10 5 5 4 6 10 10 9 6 7 8 9 10 6 6 5 7 10 10 9 7 8 9 10 7 7 6 8 10 10 9 8 9 10 8 8 7 9 10 10 9 9 10 9 9 8 10 10 10 9 10 10 10 9 10 10 9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr535a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s next $sn previous $pn when true()
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr535a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr535b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          end $e next $en previous $en when true()
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr535b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr536'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          let $stock :=
            <stock>
              <closing> <date>2008-01-01</date> <price>105</price> </closing>
              <closing> <date>2008-01-02</date> <price>101</price> </closing>
              <closing> <date>2008-01-03</date> <price>102</price> </closing>
              <closing> <date>2008-01-04</date> <price>103</price> </closing>
              <closing> <date>2008-01-05</date> <price>102</price> </closing>
              <closing> <date>2008-01-06</date> <price>104</price> </closing>
            </stock>
          for tumbling window $w in $stock//closing
             start $first next $second when $first/price < $second/price
             end $last next $beyond when $last/price > $beyond/price
          return
             <run-up>
                <start-date>{fn:data($first/date)}</start-date>
                <start-price>{fn:data($first/price)}</start-price>
                <end-date>{fn:data($last/date)}</end-date>
                <end-price>{fn:data($last/price)}</end-price>
             </run-up>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr536.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<run-up><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up><start-date>2008-01-05</start-date><start-price>102</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr537'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          count $r
          return <window num=\"{$r}\">{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr537.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window><window num=\"3\">7 8 9</window><window num=\"4\">10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr538'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          count $r
          where $r le 2
          return <window num=\"{$r}\">{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr538.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr538'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          count $r
          where $r le 2
          return <window num=\"{$r}\">{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr538.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">1 2 3</window><window num=\"2\">2 3 4</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr539'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for $i in 1 to 3
          count $r
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          where $w = $r + 1
          return <window num=\"{$r}\">{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr539.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">1 2 3</window><window num=\"2\">1 2 3</window><window num=\"3\">4 5 6</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr539'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for $i in 1 to 3
          count $r
          for sliding window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s eq 2
          where $w = $r + 1
          return <window num=\"{$r}\">{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr539.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">1 2 3</window><window num=\"1\">2 3 4</window><window num=\"2\">1 2 3</window><window num=\"2\">2 3 4</window><window num=\"2\">3 4 5</window><window num=\"3\">2 3 4</window><window num=\"3\">3 4 5</window><window num=\"3\">4 5 6</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr540'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          only end $e when $e - $s eq 2
          order by $w[2] descending
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr540.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>7 8 9</window><window>4 5 6</window><window>1 2 3</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr540'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          only end $e when $e - $s eq 2
          order by $w[2] descending
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr540.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>8 9 10</window><window>7 8 9</window><window>6 7 8</window><window>5 6 7</window><window>4 5 6</window><window>3 4 5</window><window>2 3 4</window><window>1 2 3</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr541'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w1 in
            for tumbling window $w2 in (1 to 10)
            start $s when true()
            only end $e when $e - $s eq 2
            return $w2
          start $s when true()
          end $e when $e - $s eq 2
          return <window>{$w2}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr541.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr542'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w1 in
            for tumbling window $w2 in (1 to 10)
            start $s when true()
            only end $e when $e - $s eq 2
            return $w2
          start $s when true()
          end $e when $e - $s eq 2
          return <window>{$w1}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr542.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr544'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          only end $e when $e - $s eq 2
          count $r
          return
            <window num=\"{$r}\">{
              for $i in $w
              order by $i descending
              return $i
            }</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr544.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">3 2 1</window><window num=\"2\">6 5 4</window><window num=\"3\">9 8 7</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr544'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 10)
          start $s when true()
          only end $e when $e - $s eq 2
          count $r
          return
            <window num=\"{$r}\">{
              for $i in $w
              order by $i descending
              return $i
            }</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr544.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window num=\"1\">3 2 1</window><window num=\"2\">4 3 2</window><window num=\"3\">5 4 3</window><window num=\"4\">6 5 4</window><window num=\"5\">7 6 5</window><window num=\"6\">8 7 6</window><window num=\"7\">9 8 7</window><window num=\"8\">10 9 8</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr545'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          let $s := <stocks>
            <closing> <symbol>ABC</symbol> <date>2008-01-01</date> <price>105</price> </closing>
            <closing> <symbol>DEF</symbol> <date>2008-01-01</date> <price>057</price> </closing>
            <closing> <symbol>ABC</symbol> <date>2008-01-02</date> <price>101</price> </closing>
            <closing> <symbol>DEF</symbol> <date>2008-01-02</date> <price>054</price> </closing>
            <closing> <symbol>ABC</symbol> <date>2008-01-03</date> <price>102</price> </closing>
            <closing> <symbol>DEF</symbol> <date>2008-01-03</date> <price>056</price> </closing>
            <closing> <symbol>ABC</symbol> <date>2008-01-04</date> <price>103</price> </closing>
            <closing> <symbol>DEF</symbol> <date>2008-01-04</date> <price>052</price> </closing>
            <closing> <symbol>ABC</symbol> <date>2008-01-05</date> <price>101</price> </closing>
            <closing> <symbol>DEF</symbol> <date>2008-01-05</date> <price>055</price> </closing>
            <closing> <symbol>ABC</symbol> <date>2008-01-06</date> <price>104</price> </closing>
            <closing> <symbol>DEF</symbol> <date>2008-01-06</date> <price>059</price> </closing>
          </stocks>
          for $closings in $s//closing
          let $symbol := $closings/symbol
          group by $symbol
          for tumbling window $w in $closings
             start $first next $second when $first/price < $second/price
             end $last next $beyond when $last/price > $beyond/price
          return
             <run-up symbol=\"{$symbol}\">
                <start-date>{fn:data($first/date)}</start-date>
                <start-price>{fn:data($first/price)}</start-price>
                <end-date>{fn:data($last/date)}</end-date>
                <end-price>{fn:data($last/price)}</end-price>
             </run-up>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr545.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>") of 
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
'TumblingWindowExpr546'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare function local:window()
          {
            for tumbling window $w in (1 to 10)
            start $s when true()
            end $e when $e - $s eq 3
            return <window>{$w}</window>
          };
          
          local:window()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr546.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3 4</window><window>5 6 7 8</window><window>9 10</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr547'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s at $x as xs:integer when true()
          end $e when $e - $s eq 3
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr547.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr549'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s next $sn as xs:integer when true()
          end $e when $e - $s eq 3
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr549.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr550'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 3)
          start when true()
          end when false()
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr550.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'SlidingWindowExpr550'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for sliding window $w in (1 to 3)
          start when true()
          end when false()
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "SlidingWindowExpr550.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1 2 3</window><window>2 3</window><window>3</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr551'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for tumbling window $w in (1 to 10)
          start $s when true()
          end $e when $e - $s
          return $w instance of xs:integer
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr551.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), false(), false(), false(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr552'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare function local:window($seq)
          {
            for tumbling window $w in $seq
            start $s when true()
            end $e when $e - $s eq 3
            return
            <window>{
              if ($w instance of xs:integer)
              then
                $w
              else
                $s
            }</window>
          };
          
          local:window(1 to 10)
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr552.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1</window><window>5</window><window>9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr553'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare variable $local:foo as xs:integer* := 1 to 10;
          
          declare function local:window()
          {
            for tumbling window $w in $local:foo
            start $s when true()
            end $e when $e - $s eq 3
            return
            <window>{
              if ($w instance of xs:integer)
              then
                $w
              else
                $s
            }</window>
          };
          
          local:window()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr553.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1</window><window>5</window><window>9</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr554'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare variable $local:foo as xs:integer* := 1 to 5;
          
          declare function local:window()
          {
            for tumbling window $w1 in $local:foo
            start $s when true()
            end $e when $e - $s eq 3
            for tumbling window $w2 in $w1
            start $s when true()
            end $e when true()
            return
            <window>{
              fn:distinct-values($w1[.=$w2])
            }</window>
          };
          
          local:window()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr554.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'TumblingWindowExpr555'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          declare variable $local:foo as xs:integer* := 1 to 10;
          
          declare function local:window()
          {
            for tumbling window $w in $local:foo
            start $s when false()
            end $e when false()
            return
              <window>{$w}</window>
          };
          
          local:window()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "TumblingWindowExpr555.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'WindowExpr500'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          for window $w in (1 to 10)
          start $s when true()
          end $e when false() 
          return <window>{$w}</window>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "WindowExpr500.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
