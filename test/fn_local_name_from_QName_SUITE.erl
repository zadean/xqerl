-module('fn_local_name_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['LocalNameFromQNameFunc001'/1]).
-export(['LocalNameFromQNameFunc002'/1]).
-export(['LocalNameFromQNameFunc003'/1]).
-export(['LocalNameFromQNameFunc004'/1]).
-export(['LocalNameFromQNameFunc005'/1]).
-export(['LocalNameFromQNameFunc006'/1]).
-export(['LocalNameFromQNameFunc007'/1]).
-export(['LocalNameFromQNameFunc009'/1]).
-export(['LocalNameFromQNameFunc010'/1]).
-export(['LocalNameFromQNameFunc011'/1]).
-export(['LocalNameFromQNameFunc012'/1]).
-export(['LocalNameFromQNameFunc013'/1]).
-export(['LocalNameFromQNameFunc014'/1]).
-export(['LocalNameFromQNameFunc015'/1]).
-export(['LocalNameFromQNameFunc015a'/1]).
-export(['LocalNameFromQNameFunc016'/1]).
-export(['LocalNameFromQNameFunc017'/1]).
-export(['LocalNameFromQNameFunc018'/1]).
-export(['LocalNameFromQNameFunc019'/1]).
-export(['LocalNameFromQNameFunc020'/1]).
-export(['LocalNameFromQNameFunc021'/1]).
-export(['K-LocalNameFromQNameFunc-1'/1]).
-export(['K-LocalNameFromQNameFunc-2'/1]).
-export(['K-LocalNameFromQNameFunc-3'/1]).
-export(['K-LocalNameFromQNameFunc-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'LocalNameFromQNameFunc001',
   'LocalNameFromQNameFunc002',
   'LocalNameFromQNameFunc003',
   'LocalNameFromQNameFunc004',
   'LocalNameFromQNameFunc005',
   'LocalNameFromQNameFunc006',
   'LocalNameFromQNameFunc007',
   'LocalNameFromQNameFunc009',
   'LocalNameFromQNameFunc010',
   'LocalNameFromQNameFunc011',
   'LocalNameFromQNameFunc012',
   'LocalNameFromQNameFunc013',
   'LocalNameFromQNameFunc014',
   'LocalNameFromQNameFunc015',
   'LocalNameFromQNameFunc015a',
   'LocalNameFromQNameFunc016',
   'LocalNameFromQNameFunc017',
   'LocalNameFromQNameFunc018',
   'LocalNameFromQNameFunc019',
   'LocalNameFromQNameFunc020',
   'LocalNameFromQNameFunc021',
   'K-LocalNameFromQNameFunc-1',
   'K-LocalNameFromQNameFunc-2',
   'K-LocalNameFromQNameFunc-3',
   'K-LocalNameFromQNameFunc-4'].
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
environment('fsx') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/ForClause/fsx.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'LocalNameFromQNameFunc001'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc002'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc003'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc004'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc005'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc006'(_Config) ->
   Qry = "fn:local-name-from-QName(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'LocalNameFromQNameFunc007'(_Config) ->
   Qry = "fn:local-name-from-QName(((),()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'LocalNameFromQNameFunc009'(_Config) ->
   Qry = "fn:local-name-from-QName(\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'LocalNameFromQNameFunc010'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc011'(_Config) ->
   Qry = "fn:local-name-from-QName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'LocalNameFromQNameFunc012'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc013'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc014'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc015'(_Config) ->
   {skip,"XQ10 XP20"}.
'LocalNameFromQNameFunc015a'(_Config) ->
   Qry = "fn:local-name-from-QName((//Folder)[1])",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0117" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0117'}) end.
'LocalNameFromQNameFunc016'(_Config) ->
   Qry = "fn:local-name-from-QName(xs:integer(\"100\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'LocalNameFromQNameFunc017'(_Config) ->
   Qry = "fn:local-name-from-QName(xs:time(\"12:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'LocalNameFromQNameFunc018'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc019'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc020'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc021'(_Config) ->
   {skip,"Validation Environment"}.
'K-LocalNameFromQNameFunc-1'(_Config) ->
   Qry = "local-name-from-QName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-LocalNameFromQNameFunc-2'(_Config) ->
   Qry = "local-name-from-QName(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-LocalNameFromQNameFunc-3'(_Config) ->
   Qry = "empty(local-name-from-QName( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-LocalNameFromQNameFunc-4'(_Config) ->
   Qry = "local-name-from-QName( QName(\"example.com/\", \"pre:lname\")) eq \"lname\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
