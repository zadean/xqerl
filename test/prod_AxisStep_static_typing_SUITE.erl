-module('prod_AxisStep_static_typing_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['ST-Axes001'/1]).
-export(['ST-Axes002'/1]).
-export(['ST-Axes003'/1]).
-export(['ST-Axes004'/1]).
-export(['ST-Axes005'/1]).
-export(['ST-Axes006'/1]).
-export(['ST-Axes007'/1]).
-export(['ST-Axes008'/1]).
-export(['ST-Axes009'/1]).
-export(['ST-Axes010'/1]).
-export(['ST-Axes011'/1]).
-export(['ST-Axes012'/1]).
-export(['ST-Axes013'/1]).
-export(['ST-Axes014'/1]).
-export(['ST-Axes015'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'ST-Axes001',
   'ST-Axes002',
   'ST-Axes003',
   'ST-Axes004',
   'ST-Axes005',
   'ST-Axes006',
   'ST-Axes007',
   'ST-Axes008',
   'ST-Axes009',
   'ST-Axes010',
   'ST-Axes011',
   'ST-Axes012',
   'ST-Axes013',
   'ST-Axes014',
   'ST-Axes015'].
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
environment('TopMany') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/AxisStep/TopMany.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeCompass') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/AxisStep/TreeCompass.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('Tree1Text') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/AxisStep/Tree1Text.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'ST-Axes001'(_Config) ->
   Qry = "fn:count(//center/self::nowhere)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes002'(_Config) ->
   Qry = "fn:count(//center/@center-attr-2/self::*)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes003'(_Config) ->
   Qry = "fn:count(//center/@center-attr-3/self::center-attr-3)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes004'(_Config) ->
   Qry = "fn:count(//center/@center-attr-1/self::nowhere)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes005'(_Config) ->
   Qry = "fn:count(//center/text()/self::*)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes006'(_Config) ->
   Qry = "fn:count(//center/text()/self::center)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes007'(_Config) ->
   Qry = "fn:count(//center/@center-attr-1/descendant-or-self::*)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes008'(_Config) ->
   Qry = "fn:count(//center/@center-attr-2/descendant-or-self::far-south)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes009'(_Config) ->
   Qry = "fn:count(//center/@center-attr-2/descendant-or-self::center-attr-2)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes010'(_Config) ->
   Qry = "fn:count(//center/text()/descendant-or-self::*)",
   Env = xqerl_test:handle_environment(environment('Tree1Text')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes011'(_Config) ->
   Qry = "fn:count(/attribute::*)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes012'(_Config) ->
   Qry = "fn:count(/@*)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes013'(_Config) ->
   Qry = "fn:count(/parent::*)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes014'(_Config) ->
   Qry = "fn:count(/..)",
   Env = xqerl_test:handle_environment(environment('TreeCompass')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
'ST-Axes015'(_Config) ->
   Qry = "fn:count(/self::*)",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0005'}) end.
