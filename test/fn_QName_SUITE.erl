-module('fn_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['ExpandedQNameConstructFunc001'/1]).
-export(['ExpandedQNameConstructFunc002'/1]).
-export(['ExpandedQNameConstructFunc003'/1]).
-export(['ExpandedQNameConstructFunc004'/1]).
-export(['ExpandedQNameConstructFunc005'/1]).
-export(['ExpandedQNameConstructFunc006'/1]).
-export(['ExpandedQNameConstructFunc007'/1]).
-export(['ExpandedQNameConstructFunc008'/1]).
-export(['ExpandedQNameConstructFunc009'/1]).
-export(['ExpandedQNameConstructFunc010'/1]).
-export(['ExpandedQNameConstructFunc011'/1]).
-export(['ExpandedQNameConstructFunc012'/1]).
-export(['ExpandedQNameConstructFunc013'/1]).
-export(['ExpandedQNameConstructFunc014'/1]).
-export(['ExpandedQNameConstructFunc015'/1]).
-export(['ExpandedQNameConstructFunc016'/1]).
-export(['ExpandedQNameConstructFunc017'/1]).
-export(['ExpandedQNameConstructFunc018'/1]).
-export(['ExpandedQNameConstructFunc019'/1]).
-export(['ExpandedQNameConstructFunc020'/1]).
-export(['ExpandedQNameConstructFunc021'/1]).
-export(['qName-1'/1]).
-export(['K-ExpandedQNameConstructFunc-1'/1]).
-export(['K-ExpandedQNameConstructFunc-2'/1]).
-export(['K-ExpandedQNameConstructFunc-3'/1]).
-export(['K-ExpandedQNameConstructFunc-4'/1]).
-export(['K-ExpandedQNameConstructFunc-5'/1]).
-export(['K-ExpandedQNameConstructFunc-6'/1]).
-export(['K-ExpandedQNameConstructFunc-7'/1]).
-export(['K-ExpandedQNameConstructFunc-8'/1]).
-export(['K-ExpandedQNameConstructFunc-9'/1]).
-export(['K-ExpandedQNameConstructFunc-10'/1]).
-export(['K2-ExpandedQNameConstructFunc-1'/1]).
-export(['cbcl-qname-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'ExpandedQNameConstructFunc001',
   'ExpandedQNameConstructFunc002',
   'ExpandedQNameConstructFunc003',
   'ExpandedQNameConstructFunc004',
   'ExpandedQNameConstructFunc005',
   'ExpandedQNameConstructFunc006',
   'ExpandedQNameConstructFunc007',
   'ExpandedQNameConstructFunc008',
   'ExpandedQNameConstructFunc009',
   'ExpandedQNameConstructFunc010',
   'ExpandedQNameConstructFunc011',
   'ExpandedQNameConstructFunc012',
   'ExpandedQNameConstructFunc013',
   'ExpandedQNameConstructFunc014',
   'ExpandedQNameConstructFunc015',
   'ExpandedQNameConstructFunc016',
   'ExpandedQNameConstructFunc017',
   'ExpandedQNameConstructFunc018',
   'ExpandedQNameConstructFunc019',
   'ExpandedQNameConstructFunc020',
   'ExpandedQNameConstructFunc021',
   'qName-1',
   'K-ExpandedQNameConstructFunc-1',
   'K-ExpandedQNameConstructFunc-2',
   'K-ExpandedQNameConstructFunc-3',
   'K-ExpandedQNameConstructFunc-4',
   'K-ExpandedQNameConstructFunc-5',
   'K-ExpandedQNameConstructFunc-6',
   'K-ExpandedQNameConstructFunc-7',
   'K-ExpandedQNameConstructFunc-8',
   'K-ExpandedQNameConstructFunc-9',
   'K-ExpandedQNameConstructFunc-10',
   'K2-ExpandedQNameConstructFunc-1',
   'cbcl-qname-001'].
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
environment('fsx') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ForClause/fsx.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'ExpandedQNameConstructFunc001'(_Config) ->
   Qry = "element {fn:QName(\"http://www.example.com/example\", \"person\")}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <person xmlns=\"http://www.example.com/example\">test</person>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<person xmlns=\"http://www.example.com/example\">test</person>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<person xmlns=\"http://www.example.com/example\">test</person>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc002'(_Config) ->
   Qry = "element {fn:QName(\"http://www.example.com/example\", \"ht:person\")}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <ht:person xmlns:ht=\"http://www.example.com/example\">test</ht:person>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<ht:person xmlns:ht=\"http://www.example.com/example\">test</ht:person>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<ht:person xmlns:ht=\"http://www.example.com/example\">test</ht:person>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc003'(_Config) ->
   Qry = "element {fn:QName(\"\", \"person\")}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <person>test</person>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<person>test</person>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<person>test</person>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc004'(_Config) ->
   Qry = "element {fn:QName((), \"person\")}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <person>test</person>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<person>test</person>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<person>test</person>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc005'(_Config) ->
   Qry = "fn:QName(\"\", \"ht:person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc006'(_Config) ->
   Qry = "fn:QName((), \"ht:person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc007'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"1person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc008'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"@person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc009'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"-person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc010'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"<person>\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc011'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \":person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc012'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person:\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc013'(_Config) ->
   Qry = "fn:QName(\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'ExpandedQNameConstructFunc014'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'ExpandedQNameConstructFunc015'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", xs:integer(\"100\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'ExpandedQNameConstructFunc016'(_Config) ->
   Qry = "fn:QName( xs:integer(\"100\"), \"person\" )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'ExpandedQNameConstructFunc017'(_Config) ->
   Qry = "element {fn:QName( \"http://www.example.com/example\", string((//FolderName)[2]) )}{ \"test\" }",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <Folder00000000001 xmlns=\"http://www.example.com/example\">test</Folder00000000001>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Folder00000000001 xmlns=\"http://www.example.com/example\">test</Folder00000000001>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Folder00000000001 xmlns=\"http://www.example.com/example\">test</Folder00000000001>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc018'(_Config) ->
   Qry = "element {fn:QName( concat('http://www.example.com/', string((//FolderName)[2])), \"people\" )}{ \"test\" }",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <people xmlns=\"http://www.example.com/Folder00000000001\">test</people>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<people xmlns=\"http://www.example.com/Folder00000000001\">test</people>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<people xmlns=\"http://www.example.com/Folder00000000001\">test</people>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc019'(_Config) ->
   Qry = "element {fn:QName( \"http://www.example.com/example\", \"\" )}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'ExpandedQNameConstructFunc020'(_Config) ->
   Qry = "declare namespace ht=\"http://www.example.com/example\"; element {fn:QName( \"http://www.example.com/another-example\", \"ht:person\" )}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <ht:person xmlns:ht=\"http://www.example.com/another-example\">test</ht:person>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<ht:person xmlns:ht=\"http://www.example.com/another-example\">test</ht:person>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<ht:person xmlns:ht=\"http://www.example.com/another-example\">test</ht:person>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ExpandedQNameConstructFunc021'(_Config) ->
   Qry = "declare namespace ht=\"http://www.example.com/example\"; element {fn:QName( \"http://www.example.com/example\", \"ht2:person\" )}{ \"test\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <ht2:person xmlns:ht2=\"http://www.example.com/example\">test</ht2:person>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<ht2:person xmlns:ht2=\"http://www.example.com/example\">test</ht2:person>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<ht2:person xmlns:ht2=\"http://www.example.com/example\">test</ht2:person>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'qName-1'(_Config) ->
   Qry = "xs:QName(20)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-ExpandedQNameConstructFunc-1'(_Config) ->
   Qry = "QName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ExpandedQNameConstructFunc-2'(_Config) ->
   Qry = "QName(\"http://www.example.com/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ExpandedQNameConstructFunc-3'(_Config) ->
   Qry = "QName(\"http://www.example.com/\", \"ncname\", \"error\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ExpandedQNameConstructFunc-4'(_Config) ->
   Qry = "QName(\"http://www.w3.org/2005/xpath-functions\", \"prefix:local\") eq xs:QName(\"fn:local\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ExpandedQNameConstructFunc-5'(_Config) ->
   Qry = "QName(\"http://www.example.com/\", \"1asd:error\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'K-ExpandedQNameConstructFunc-6'(_Config) ->
   Qry = "QName(\"\", \"error:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'K-ExpandedQNameConstructFunc-7'(_Config) ->
   Qry = "QName((), \"error:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'K-ExpandedQNameConstructFunc-8'(_Config) ->
   Qry = "QName(\"my:qName\", \"http://example.com/MyErrorNS\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
'K-ExpandedQNameConstructFunc-9'(_Config) ->
   Qry = "QName(\"\", \"local\") eq xs:QName(\"local\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ExpandedQNameConstructFunc-10'(_Config) ->
   Qry = "QName((), \"local\") eq xs:QName(\"local\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ExpandedQNameConstructFunc-1'(_Config) ->
   Qry = "fn:QName((), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-qname-001'(_Config) ->
   Qry = "fn:QName('', ' ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0002'}) end.
