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
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
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
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('WindowingUseCases01') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/arrange_rows.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases01S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/arrange_rows.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/arrange_rows.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases02') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/head_para.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases02S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/head_para.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/head_para.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases03') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/term_def_list.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases03S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/term_def_list.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/term_def_list.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases04') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/temp_events.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases04S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/temp_events.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/temp_events.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases05') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/person_events.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases05S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/person_events.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/person_events.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases06') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/rss.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases06S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/rss.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/rss.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases07') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/cxml.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('WindowingUseCases07S') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/cxml.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/WindowClause/cxml.xsd",""}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'SlidingWindowExpr501'(_Config) ->
   Qry = "for sliding window $w in (1, 2, 3, 4) \n      start at $s when fn:true()\n      end at $e when $e - $s eq 1\n      return $w",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            (1, 2, 2, 3, 3, 4, 4)\n        ",
 Tst = xqerl:run("(1, 2, 2, 3, 3, 4, 4)"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'SlidingWindowExpr502'(_Config) ->
   Qry = "for sliding window $w in (1, 2, 3, 4) \n      start at $s when fn:true()\n      only end at $e when $e - $s eq 1\n      return $w",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            (1, 2, 2, 3, 3, 4)\n        ",
 Tst = xqerl:run("(1, 2, 2, 3, 3, 4)"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'SlidingWindowExpr503'(_Config) ->
   Qry = "for sliding window $w in (1, 2, 3, 4) \n      start $s at $s previous $s when fn:true()\n      only end $s at $s previous $s when $s - $s eq 1\n      return $w",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                \n                \n            \n        ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0089") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'TumblingWindowExpr503'(_Config) ->
   Qry = "for tumbling window $w in (1, 2, 3, 4) \n      start $s at $s previous $s when fn:true()\n      only end $s at $s previous $s when $s - $s eq 1\n      return $w",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n			\n		",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'WindowingUseCase01'(_Config) ->
   Qry = "\n<table>{\n  for tumbling window $w in ./doc/*\n    start at $x when fn:true()\n    end at $y when $y - $x = 2\n  return\n    <tr>{\n      for $i in $w\n      return\n        <td>{data($i)}</td>\n    }</tr>\n}</table>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases01')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase01S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase02'(_Config) ->
   Qry = "\n<chapter>{\n  for tumbling window $w in ./body/*\n    start previous $s when $s[self::h2]\n    end next $e when $e[self::h2]\n  return\n    <section title=\"{data($s)}\">{\n       for $x in $w\n       return\n         <para>{data($x)}</para>\n  }</section>\n}</chapter>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases02')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <chapter><section title=\"heading1\"><para>para1</para><para>para2</para></section><section title=\"heading2\"><para>para3</para><para>para4</para><para>para5</para></section></chapter>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<chapter><section title=\"heading1\"><para>para1</para><para>para2</para></section><section title=\"heading2\"><para>para3</para><para>para4</para><para>para5</para></section></chapter>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<chapter><section title=\"heading1\"><para>para1</para><para>para2</para></section><section title=\"heading2\"><para>para3</para><para>para4</para><para>para5</para></section></chapter>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase02S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase03'(_Config) ->
   Qry = "\n<doc>{\nfor tumbling window $w in ./doc/*\n  start $x when $x[self::dt]\n  end $y next $z when $y[self::dd] and $z[self::dt]\nreturn\n  <term>{\n    $w\n  }</term>\n}</doc>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases03')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <doc><term><dt>XML</dt><dd>Extensible Markup Language</dd></term><term><dt>XSLT</dt><dt>XSL Transformations</dt><dd>A language for transforming XML</dd><dd>A specification produced by W3C</dd></term></doc>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<doc><term><dt>XML</dt><dd>Extensible Markup Language</dd></term><term><dt>XSLT</dt><dt>XSL Transformations</dt><dd>A language for transforming XML</dd><dd>A specification produced by W3C</dd></term></doc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<doc><term><dt>XML</dt><dd>Extensible Markup Language</dd></term><term><dt>XSLT</dt><dt>XSL Transformations</dt><dd>A language for transforming XML</dd><dd>A specification produced by W3C</dd></term></doc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase03S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase04'(_Config) ->
   Qry = "\nlet $MAX_DIFF := 2\n\nfor sliding window $w in ./stream/event\n  start  $s_curr at $s_pos previous $s_prev\n    when ($s_curr/@time ne $s_prev/@time) or (empty($s_prev))\n  only end next $e_next\n    when $e_next/@time - $s_curr/@time gt $MAX_DIFF\nreturn\n  avg( $w/@temp )\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases04')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         8 9 17 18\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"8 9 17 18"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "8 9 17 18" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase04S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase05'(_Config) ->
   Qry = "\nlet $SMOOTH_CONST := 0.2\n\nfor sliding window $w in ./stream/event\n  start at $s_pos when true()\n  only end at $e_pos when $e_pos - $s_pos eq 2\nreturn\n  round-half-to-even($SMOOTH_CONST * data($w[3]/@temp) + (1 - $SMOOTH_CONST) *\n    ( $SMOOTH_CONST * data($w[2]/@temp) +\n      (1 - $SMOOTH_CONST) * data($w[1]/@temp) ), 2)\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases04')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        8.88 8.68 12.32 15.24 23.92\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"8.88 8.68 12.32 15.24 23.92"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "8.88 8.68 12.32 15.24 23.92" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase05S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase06'(_Config) ->
   Qry = "\nfor sliding window $w in ./stream/event\n  start  $s_curr when fn:true()\n  only end next $next when $next/@time > $s_curr/@time + 3\nreturn\n  let $avg := fn:avg($w/@temp)\n  where $avg * 2 lt xs:double($next/@temp) or $avg div 2 gt xs:double($next/@temp)\n  return <alarm>Outlier detected. Event id:{data($next/@time)}</alarm>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases04')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <alarm>Outlier detected. Event id:5</alarm>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<alarm>Outlier detected. Event id:5</alarm>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<alarm>Outlier detected. Event id:5</alarm>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase06S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase07'(_Config) ->
   Qry = "\n<result>{\n  for tumbling window $w in ./stream/event\n    start  $s when $s/person eq \"Anton\" and $s/direction eq \"in\"\n    only end $e next $n when  xs:dateTime($n/@time) - xs:dateTime($s/@time) gt\n      xs:dayTimeDuration(\"PT1H\")\n      or  ($e/person eq \"Barbara\" and $e/direction eq \"in\")\n      or ($e/person eq \"Anton\" and $e/direction eq \"out\")\n  where $e/person eq \"Barbara\" and $e/direction eq \"in\"\n  return\n    <warning time=\"{ $e/@time }\">Barbara: Anton arrived 1h ago</warning>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><warning time=\"2006-01-01T11:00:00-00:00\">Barbara: Anton arrived 1h ago</warning></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><warning time=\"2006-01-01T11:00:00-00:00\">Barbara: Anton arrived 1h ago</warning></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><warning time=\"2006-01-01T11:00:00-00:00\">Barbara: Anton arrived 1h ago</warning></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase07S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase08'(_Config) ->
   Qry = "\n<result>{\nfor sliding window $w in ./stream/event\n  start  $s when $s/direction eq \"in\"\n  only end  $e when $s/person eq $e/person and\n    $e/direction eq \"out\"\nreturn\n  <working-time>\n      {$s/person}\n      <time>{ xs:dateTime($e/@time) - xs:dateTime($s/@time)}</time>\n  </working-time>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><working-time><person>Anton</person><time>PT4H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT1H</time></working-time><working-time><person>Anton</person><time>PT5H</time></working-time><working-time><person>Clara</person><time>PT10M</time></working-time><working-time><person>Clara</person><time>PT5M</time></working-time><working-time><person>Clara</person><time>PT15M</time></working-time><working-time><person>Clara</person><time>PT2H15M</time></working-time></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><working-time><person>Anton</person><time>PT4H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT1H</time></working-time><working-time><person>Anton</person><time>PT5H</time></working-time><working-time><person>Clara</person><time>PT10M</time></working-time><working-time><person>Clara</person><time>PT5M</time></working-time><working-time><person>Clara</person><time>PT15M</time></working-time><working-time><person>Clara</person><time>PT2H15M</time></working-time></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><working-time><person>Anton</person><time>PT4H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT1H</time></working-time><working-time><person>Anton</person><time>PT5H</time></working-time><working-time><person>Clara</person><time>PT10M</time></working-time><working-time><person>Clara</person><time>PT5M</time></working-time><working-time><person>Clara</person><time>PT15M</time></working-time><working-time><person>Clara</person><time>PT2H15M</time></working-time></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase08S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase09'(_Config) ->
   Qry = "\n<result>{\nfor sliding window $w in ./stream/event\n  start  $s when $s/direction eq \"in\"\n  only end  $e when $s/person eq $e/person and\n    $e/direction eq \"out\"\nlet $person := $s/person\nlet $workingTime := xs:dateTime($e/@time) - xs:dateTime($s/@time)\ngroup by $person\norder by $person\nreturn\n  <working-time>\n    <person>{ $person }</person>\n    <time>{ sum($workingTime) }</time>\n  </working-time>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><working-time><person>Anton</person><time>PT9H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT3H45M</time></working-time></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><working-time><person>Anton</person><time>PT9H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT3H45M</time></working-time></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><working-time><person>Anton</person><time>PT9H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT3H45M</time></working-time></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase09S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase10'(_Config) ->
   Qry = "\n<result>{\n  for tumbling window $w in ./stream/event[direction eq \"in\"]\n    start  $s when fn:true()\n    end next $e when xs:date( xs:dateTime($s/@time) ) ne xs:date( xs:dateTime($e/@time) )\n  let $date := xs:date(xs:dateTime($s/@time))\n  where not($w[person eq \"Barbara\"])\n  return <alert date=\"{ $date }\">Barbara did not come to work</alert>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><alert date=\"2006-01-02Z\">Barbara did not come to work</alert></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><alert date=\"2006-01-02Z\">Barbara did not come to work</alert></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><alert date=\"2006-01-02Z\">Barbara did not come to work</alert></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase10S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase11'(_Config) ->
   Qry = "\n<results>{\n  for tumbling window $w in ./stream/event[direction eq \"in\"]\n    start when true()\n    only end next $x when  $x/person eq \"Clara\"\n  return\n    <result time=\"{ $x/@time }\">{\n      distinct-values(for $y in $w\n        where (xs:dateTime($y/@time) + xs:dayTimeDuration(\"PT15M\") ) ge xs:dateTime($x/@time)\n        return $y/person)\n    }</result>\n}</results>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <results><result time=\"2006-01-01T11:15:00-00:00\">Barbara</result><result time=\"2006-01-02T12:00:00-00:00\"/><result time=\"2006-01-02T12:15:00-00:00\">Clara</result><result time=\"2006-01-02T12:25:00-00:00\">Clara</result><result time=\"2006-01-02T14:00:00-00:00\"/></results>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<results><result time=\"2006-01-01T11:15:00-00:00\">Barbara</result><result time=\"2006-01-02T12:00:00-00:00\"/><result time=\"2006-01-02T12:15:00-00:00\">Clara</result><result time=\"2006-01-02T12:25:00-00:00\">Clara</result><result time=\"2006-01-02T14:00:00-00:00\"/></results>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<results><result time=\"2006-01-01T11:15:00-00:00\">Barbara</result><result time=\"2006-01-02T12:00:00-00:00\"/><result time=\"2006-01-02T12:15:00-00:00\">Clara</result><result time=\"2006-01-02T12:25:00-00:00\">Clara</result><result time=\"2006-01-02T14:00:00-00:00\"/></results>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase11S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase12'(_Config) ->
   Qry = "\n<result>{\n        for tumbling window $w in ./stream/event[direction eq \"in\"]\n                start  $x when $x/person = (\"Barbara\", \"Anton\")\n                end next $y when xs:dateTime($y/@time) - xs:dateTime($x/@time) gt xs:dayTimeDuration(\"PT30M\")\n        where $w[person eq \"Anton\"] and $w[person eq \"Barbara\"]\n        return\n                <alert time=\"{ xs:dateTime($y/@time) }\">Anton and Barbara just arrived</alert>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><alert time=\"2006-01-01T11:15:00Z\">Anton and Barbara just arrived</alert></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><alert time=\"2006-01-01T11:15:00Z\">Anton and Barbara just arrived</alert></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><alert time=\"2006-01-01T11:15:00Z\">Anton and Barbara just arrived</alert></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase12S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase13'(_Config) ->
   Qry = "\n<result>{\n  for sliding window $w in ./stream/event\n    start  $s when true()\n    end next $e when xs:dateTime($e/@time) - xs:dateTime($s/@time) gt\n      xs:dayTimeDuration(\"PT1H\")\n  where count($w[person eq $s/person and direction eq \"in\"]) ge 3\n  return\n    <alert time=\"{ $e/@time }\">{fn:data($s/person)} is suspicious</alert>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases05')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><alert time=\"2006-01-02T14:00:00-00:00\">Clara is suspicious</alert></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><alert time=\"2006-01-02T14:00:00-00:00\">Clara is suspicious</alert></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><alert time=\"2006-01-02T14:00:00-00:00\">Clara is suspicious</alert></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase13S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase14'(_Config) ->
   Qry = "\n<result>{\n  for tumbling window $w in ./rss/channel/item\n    start  $first when fn:true()\n    end next $lookAhead when $first/author ne $lookAhead/author\n  where count($w) ge 3\n  return <annoying-author>{\n      $w[1]/author\n    }</annoying-author>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases06')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><annoying-author><author>rokas@e-mail.de</author></annoying-author></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><annoying-author><author>rokas@e-mail.de</author></annoying-author></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><annoying-author><author>rokas@e-mail.de</author></annoying-author></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase14S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase15'(_Config) ->
   Qry = "\n<result>{\n  for tumbling window $w in ./rss/channel/item\n    start  $s_curr when true()\n    end next $e_next when\n      fn:day-from-dateTime(xs:dateTime($e_next/pubDate)) ne\n      fn:day-from-dateTime(xs:dateTime($s_curr/pubDate))\n  return\n    <item>\n        <date>{xs:date(xs:dateTime($s_curr/pubDate))}</date>\n        {  for $item in $w\n                   where fn:contains( xs:string($item/title), 'XQuery')\n                   return $item/title   }\n      </item>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases06')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><item><date>2003-06-03</date><title>Extending XQuery with Window Functions</title><title>XQueryP: A new programming language is born</title></item><item><date>2003-06-04</date></item></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><item><date>2003-06-03</date><title>Extending XQuery with Window Functions</title><title>XQueryP: A new programming language is born</title></item><item><date>2003-06-04</date></item></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><item><date>2003-06-03</date><title>Extending XQuery with Window Functions</title><title>XQueryP: A new programming language is born</title></item><item><date>2003-06-04</date></item></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase15S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase16'(_Config) ->
   Qry = "\n<result>{\n  for tumbling window $w in ./rss/channel/item\n    start  $s_curr when true()\n    end next $e_next when\n      fn:day-from-dateTime(xs:dateTime($e_next/pubDate)) ne\n      fn:day-from-dateTime(xs:dateTime($s_curr/pubDate))\n  return\n    <item>\n      <date>{xs:date(xs:dateTime($s_curr/pubDate))}</date>\n       {  for $a in fn:distinct-values($w/author)\n           return\n             <author name=\"{$a}\">\n               <titles>\n                 { $w[author eq $a]/title }\n               </titles>\n             </author>\n            }\n          </item>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases06')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><item><date>2003-06-03</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are important Part 1.</title><title>Why use cases are important Part 2.</title><title>Why use cases are important Part 3.</title></titles></author><author name=\"tim@e-mail.de\"><titles><title>Extending XQuery with Window Functions</title></titles></author><author name=\"david@e-mail.de\"><titles><title>XQueryP: A new programming language is born</title></titles></author></item><item><date>2003-06-04</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are annoying to write.</title></titles></author></item></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><item><date>2003-06-03</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are important Part 1.</title><title>Why use cases are important Part 2.</title><title>Why use cases are important Part 3.</title></titles></author><author name=\"tim@e-mail.de\"><titles><title>Extending XQuery with Window Functions</title></titles></author><author name=\"david@e-mail.de\"><titles><title>XQueryP: A new programming language is born</title></titles></author></item><item><date>2003-06-04</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are annoying to write.</title></titles></author></item></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><item><date>2003-06-03</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are important Part 1.</title><title>Why use cases are important Part 2.</title><title>Why use cases are important Part 3.</title></titles></author><author name=\"tim@e-mail.de\"><titles><title>Extending XQuery with Window Functions</title></titles></author><author name=\"david@e-mail.de\"><titles><title>XQueryP: A new programming language is born</title></titles></author></item><item><date>2003-06-04</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are annoying to write.</title></titles></author></item></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase16S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase17'(_Config) ->
   Qry = "\n<result>{\nfor sliding window $w in ./sequence/*\n  start  $cur previous $prev\n   when day-from-dateTime($cur/@date) ne day-from-dateTime($prev/@date) or empty($prev)\n  end $end next $next\n   when day-from-dateTime(xs:dateTime($end/@date)) ne\nday-from-dateTime(xs:dateTime($next/@date))\nreturn\n  <mostValuableCustomer endOfDay=\"{xs:dateTime($cur/@date)}\">{\n    let $companies :=   for $x in distinct-values($w/@billTo )\n                        return <amount company=\"{$x}\">{sum($w[@billTo eq $x]/@total)}</amount>\n    let $max := max($companies)\n    for $company in $companies\n    where $company eq xs:untypedAtomic($max)\n    return $company\n  }</mostValuableCustomer>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases07')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><mostValuableCustomer endOfDay=\"2006-01-01T00:00:00Z\"><amount company=\"ACME1\">1100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-02T00:00:00Z\"><amount company=\"ACME1\">10000</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-03T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-04T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-05T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-06T00:00:00Z\"><amount company=\"ACME2\">100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-07T00:00:00Z\"/></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><mostValuableCustomer endOfDay=\"2006-01-01T00:00:00Z\"><amount company=\"ACME1\">1100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-02T00:00:00Z\"><amount company=\"ACME1\">10000</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-03T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-04T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-05T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-06T00:00:00Z\"><amount company=\"ACME2\">100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-07T00:00:00Z\"/></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><mostValuableCustomer endOfDay=\"2006-01-01T00:00:00Z\"><amount company=\"ACME1\">1100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-02T00:00:00Z\"><amount company=\"ACME1\">10000</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-03T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-04T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-05T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-06T00:00:00Z\"><amount company=\"ACME2\">100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-07T00:00:00Z\"/></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase17S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase18'(_Config) ->
   Qry = "\n<result>{\n  for sliding window $w in ./sequence/*\n    start $s when $s[self::OrderRequest]\n    end   $e when $e/@orderID eq  $s/@orderID\n             and ($e[self::ConfirmationRequest] and $e/@status eq \"reject\"\n                  or $e[self::ShipNotice])\n  where $e[self::ShipNotice]\n  return\n    <timeToShip orderID=\"{ $s/@orderID}\">{xs:dateTime($e/@date) - xs:dateTime($s/@date) }</timeToShip>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases07')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><timeToShip orderID=\"OID01\">P3DT22H</timeToShip><timeToShip orderID=\"OID03\">P2DT19H</timeToShip></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><timeToShip orderID=\"OID01\">P3DT22H</timeToShip><timeToShip orderID=\"OID03\">P2DT19H</timeToShip></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><timeToShip orderID=\"OID01\">P3DT22H</timeToShip><timeToShip orderID=\"OID03\">P2DT19H</timeToShip></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase18S'(_Config) ->
   {skip,"Validation Environment"}.
'WindowingUseCase19'(_Config) ->
   Qry = "\n<result>{\n  for sliding window $w in ./sequence/*\n    start previous $wSPrev when $wSPrev[self::OrderRequest]\n    end next $wENext when $wENext/@orderID eq  $wSPrev/@orderID\n        and ($wENext[self::ConfirmationRequest] and $wENext/@status eq \"reject\"\n                 or $wENext[self::ShipNotice])\n  where $wENext[self::ShipNotice]\n  return\n    <bundleWith orderId=\"{$wSPrev/@orderID}\">{\n        for sliding window $bundle in $w\n          start  $bSCur\n            when $bSCur[self::OrderRequest] and $bSCur/@shipTo eq $wSPrev/@shipTo\n          end  $bECur next $bENext\n            when $bECur/@orderID eq  $bSCur/@orderID\n             and ($bECur[self::ConfirmationRequest] and $bECur/@status eq \"reject\"\n              or $bECur[self::ShipNotice])\n          where empty($bENext)\n          return $bSCur\n    }</bundleWith>\n}</result>\n      ",
   Env = xqerl_test:handle_environment(environment('WindowingUseCases07')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        <result><bundleWith orderId=\"OID01\"><OrderRequest billTo=\"ACME1\" date=\"2006-01-02T14:00:00-00:00\" orderID=\"OID03\" shipTo=\"ACME1\" total=\"10000\" type=\"new\">\n    <Item partID=\"ID3\" quantity=\"100\" unitPrice=\"100\"/>\n  </OrderRequest></bundleWith><bundleWith orderId=\"OID03\"/></result>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><bundleWith orderId=\"OID01\"><OrderRequest billTo=\"ACME1\" date=\"2006-01-02T14:00:00-00:00\" orderID=\"OID03\" shipTo=\"ACME1\" total=\"10000\" type=\"new\">\n    <Item partID=\"ID3\" quantity=\"100\" unitPrice=\"100\"/>\n  </OrderRequest></bundleWith><bundleWith orderId=\"OID03\"/></result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><bundleWith orderId=\"OID01\"><OrderRequest billTo=\"ACME1\" date=\"2006-01-02T14:00:00-00:00\" orderID=\"OID03\" shipTo=\"ACME1\" total=\"10000\" type=\"new\">\n    <Item partID=\"ID3\" quantity=\"100\" unitPrice=\"100\"/>\n  </OrderRequest></bundleWith><bundleWith orderId=\"OID03\"/></result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WindowingUseCase19S'(_Config) ->
   {skip,"Validation Environment"}.
'TumblingWindowExpr504'(_Config) ->
   Qry = "for tumbling window $w in (1, 2, 3, 4) \n      start $s at $ps previous $pps when fn:true()\n      only end $s at $ps previous $pps when $ps - $ps eq 1\n      return $w",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'SlidingWindowExpr504'(_Config) ->
   Qry = "for sliding window $w in (1, 2, 3, 4) \n      start $s at $ps previous $pps when fn:true()\n      only end $s at $ps previous $pps when $ps - $ps eq 1\n      return $w",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n                \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'SlidingWindowExpr505'(_Config) ->
   Qry = "for sliding window $w in (1, 2, 3, 4) \n      start at $s when fn:true()\n      end at $e  when $s - $e eq 1\n      return $s",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            $result[1] instance of xs:integer\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""$result[1] instance of xs:integer",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'TumblingWindowExpr505'(_Config) ->
   Qry = "for tumbling window $w in (1, 2, 3, 4) \n      start at $s when fn:true()\n      end at $e  when $s - $e eq 1\n      return $s",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            $result[1] instance of xs:integer\n        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""$result[1] instance of xs:integer",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'SlidingWindowExpr506'(_Config) ->
   Qry = "\n          for sliding window $w in (1, 2, 3, 4, 14, 13, 12, 11) \n          start $s when fn:true()\n          only end $e when $e eq $s + 10\n          return string-join($w!string(), ' ')\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \"1 2 3 4 14 13 12 11\", \"2 3 4 14 13 12\", \"3 4 14 13\", \"4 14\"\n        ",
 Tst = xqerl:run("\"1 2 3 4 14 13 12 11\", \"2 3 4 14 13 12\", \"3 4 14 13\", \"4 14\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'SlidingWindowExpr507'(_Config) ->
   Qry = "\n          for sliding window $w as xs:integer+ in (1, 2, \"london\", 3, 4, \"paris\")\n          start $start when $start instance of xs:integer\n          only end next $beyond when $beyond instance of xs:string\n          return string-join($w!string(), ' ')\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \"1 2\", \"2\", \"3 4\", \"4\"\n        ",
 Tst = xqerl:run("\"1 2\", \"2\", \"3 4\", \"4\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'TumblingWindowExpr507'(_Config) ->
   Qry = "\n          for tumbling window $w as xs:integer+ in (1, 2, \"london\", 3, 4, \"paris\")\n          start $start when $start instance of xs:integer\n          only end next $beyond when $beyond instance of xs:string\n          return string-join($w!string(), ' ')\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \"1 2\", \"3 4\"\n        ",
 Tst = xqerl:run("\"1 2\", \"3 4\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'SlidingWindowExpr508'(_Config) ->
   Qry = "\n          for sliding window $w as xs:integer+ in (1, 2, \"london\", 3, 4.1, \"paris\")\n          start $start when $start instance of xs:integer\n          only end next $beyond when $beyond instance of xs:string\n          return string-join($w!string(), ' ')\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'TumblingWindowExpr508'(_Config) ->
   Qry = "\n          for tumbling window $w as xs:integer+ in (1, 2, \"london\", 3, 4.1, \"paris\")\n          start $start when $start instance of xs:integer\n          only end next $beyond when $beyond instance of xs:string\n          return string-join($w!string(), ' ')\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'SlidingWindowExpr509'(_Config) ->
   Qry = "\n            avg(\n              for sliding window $w in (1, 2, \"london\", 3, 4, \"paris\")\n              start $start when $start instance of xs:integer\n              only end next $beyond when $beyond instance of xs:string\n              return count($w)\n            )\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            1.5\n        ",
 Tst = xqerl:run("1.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'TumblingWindowExpr509'(_Config) ->
   Qry = "\n          avg(\n              for tumbling window $w in (1, 2, \"london\", 3, 4, \"paris\")\n              start $start when $start instance of xs:integer\n              only end next $beyond when $beyond instance of xs:string\n              return count($w)\n            )\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            2\n        ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'TumblingWindowExpr510'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when true()\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr510'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          end $e when true()\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr511'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr511'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr512'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s at $x when true()\n          end $e at $y when $y - $x eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr512'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s at $x when true()\n          end $e at $y when $y - $x eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr513'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s at $x when true()\n          only end $e at $y when $y - $x eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr513'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s at $x when true()\n          only end $e at $y when $y - $x eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr514'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          only end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'SlidingWindowExpr514'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          only end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'TumblingWindowExpr515'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr515'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr516'(_Config) ->
   Qry = "\n          declare namespace window = \"foo:bar\";\n          \n          for tumbling window $window:w in (1 to 10)\n          start $s when true()\n          end $e when false() \n          return <window>{$window:w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr517'(_Config) ->
   Qry = "\n          declare namespace window = \"foo:bar\";\n          \n          for tumbling window $Q{foo:bar}w in (1 to 10)\n          start $s when true()\n          end $e when false() \n          return <window>{$window:w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr517'(_Config) ->
   Qry = "\n          declare namespace window = \"foo:bar\";\n          \n          for sliding window $Q{foo:bar}w in (1 to 10)\n          start $s when true()\n          end $e when false() \n          return <window>{$window:w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr518'(_Config) ->
   Qry = "\n          declare namespace w = \"foo:bar\";\n          \n          for tumbling window $Q{foo:bar}w in (1 to 10)\n          start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()\n          end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() \n          return <window>{\n            string-join (\n              for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)\n              return string($w:w), \" \"\n            )}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr518a'(_Config) ->
   Qry = "\n          declare namespace w = \"foo:bar\";\n          <window>{\n          	for tumbling window $Q{foo:bar}w in (1 to 10)\n          	start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()\n          	end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() \n          	return \n            	string-join (\n              		for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)\n              		return string($w:w), \" \"\n            )\n          }</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr518'(_Config) ->
   Qry = "\n          declare namespace w = \"foo:bar\";\n          \n          for sliding window $Q{foo:bar}w in (1 to 10)\n          start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()\n          end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() \n          return <window>{\n            string-join (\n              for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)\n              return string($w:w), \" \"\n            )}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window><window>2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9</window><window>3 4 5 6 7 8 9 10 3 3 2 4 10 10 9</window><window>4 5 6 7 8 9 10 4 4 3 5 10 10 9</window><window>5 6 7 8 9 10 5 5 4 6 10 10 9</window><window>6 7 8 9 10 6 6 5 7 10 10 9</window><window>7 8 9 10 7 7 6 8 10 10 9</window><window>8 9 10 8 8 7 9 10 10 9</window><window>9 10 9 9 8 10 10 10 9</window><window>10 10 10 9 10 10 9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window><window>2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9</window><window>3 4 5 6 7 8 9 10 3 3 2 4 10 10 9</window><window>4 5 6 7 8 9 10 4 4 3 5 10 10 9</window><window>5 6 7 8 9 10 5 5 4 6 10 10 9</window><window>6 7 8 9 10 6 6 5 7 10 10 9</window><window>7 8 9 10 7 7 6 8 10 10 9</window><window>8 9 10 8 8 7 9 10 10 9</window><window>9 10 9 9 8 10 10 10 9</window><window>10 10 10 9 10 10 9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window><window>2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9</window><window>3 4 5 6 7 8 9 10 3 3 2 4 10 10 9</window><window>4 5 6 7 8 9 10 4 4 3 5 10 10 9</window><window>5 6 7 8 9 10 5 5 4 6 10 10 9</window><window>6 7 8 9 10 6 6 5 7 10 10 9</window><window>7 8 9 10 7 7 6 8 10 10 9</window><window>8 9 10 8 8 7 9 10 10 9</window><window>9 10 9 9 8 10 10 10 9</window><window>10 10 10 9 10 10 9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr519'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $w eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'SlidingWindowExpr519'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $w eq 2\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'TumblingWindowExpr520'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $w when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr521'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $w when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr522'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s at $w when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr523'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e at $w when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr524'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s previous $w when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr525'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s next $w when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr526'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e previous $w when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr527'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e next $w when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr528'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $s when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0103" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0103'}) end.
'TumblingWindowExpr529'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s at $x previous $sp next $sn when true()\n          end $e at $y previous $ep next $en when false() \n          where count($w) eq 10 and $x eq 1 and empty($sp) and $sn eq 2 and $e eq 10 and $y eq 10 and $ep eq 9 and empty($en)\n          return true()\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'SlidingWindowExpr529'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s at $x previous $sp next $sn when true()\n          end $e at $y previous $ep next $en when false() \n          where count($w) eq 10 and $x eq 1 and empty($sp) and $sn eq 2 and $e eq 10 and $y eq 10 and $ep eq 9 and empty($en)\n          return true()\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'TumblingWindowExpr530'(_Config) ->
   Qry = "\n          for tumbling window $w in ()\n          start $s at $x previous $sp next $sn when true()\n          end $e at $y previous $ep next $en when false() \n          return ($w, $s, $x, $sp, $sn, $e, $y, $ep, $en)\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'TumblingWindowExpr531'(_Config) ->
   Qry = "\n          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n          start $first when $first mod 3 = 0\n          return <window>{ $w }</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>6 8 10</window><window>12 14</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>6 8 10</window><window>12 14</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>6 8 10</window><window>12 14</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr531a'(_Config) ->
   Qry = "\n        <o>{\n          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n          start $first when $first mod 3 = 0\n          return <window>{ $w }</window>\n        }</o>  \n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <o><window>6 8 10</window><window>12 14</window></o>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<o><window>6 8 10</window><window>12 14</window></o>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<o><window>6 8 10</window><window>12 14</window></o>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr532'(_Config) ->
   Qry = "\n          for $w in (1 to 2)\n          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n          start $first when $first mod 3 = 0\n          return <window>{ $w }</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>6 8 10</window><window>12 14</window><window>6 8 10</window><window>12 14</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>6 8 10</window><window>12 14</window><window>6 8 10</window><window>12 14</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>6 8 10</window><window>12 14</window><window>6 8 10</window><window>12 14</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr533'(_Config) ->
   Qry = "\n          for $w at $y in (1 to 2)\n          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n          start $first when $first mod $y = 0\n          return <window>{ $y }</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr534'(_Config) ->
   Qry = "\n          for $x1 in 11\n          for $x2 in 12\n          for $x3 in 13\n          for $x4 in 14\n          for $x5 in 15\n          for $x6 in 16\n          for $x7 in 17\n          for $x8 in 18\n          for $x9 in 19\n          for tumbling window $x1 in (1 to 10)\n          start $x2 at $x3 previous $x4 next $x5 when true()\n          end $x6 at $x7 previous $x8 next $x9 when false()\n          return \n            string-join(\n              for $i in ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8, $x9)\n              return string($i), \" \"\n            )\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr534'(_Config) ->
   Qry = "\n          for $x1 in 11\n          for $x2 in 12\n          for $x3 in 13\n          for $x4 in 14\n          for $x5 in 15\n          for $x6 in 16\n          for $x7 in 17\n          for $x8 in 18\n          for $x9 in 19\n          for sliding window $x1 in (1 to 10)\n          start $x2 at $x3 previous $x4 next $x5 when true()\n          end $x6 at $x7 previous $x8 next $x9 when false()\n          return \n            string-join(\n              for $i in ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8, $x9)\n              return string($i), \" \"\n            )\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9 2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9 3 4 5 6 7 8 9 10 3 3 2 4 10 10 9 4 5 6 7 8 9 10 4 4 3 5 10 10 9 5 6 7 8 9 10 5 5 4 6 10 10 9 6 7 8 9 10 6 6 5 7 10 10 9 7 8 9 10 7 7 6 8 10 10 9 8 9 10 8 8 7 9 10 10 9 9 10 9 9 8 10 10 10 9 10 10 10 9 10 10 9\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9 2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9 3 4 5 6 7 8 9 10 3 3 2 4 10 10 9 4 5 6 7 8 9 10 4 4 3 5 10 10 9 5 6 7 8 9 10 5 5 4 6 10 10 9 6 7 8 9 10 6 6 5 7 10 10 9 7 8 9 10 7 7 6 8 10 10 9 8 9 10 8 8 7 9 10 10 9 9 10 9 9 8 10 10 10 9 10 10 10 9 10 10 9"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9 2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9 3 4 5 6 7 8 9 10 3 3 2 4 10 10 9 4 5 6 7 8 9 10 4 4 3 5 10 10 9 5 6 7 8 9 10 5 5 4 6 10 10 9 6 7 8 9 10 6 6 5 7 10 10 9 7 8 9 10 7 7 6 8 10 10 9 8 9 10 8 8 7 9 10 10 9 9 10 9 9 8 10 10 10 9 10 10 10 9 10 10 9" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr535a'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s next $sn previous $pn when true()\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'TumblingWindowExpr535b'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          end $e next $en previous $en when true()\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'TumblingWindowExpr536'(_Config) ->
   Qry = "\n          let $stock :=\n            <stock>\n              <closing> <date>2008-01-01</date> <price>105</price> </closing>\n              <closing> <date>2008-01-02</date> <price>101</price> </closing>\n              <closing> <date>2008-01-03</date> <price>102</price> </closing>\n              <closing> <date>2008-01-04</date> <price>103</price> </closing>\n              <closing> <date>2008-01-05</date> <price>102</price> </closing>\n              <closing> <date>2008-01-06</date> <price>104</price> </closing>\n            </stock>\n          for tumbling window $w in $stock//closing\n             start $first next $second when $first/price < $second/price\n             end $last next $beyond when $last/price > $beyond/price\n          return\n             <run-up>\n                <start-date>{fn:data($first/date)}</start-date>\n                <start-price>{fn:data($first/price)}</start-price>\n                <end-date>{fn:data($last/date)}</end-date>\n                <end-price>{fn:data($last/price)}</end-price>\n             </run-up>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <run-up><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up><start-date>2008-01-05</start-date><start-price>102</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<run-up><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up><start-date>2008-01-05</start-date><start-price>102</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<run-up><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up><start-date>2008-01-05</start-date><start-price>102</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr537'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          count $r\n          return <window num=\"{$r}\">{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window><window num=\"3\">7 8 9</window><window num=\"4\">10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window><window num=\"3\">7 8 9</window><window num=\"4\">10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window><window num=\"3\">7 8 9</window><window num=\"4\">10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr538'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          count $r\n          where $r le 2\n          return <window num=\"{$r}\">{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr538'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          count $r\n          where $r le 2\n          return <window num=\"{$r}\">{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">1 2 3</window><window num=\"2\">2 3 4</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">1 2 3</window><window num=\"2\">2 3 4</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">1 2 3</window><window num=\"2\">2 3 4</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr539'(_Config) ->
   Qry = "\n          for $i in 1 to 3\n          count $r\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          where $w = $r + 1\n          return <window num=\"{$r}\">{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">1 2 3</window><window num=\"2\">1 2 3</window><window num=\"3\">4 5 6</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">1 2 3</window><window num=\"2\">1 2 3</window><window num=\"3\">4 5 6</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">1 2 3</window><window num=\"2\">1 2 3</window><window num=\"3\">4 5 6</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr539'(_Config) ->
   Qry = "\n          for $i in 1 to 3\n          count $r\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s eq 2\n          where $w = $r + 1\n          return <window num=\"{$r}\">{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">1 2 3</window><window num=\"1\">2 3 4</window><window num=\"2\">1 2 3</window><window num=\"2\">2 3 4</window><window num=\"2\">3 4 5</window><window num=\"3\">2 3 4</window><window num=\"3\">3 4 5</window><window num=\"3\">4 5 6</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">1 2 3</window><window num=\"1\">2 3 4</window><window num=\"2\">1 2 3</window><window num=\"2\">2 3 4</window><window num=\"2\">3 4 5</window><window num=\"3\">2 3 4</window><window num=\"3\">3 4 5</window><window num=\"3\">4 5 6</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">1 2 3</window><window num=\"1\">2 3 4</window><window num=\"2\">1 2 3</window><window num=\"2\">2 3 4</window><window num=\"2\">3 4 5</window><window num=\"3\">2 3 4</window><window num=\"3\">3 4 5</window><window num=\"3\">4 5 6</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr540'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          only end $e when $e - $s eq 2\n          order by $w[2] descending\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>7 8 9</window><window>4 5 6</window><window>1 2 3</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>7 8 9</window><window>4 5 6</window><window>1 2 3</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>7 8 9</window><window>4 5 6</window><window>1 2 3</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr540'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          only end $e when $e - $s eq 2\n          order by $w[2] descending\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>8 9 10</window><window>7 8 9</window><window>6 7 8</window><window>5 6 7</window><window>4 5 6</window><window>3 4 5</window><window>2 3 4</window><window>1 2 3</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>8 9 10</window><window>7 8 9</window><window>6 7 8</window><window>5 6 7</window><window>4 5 6</window><window>3 4 5</window><window>2 3 4</window><window>1 2 3</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>8 9 10</window><window>7 8 9</window><window>6 7 8</window><window>5 6 7</window><window>4 5 6</window><window>3 4 5</window><window>2 3 4</window><window>1 2 3</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr541'(_Config) ->
   Qry = "\n          for tumbling window $w1 in\n            for tumbling window $w2 in (1 to 10)\n            start $s when true()\n            only end $e when $e - $s eq 2\n            return $w2\n          start $s when true()\n          end $e when $e - $s eq 2\n          return <window>{$w2}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'TumblingWindowExpr542'(_Config) ->
   Qry = "\n          for tumbling window $w1 in\n            for tumbling window $w2 in (1 to 10)\n            start $s when true()\n            only end $e when $e - $s eq 2\n            return $w2\n          start $s when true()\n          end $e when $e - $s eq 2\n          return <window>{$w1}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr544'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          only end $e when $e - $s eq 2\n          count $r\n          return\n            <window num=\"{$r}\">{\n              for $i in $w\n              order by $i descending\n              return $i\n            }</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">3 2 1</window><window num=\"2\">6 5 4</window><window num=\"3\">9 8 7</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">3 2 1</window><window num=\"2\">6 5 4</window><window num=\"3\">9 8 7</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">3 2 1</window><window num=\"2\">6 5 4</window><window num=\"3\">9 8 7</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr544'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 10)\n          start $s when true()\n          only end $e when $e - $s eq 2\n          count $r\n          return\n            <window num=\"{$r}\">{\n              for $i in $w\n              order by $i descending\n              return $i\n            }</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window num=\"1\">3 2 1</window><window num=\"2\">4 3 2</window><window num=\"3\">5 4 3</window><window num=\"4\">6 5 4</window><window num=\"5\">7 6 5</window><window num=\"6\">8 7 6</window><window num=\"7\">9 8 7</window><window num=\"8\">10 9 8</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window num=\"1\">3 2 1</window><window num=\"2\">4 3 2</window><window num=\"3\">5 4 3</window><window num=\"4\">6 5 4</window><window num=\"5\">7 6 5</window><window num=\"6\">8 7 6</window><window num=\"7\">9 8 7</window><window num=\"8\">10 9 8</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window num=\"1\">3 2 1</window><window num=\"2\">4 3 2</window><window num=\"3\">5 4 3</window><window num=\"4\">6 5 4</window><window num=\"5\">7 6 5</window><window num=\"6\">8 7 6</window><window num=\"7\">9 8 7</window><window num=\"8\">10 9 8</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr545'(_Config) ->
   Qry = "\n          let $s := <stocks>\n            <closing> <symbol>ABC</symbol> <date>2008-01-01</date> <price>105</price> </closing>\n            <closing> <symbol>DEF</symbol> <date>2008-01-01</date> <price>057</price> </closing>\n            <closing> <symbol>ABC</symbol> <date>2008-01-02</date> <price>101</price> </closing>\n            <closing> <symbol>DEF</symbol> <date>2008-01-02</date> <price>054</price> </closing>\n            <closing> <symbol>ABC</symbol> <date>2008-01-03</date> <price>102</price> </closing>\n            <closing> <symbol>DEF</symbol> <date>2008-01-03</date> <price>056</price> </closing>\n            <closing> <symbol>ABC</symbol> <date>2008-01-04</date> <price>103</price> </closing>\n            <closing> <symbol>DEF</symbol> <date>2008-01-04</date> <price>052</price> </closing>\n            <closing> <symbol>ABC</symbol> <date>2008-01-05</date> <price>101</price> </closing>\n            <closing> <symbol>DEF</symbol> <date>2008-01-05</date> <price>055</price> </closing>\n            <closing> <symbol>ABC</symbol> <date>2008-01-06</date> <price>104</price> </closing>\n            <closing> <symbol>DEF</symbol> <date>2008-01-06</date> <price>059</price> </closing>\n          </stocks>\n          for $closings in $s//closing\n          let $symbol := $closings/symbol\n          group by $symbol\n          for tumbling window $w in $closings\n             start $first next $second when $first/price < $second/price\n             end $last next $beyond when $last/price > $beyond/price\n          return\n             <run-up symbol=\"{$symbol}\">\n                <start-date>{fn:data($first/date)}</start-date>\n                <start-price>{fn:data($first/price)}</start-price>\n                <end-date>{fn:data($last/date)}</end-date>\n                <end-price>{fn:data($last/price)}</end-price>\n             </run-up>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n            <run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up>\n            <run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>          \n          \n        ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'TumblingWindowExpr546'(_Config) ->
   Qry = "\n          declare function local:window()\n          {\n            for tumbling window $w in (1 to 10)\n            start $s when true()\n            end $e when $e - $s eq 3\n            return <window>{$w}</window>\n          };\n          \n          local:window()\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3 4</window><window>5 6 7 8</window><window>9 10</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3 4</window><window>5 6 7 8</window><window>9 10</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3 4</window><window>5 6 7 8</window><window>9 10</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr547'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s at $x as xs:integer when true()\n          end $e when $e - $s eq 3\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'TumblingWindowExpr549'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s next $sn as xs:integer when true()\n          end $e when $e - $s eq 3\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'TumblingWindowExpr550'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 3)\n          start when true()\n          end when false()\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'SlidingWindowExpr550'(_Config) ->
   Qry = "\n          for sliding window $w in (1 to 3)\n          start when true()\n          end when false()\n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1 2 3</window><window>2 3</window><window>3</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1 2 3</window><window>2 3</window><window>3</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1 2 3</window><window>2 3</window><window>3</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr551'(_Config) ->
   Qry = "\n          for tumbling window $w in (1 to 10)\n          start $s when true()\n          end $e when $e - $s\n          return $w instance of xs:integer\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          false false false false false\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"false false false false false"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "false false false false false" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr552'(_Config) ->
   Qry = "\n          declare function local:window($seq)\n          {\n            for tumbling window $w in $seq\n            start $s when true()\n            end $e when $e - $s eq 3\n            return\n            <window>{\n              if ($w instance of xs:integer)\n              then\n                $w\n              else\n                $s\n            }</window>\n          };\n          \n          local:window(1 to 10)\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1</window><window>5</window><window>9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1</window><window>5</window><window>9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1</window><window>5</window><window>9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr553'(_Config) ->
   Qry = "\n          declare variable $local:foo as xs:integer* := 1 to 10;\n          \n          declare function local:window()\n          {\n            for tumbling window $w in $local:foo\n            start $s when true()\n            end $e when $e - $s eq 3\n            return\n            <window>{\n              if ($w instance of xs:integer)\n              then\n                $w\n              else\n                $s\n            }</window>\n          };\n          \n          local:window()\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1</window><window>5</window><window>9</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1</window><window>5</window><window>9</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1</window><window>5</window><window>9</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr554'(_Config) ->
   Qry = "\n          declare variable $local:foo as xs:integer* := 1 to 5;\n          \n          declare function local:window()\n          {\n            for tumbling window $w1 in $local:foo\n            start $s when true()\n            end $e when $e - $s eq 3\n            for tumbling window $w2 in $w1\n            start $s when true()\n            end $e when true()\n            return\n            <window>{\n              fn:distinct-values($w1[.=$w2])\n            }</window>\n          };\n          \n          local:window()\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          <window>1</window><window>2</window><window>3</window><window>4</window><window>5</window>\n        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'TumblingWindowExpr555'(_Config) ->
   Qry = "\n          declare variable $local:foo as xs:integer* := 1 to 10;\n          \n          declare function local:window()\n          {\n            for tumbling window $w in $local:foo\n            start $s when false()\n            end $e when false()\n            return\n              <window>{$w}</window>\n          };\n          \n          local:window()\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'WindowExpr500'(_Config) ->
   Qry = "\n          for window $w in (1 to 10)\n          start $s when true()\n          end $e when false() \n          return <window>{$w}</window>\n        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n          \n        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
