-module('prod_DirElemContent_namespace_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-namespace-1'/1]).
-export(['Constr-namespace-2'/1]).
-export(['Constr-namespace-3'/1]).
-export(['Constr-namespace-4'/1]).
-export(['Constr-namespace-5'/1]).
-export(['Constr-namespace-6'/1]).
-export(['Constr-namespace-7'/1]).
-export(['Constr-namespace-8'/1]).
-export(['Constr-namespace-9'/1]).
-export(['Constr-namespace-10'/1]).
-export(['Constr-namespace-11'/1]).
-export(['Constr-namespace-12'/1]).
-export(['Constr-namespace-13'/1]).
-export(['Constr-namespace-14'/1]).
-export(['Constr-namespace-15'/1]).
-export(['Constr-namespace-16'/1]).
-export(['Constr-namespace-17'/1]).
-export(['Constr-namespace-18'/1]).
-export(['Constr-namespace-19'/1]).
-export(['Constr-namespace-20'/1]).
-export(['Constr-namespace-21'/1]).
-export(['Constr-namespace-22'/1]).
-export(['Constr-namespace-23'/1]).
-export(['Constr-namespace-24'/1]).
-export(['Constr-namespace-25'/1]).
-export(['Constr-namespace-26'/1]).
-export(['Constr-namespace-27'/1]).
-export(['Constr-namespace-29'/1]).
-export(['K2-DirectConElemNamespace-1'/1]).
-export(['K2-DirectConElemNamespace-2'/1]).
-export(['K2-DirectConElemNamespace-3'/1]).
-export(['K2-DirectConElemNamespace-4'/1]).
-export(['K2-DirectConElemNamespace-5'/1]).
-export(['K2-DirectConElemNamespace-6'/1]).
-export(['K2-DirectConElemNamespace-7'/1]).
-export(['K2-DirectConElemNamespace-8'/1]).
-export(['K2-DirectConElemNamespace-9'/1]).
-export(['K2-DirectConElemNamespace-10'/1]).
-export(['K2-DirectConElemNamespace-11'/1]).
-export(['K2-DirectConElemNamespace-12'/1]).
-export(['K2-DirectConElemNamespace-13'/1]).
-export(['K2-DirectConElemNamespace-14'/1]).
-export(['K2-DirectConElemNamespace-15'/1]).
-export(['K2-DirectConElemNamespace-16'/1]).
-export(['K2-DirectConElemNamespace-17'/1]).
-export(['K2-DirectConElemNamespace-18'/1]).
-export(['K2-DirectConElemNamespace-19'/1]).
-export(['K2-DirectConElemNamespace-20'/1]).
-export(['K2-DirectConElemNamespace-21'/1]).
-export(['K2-DirectConElemNamespace-22'/1]).
-export(['K2-DirectConElemNamespace-23'/1]).
-export(['K2-DirectConElemNamespace-24'/1]).
-export(['K2-DirectConElemNamespace-25'/1]).
-export(['K2-DirectConElemNamespace-26'/1]).
-export(['K2-DirectConElemNamespace-27'/1]).
-export(['K2-DirectConElemNamespace-28'/1]).
-export(['K2-DirectConElemNamespace-29'/1]).
-export(['K2-DirectConElemNamespace-30'/1]).
-export(['K2-DirectConElemNamespace-31'/1]).
-export(['K2-DirectConElemNamespace-32'/1]).
-export(['K2-DirectConElemNamespace-33'/1]).
-export(['K2-DirectConElemNamespace-34'/1]).
-export(['K2-DirectConElemNamespace-35'/1]).
-export(['K2-DirectConElemNamespace-36'/1]).
-export(['K2-DirectConElemNamespace-37'/1]).
-export(['K2-DirectConElemNamespace-38'/1]).
-export(['K2-DirectConElemNamespace-39'/1]).
-export(['K2-DirectConElemNamespace-40'/1]).
-export(['K2-DirectConElemNamespace-41'/1]).
-export(['K2-DirectConElemNamespace-42'/1]).
-export(['K2-DirectConElemNamespace-43'/1]).
-export(['K2-DirectConElemNamespace-44'/1]).
-export(['K2-DirectConElemNamespace-45'/1]).
-export(['K2-DirectConElemNamespace-46'/1]).
-export(['K2-DirectConElemNamespace-47'/1]).
-export(['K2-DirectConElemNamespace-48'/1]).
-export(['K2-DirectConElemNamespace-49'/1]).
-export(['K2-DirectConElemNamespace-50'/1]).
-export(['K2-DirectConElemNamespace-51'/1]).
-export(['K2-DirectConElemNamespace-52'/1]).
-export(['K2-DirectConElemNamespace-53'/1]).
-export(['K2-DirectConElemNamespace-54'/1]).
-export(['K2-DirectConElemNamespace-55'/1]).
-export(['K2-DirectConElemNamespace-56'/1]).
-export(['K2-DirectConElemNamespace-57'/1]).
-export(['K2-DirectConElemNamespace-58'/1]).
-export(['K2-DirectConElemNamespace-59'/1]).
-export(['K2-DirectConElemNamespace-61'/1]).
-export(['K2-DirectConElemNamespace-62'/1]).
-export(['K2-DirectConElemNamespace-63'/1]).
-export(['K2-DirectConElemNamespace-64'/1]).
-export(['K2-DirectConElemNamespace-65'/1]).
-export(['K2-DirectConElemNamespace-67'/1]).
-export(['K2-DirectConElemNamespace-68'/1]).
-export(['K2-DirectConElemNamespace-69'/1]).
-export(['K2-DirectConElemNamespace-70'/1]).
-export(['K2-DirectConElemNamespace-71'/1]).
-export(['K2-DirectConElemNamespace-72'/1]).
-export(['K2-DirectConElemNamespace-73'/1]).
-export(['K2-DirectConElemNamespace-74'/1]).
-export(['K2-DirectConElemNamespace-75'/1]).
-export(['K2-DirectConElemNamespace-76'/1]).
-export(['K2-DirectConElemNamespace-77'/1]).
-export(['K2-DirectConElemNamespace-78'/1]).
-export(['K2-DirectConElemNamespace-79'/1]).
-export(['DirectConElemNamespace-3'/1]).
-export(['DirectConElemNamespace-4'/1]).
-export(['DirectConElemNamespace-5'/1]).
-export(['DirectConElemNamespace-6'/1]).
-export(['Constr-inscope-1'/1]).
-export(['Constr-inscope-2'/1]).
-export(['Constr-inscope-3'/1]).
-export(['Constr-inscope-4'/1]).
-export(['Constr-inscope-5'/1]).
-export(['Constr-inscope-6'/1]).
-export(['Constr-inscope-7'/1]).
-export(['Constr-inscope-8'/1]).
-export(['Constr-inscope-9'/1]).
-export(['Constr-inscope-10'/1]).
-export(['Constr-inscope-11'/1]).
-export(['Constr-inscope-12'/1]).
-export(['Constr-inscope-13'/1]).
-export(['Constr-inscope-14'/1]).
-export(['Constr-inscope-15'/1]).
-export(['Constr-inscope-16'/1]).
-export(['Constr-inscope-17'/1]).
-export(['Constr-inscope-18'/1]).
-export(['Constr-inscope-19'/1]).
-export(['Constr-inscope-20'/1]).
-export(['Constr-inscope-21'/1]).
-export(['Constr-inscope-22'/1]).
-export(['K2-ConInScopeNamespace-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-namespace-1',
   'Constr-namespace-2',
   'Constr-namespace-3',
   'Constr-namespace-4',
   'Constr-namespace-5',
   'Constr-namespace-6',
   'Constr-namespace-7',
   'Constr-namespace-8',
   'Constr-namespace-9',
   'Constr-namespace-10',
   'Constr-namespace-11',
   'Constr-namespace-12',
   'Constr-namespace-13',
   'Constr-namespace-14',
   'Constr-namespace-15',
   'Constr-namespace-16',
   'Constr-namespace-17',
   'Constr-namespace-18',
   'Constr-namespace-19',
   'Constr-namespace-20',
   'Constr-namespace-21',
   'Constr-namespace-22',
   'Constr-namespace-23',
   'Constr-namespace-24',
   'Constr-namespace-25',
   'Constr-namespace-26',
   'Constr-namespace-27',
   'Constr-namespace-29',
   'K2-DirectConElemNamespace-1',
   'K2-DirectConElemNamespace-2',
   'K2-DirectConElemNamespace-3',
   'K2-DirectConElemNamespace-4',
   'K2-DirectConElemNamespace-5',
   'K2-DirectConElemNamespace-6',
   'K2-DirectConElemNamespace-7',
   'K2-DirectConElemNamespace-8',
   'K2-DirectConElemNamespace-9',
   'K2-DirectConElemNamespace-10',
   'K2-DirectConElemNamespace-11',
   'K2-DirectConElemNamespace-12',
   'K2-DirectConElemNamespace-13',
   'K2-DirectConElemNamespace-14',
   'K2-DirectConElemNamespace-15',
   'K2-DirectConElemNamespace-16',
   'K2-DirectConElemNamespace-17',
   'K2-DirectConElemNamespace-18',
   'K2-DirectConElemNamespace-19',
   'K2-DirectConElemNamespace-20',
   'K2-DirectConElemNamespace-21',
   'K2-DirectConElemNamespace-22',
   'K2-DirectConElemNamespace-23',
   'K2-DirectConElemNamespace-24',
   'K2-DirectConElemNamespace-25',
   'K2-DirectConElemNamespace-26',
   'K2-DirectConElemNamespace-27',
   'K2-DirectConElemNamespace-28',
   'K2-DirectConElemNamespace-29',
   'K2-DirectConElemNamespace-30',
   'K2-DirectConElemNamespace-31',
   'K2-DirectConElemNamespace-32',
   'K2-DirectConElemNamespace-33',
   'K2-DirectConElemNamespace-34',
   'K2-DirectConElemNamespace-35',
   'K2-DirectConElemNamespace-36',
   'K2-DirectConElemNamespace-37',
   'K2-DirectConElemNamespace-38',
   'K2-DirectConElemNamespace-39',
   'K2-DirectConElemNamespace-40',
   'K2-DirectConElemNamespace-41',
   'K2-DirectConElemNamespace-42',
   'K2-DirectConElemNamespace-43',
   'K2-DirectConElemNamespace-44',
   'K2-DirectConElemNamespace-45',
   'K2-DirectConElemNamespace-46',
   'K2-DirectConElemNamespace-47',
   'K2-DirectConElemNamespace-48',
   'K2-DirectConElemNamespace-49',
   'K2-DirectConElemNamespace-50',
   'K2-DirectConElemNamespace-51',
   'K2-DirectConElemNamespace-52',
   'K2-DirectConElemNamespace-53',
   'K2-DirectConElemNamespace-54',
   'K2-DirectConElemNamespace-55',
   'K2-DirectConElemNamespace-56',
   'K2-DirectConElemNamespace-57',
   'K2-DirectConElemNamespace-58',
   'K2-DirectConElemNamespace-59',
   'K2-DirectConElemNamespace-61',
   'K2-DirectConElemNamespace-62',
   'K2-DirectConElemNamespace-63',
   'K2-DirectConElemNamespace-64',
   'K2-DirectConElemNamespace-65',
   'K2-DirectConElemNamespace-67',
   'K2-DirectConElemNamespace-68',
   'K2-DirectConElemNamespace-69',
   'K2-DirectConElemNamespace-70',
   'K2-DirectConElemNamespace-71',
   'K2-DirectConElemNamespace-72',
   'K2-DirectConElemNamespace-73',
   'K2-DirectConElemNamespace-74',
   'K2-DirectConElemNamespace-75',
   'K2-DirectConElemNamespace-76',
   'K2-DirectConElemNamespace-77',
   'K2-DirectConElemNamespace-78',
   'K2-DirectConElemNamespace-79',
   'DirectConElemNamespace-3',
   'DirectConElemNamespace-4',
   'DirectConElemNamespace-5',
   'DirectConElemNamespace-6',
   'Constr-inscope-1',
   'Constr-inscope-2',
   'Constr-inscope-3',
   'Constr-inscope-4',
   'Constr-inscope-5',
   'Constr-inscope-6',
   'Constr-inscope-7',
   'Constr-inscope-8',
   'Constr-inscope-9',
   'Constr-inscope-10',
   'Constr-inscope-11',
   'Constr-inscope-12',
   'Constr-inscope-13',
   'Constr-inscope-14',
   'Constr-inscope-15',
   'Constr-inscope-16',
   'Constr-inscope-17',
   'Constr-inscope-18',
   'Constr-inscope-19',
   'Constr-inscope-20',
   'Constr-inscope-21',
   'Constr-inscope-22',
   'K2-ConInScopeNamespace-1'].
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
environment('MixNS') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/DirElemContent.namespace/MixNS.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('inscope') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/DirElemContent.namespace/inscope.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-namespace-1'(_Config) ->
   Qry = "<foo:elem/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'Constr-namespace-2'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns:foo=\"http://www.example.com\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-3'(_Config) ->
   Qry = "<elem xmlns=\"http://www.example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns=\"http://www.example.com\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns=\"http://www.example.com\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns=\"http://www.example.com\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-4'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com\" xmlns:foo=\"http://www.example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0071" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0071'}) end.
'Constr-namespace-5'(_Config) ->
   Qry = "<elem xmlns=\"http://www.example.com\" xmlns=\"http://www.example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0071" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0071'}) end.
'Constr-namespace-6'(_Config) ->
   Qry = "<elem xmlns:xml=\"http://www.example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'Constr-namespace-7'(_Config) ->
   Qry = "<elem xmlns:xmlns=\"http://www.example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'Constr-namespace-8'(_Config) ->
   Qry = "(<elem xmlns:foo=\"http://www.example.com\"><foo:child/></elem>)/*:child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <foo:child xmlns:foo=\"http://www.example.com\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo:child xmlns:foo=\"http://www.example.com\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo:child xmlns:foo=\"http://www.example.com\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-9'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"/></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"/></elem>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-10'(_Config) ->
   Qry = "declare namespace foo=\"http://www.example.com/prolog\"; <foo:elem xmlns:foo=\"http://www.example.com/element\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <foo:elem xmlns:foo=\"http://www.example.com/element\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo:elem xmlns:foo=\"http://www.example.com/element\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo:elem xmlns:foo=\"http://www.example.com/element\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-11'(_Config) ->
   Qry = "(<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"><foo:grand-child/></foo:child></elem>)//*:grand-child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <foo:grand-child xmlns:foo=\"http://www.example.com/child\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo:grand-child xmlns:foo=\"http://www.example.com/child\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo:grand-child xmlns:foo=\"http://www.example.com/child\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-12'(_Config) ->
   Qry = "declare namespace foo=\"http://www.example.com/prolog\"; (<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child/></elem>)//*:child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <foo:child xmlns:foo=\"http://www.example.com/parent\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo:child xmlns:foo=\"http://www.example.com/parent\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo:child xmlns:foo=\"http://www.example.com/parent\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-13'(_Config) ->
   Qry = "<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child xmlns:foo=\"\"/></foo:elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <foo:elem xmlns:foo=\"http://www.example.com/parent\"><child/></foo:elem>\n            \n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child/></foo:elem>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0085") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-namespace-14'(_Config) ->
   Qry = "<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child xmlns:foo=\"\"><foo:grand-child/></child></foo:elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0085") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-namespace-15'(_Config) ->
   Qry = "declare namespace foo=\"http://www.example.com/prolog\"; <elem xmlns:foo=\"\"><foo:child/></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0085") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-namespace-16'(_Config) ->
   Qry = "(<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child xmlns:foo=\"\"><grand-child/></child></foo:elem>)//grand-child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <grand-child/>\n            \n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<grand-child/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0085") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-namespace-17'(_Config) ->
   Qry = "(<elem xmlns=\"http://www.example.com\"><child/></elem>)/*:child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <child xmlns=\"http://www.example.com\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<child xmlns=\"http://www.example.com\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<child xmlns=\"http://www.example.com\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-18'(_Config) ->
   Qry = "<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"/></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"/></elem>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-19'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/prolog\"; <elem xmlns=\"http://www.example.com/element\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns=\"http://www.example.com/element\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns=\"http://www.example.com/element\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns=\"http://www.example.com/element\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-20'(_Config) ->
   Qry = "(<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"><grand-child/></child></elem>)//*:grand-child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <grand-child xmlns=\"http://www.example.com/child\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<grand-child xmlns=\"http://www.example.com/child\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<grand-child xmlns=\"http://www.example.com/child\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-21'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/prolog\"; (<elem xmlns=\"http://www.example.com/element\"><child/></elem>)/*:child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <child xmlns=\"http://www.example.com/element\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<child xmlns=\"http://www.example.com/element\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<child xmlns=\"http://www.example.com/element\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-22'(_Config) ->
   Qry = "<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"/></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"/></elem>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-23'(_Config) ->
   Qry = "(<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"><grand-child/></child></elem>)//*:grand-child",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <grand-child/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<grand-child/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<grand-child/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-24'(_Config) ->
   Qry = "<elem xmlns=\"{'http://www.example.com'}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'Constr-namespace-25'(_Config) ->
   Qry = "<elem xmlns=\"http://www.example.com{'/namespace'}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'Constr-namespace-26'(_Config) ->
   Qry = "<elem xmlns:cm=\"http://www.example.com\">{count(//cm:b)}</elem>",
   Env = xqerl_test:handle_environment(environment('MixNS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns:cm=\"http://www.example.com\">1</elem>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:cm=\"http://www.example.com\">1</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:cm=\"http://www.example.com\">1</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-27'(_Config) ->
   Qry = "<elem xmlns:cm=\"http://www.example.com\" attr=\"{count(//cm:b)}\"/>",
   Env = xqerl_test:handle_environment(environment('MixNS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem xmlns:cm=\"http://www.example.com\" attr=\"1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:cm=\"http://www.example.com\" attr=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:cm=\"http://www.example.com\" attr=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-namespace-29'(_Config) ->
   Qry = "<parent><child xmlns:cm=\"http://www.example.com\"/><child>{count(//cm:b)}</child></parent>",
   Env = xqerl_test:handle_environment(environment('MixNS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K2-DirectConElemNamespace-1'(_Config) ->
   Qry = "<name xmlns:ns=\"http://example.com/NS\"/>, ns:nametest",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K2-DirectConElemNamespace-2'(_Config) ->
   Qry = "<a:elem xmlns:a=\"http://example.com/NS\" xmlns:b=\"http://example.com/NS\"></b:elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0118" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0118'}) end.
'K2-DirectConElemNamespace-3'(_Config) ->
   Qry = "<a:elem xmlns:a=\"http://example.com/NS\" xmlns:b=\"http://example.com/NS\"></b:elem> declare default element namespace \"http://example.com/NS\";",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0118" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0118'}) end.
'K2-DirectConElemNamespace-4'(_Config) ->
   Qry = "declare namespace p = \"http://example.com/QuiteWeirdNamespace\"; empty(p:e[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-5'(_Config) ->
   Qry = "count(in-scope-prefixes(<e/>)[. eq \"xml\"])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-DirectConElemNamespace-6'(_Config) ->
   Qry = "count(in-scope-prefixes(element e{})[. eq \"xml\"])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-DirectConElemNamespace-7'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e a=\"{count()}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-8'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e a=\"{p:count()}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-9'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"{count()}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-10'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"{p:count()}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-11'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"{nametest}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-12'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e a=\"{nametest}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-13'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" p:p=\"{p:nametest}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-14'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\"; <e p:p=\"{p:nametest}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          \n         \n        \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-15'(_Config) ->
   Qry = "<e xmlns=\"content{{ {'1'}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-16'(_Config) ->
   Qry = "<e xmlns:p=\"content{{ {'1'}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-17'(_Config) ->
   Qry = "<e xmlns=\"content{()}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-18'(_Config) ->
   Qry = "<e xmlns:p=\"content{()}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-19'(_Config) ->
   Qry = "<e a=\"{1 instance of integer}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-20'(_Config) ->
   Qry = "<e a=\"{1 treat as integer}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-21'(_Config) ->
   Qry = "<e a=\"{1 cast as string}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-22'(_Config) ->
   Qry = "<e a=\"{1 castable as string}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-23'(_Config) ->
   Qry = "<e a=\"{<e><b>data</b></e>/b}\" xmlns=\"http://www.example.com/\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.example.com/\" a=\"data\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.example.com/\" a=\"data\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.example.com/\" a=\"data\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-24'(_Config) ->
   Qry = "<e a=\"{<e b=\"data\"/>/@b}\" xmlns=\"http://www.example.com/\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.example.com/\" a=\"data\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.example.com/\" a=\"data\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.example.com/\" a=\"data\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-25'(_Config) ->
   Qry = "declare namespace b = \"http://www.example.com/\"; empty(<e xmlns=\"http://www.example.com/\"><d xmlns=\"\"><b/></d></e>/b:d/b:b)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-26'(_Config) ->
   Qry = "<e xmlns:d=\"http://www.example.com/\"/>, d:d",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K2-DirectConElemNamespace-27'(_Config) ->
   Qry = "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\"> <b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/> {p:integer(1)} </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\"><b/>1</e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\"><b/>1</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\"><b/>1</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-28'(_Config) ->
   Qry = "<e xmlns:p=\"http://www.w3.org/2005/xpath-functions\"> <b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/> {fn:count(0)} </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.w3.org/2005/xpath-functions\"><b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>1</e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.w3.org/2005/xpath-functions\"><b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>1</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.w3.org/2005/xpath-functions\"><b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>1</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-29'(_Config) ->
   Qry = "<e a=\"{1 instance of p:integer}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-30'(_Config) ->
   Qry = "<e a=\"{1 treat as p:integer}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-31'(_Config) ->
   Qry = "<e a=\"{1 cast as p:string}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-32'(_Config) ->
   Qry = "<e a=\"{1 castable as p:string}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-33'(_Config) ->
   Qry = "<a attr=\"{let $p:name := 3 return $p:name}\" xmlns:p=\"http://www.example.com/\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xmlns:p=\"http://www.example.com/\" attr=\"3\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:p=\"http://www.example.com/\" attr=\"3\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:p=\"http://www.example.com/\" attr=\"3\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-34'(_Config) ->
   Qry = "<e xmlns=\"http://{exa}mple.com/\"/>/@xmlns",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-35'(_Config) ->
   Qry = "<e xmlns=\"{1}\"/>/@xmlns",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-36'(_Config) ->
   Qry = "<e xmlns=\"{xs:anyURI(\"http://www.example.com/\")}\"/>/@xmlns",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-37'(_Config) ->
   Qry = "<e xmlns=\"{xs:untypedAtomic(\"http://www.example.com/\")}\"/>/@xmlns",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-38'(_Config) ->
   Qry = "<e xmlns=\"/www.example.com/}\"/>/@xmlns",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemNamespace-39'(_Config) ->
   Qry = "declare namespace p = \"http://example.com/\"; <p:e xmlns=\"\"/>, count(in-scope-prefixes(<p:e xmlns=\"\"/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <p:e xmlns:p=\"http://example.com/\"/>2\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<p:e xmlns:p=\"http://example.com/\"/>2"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<p:e xmlns:p=\"http://example.com/\"/>2" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-40'(_Config) ->
   Qry = "declare namespace p = \"http://www.example.com/A\"; <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\"/> </e>/p:b",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\" xmlns=\"http://www.example.com/A\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\" xmlns=\"http://www.example.com/A\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\" xmlns=\"http://www.example.com/A\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-41'(_Config) ->
   Qry = "declare namespace p = \"http://www.example.com/A\"; \"START\", for $i in in-scope-prefixes(<e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" /> </e>/p:b) order by $i return $i, \"END\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         START  A B xml END\n      ",
   case xqerl_test:string_value(Res) of
             "START  A B xml END" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConElemNamespace-42'(_Config) ->
   Qry = "<e xmlns:p=\"http://www.example.com/\"> <e xmlns:p=\"http://www.example.com/\"/> </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://www.example.com/\"><e/></e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://www.example.com/\"><e/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://www.example.com/\"><e/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-43'(_Config) ->
   Qry = "<e xmlns=\"http://www.example.com/\"> <e xmlns=\"http://www.example.com/\"/> </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://www.example.com/\"><e/></e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.example.com/\"><e/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.example.com/\"><e/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-44'(_Config) ->
   Qry = "<e xmlns=\"/www.example.com/{\"/>/@xmlns",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-45'(_Config) ->
   Qry = "let $i := <e xmlns:p=\"http://example.com\" p:anAttribute=\"attrValue\"/> return <a>{$i/@*}</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xmlns:p=\"http://example.com\" p:anAttribute=\"attrValue\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:p=\"http://example.com\" p:anAttribute=\"attrValue\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:p=\"http://example.com\" p:anAttribute=\"attrValue\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-46'(_Config) ->
   Qry = "let $i := <e xml:space=\"preserve\"/> return <a>{$i/@*}</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xml:space=\"preserve\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xml:space=\"preserve\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xml:space=\"preserve\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-47'(_Config) ->
   Qry = "<e xmlns=\"\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-48'(_Config) ->
   Qry = "<e xmlns:p=\"http://example.com\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns:p=\"http://example.com\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://example.com\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://example.com\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-49'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/A\"; <anElement xmlns=\"http://www.example.com/B\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <anElement xmlns=\"http://www.example.com/B\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<anElement xmlns=\"http://www.example.com/B\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<anElement xmlns=\"http://www.example.com/B\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-50'(_Config) ->
   Qry = "<e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" xmlns=\"\"/> </e>/b",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\"/>\n            <b xmlns:A=\"http://www.example.com/C\" xmlns:B=\"http://www.example.com/C\"/>\n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<b xmlns:A=\"http://www.example.com/C\" xmlns:B=\"http://www.example.com/C\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-51'(_Config) ->
   Qry = "declare default element namespace \"http://example.com\"; <e xmlns=\"\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-52'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/\"; <a> <e xmlns=\"\"/> </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xmlns=\"http://example.com/\"><e xmlns=\"\"/></a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns=\"http://example.com/\"><e xmlns=\"\"/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns=\"http://example.com/\"><e xmlns=\"\"/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-53'(_Config) ->
   Qry = "count(in-scope-prefixes(<a xmlns=\"http://example.com/\"> <e xmlns=\"\"/> </a>/e))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-DirectConElemNamespace-54'(_Config) ->
   Qry = "count(<e xmlns=\"http://example.com/\"><a xmlns=\"\"/></e>/namespace-uri(exactly-one(*)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-DirectConElemNamespace-55'(_Config) ->
   Qry = "<e xmlns=\"http://example.com/\"> <b xmlns=\"\"> { attribute {QName(\"http://example.com/2\", \"p:attr\")} {()} } </b> </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://example.com/\"><b xmlns=\"\" xmlns:p=\"http://example.com/2\" p:attr=\"\"/></e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://example.com/\"><b xmlns=\"\" xmlns:p=\"http://example.com/2\" p:attr=\"\"/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://example.com/\"><b xmlns=\"\" xmlns:p=\"http://example.com/2\" p:attr=\"\"/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-56'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/\"; <r xmlns:p=\"http://example.com/\"> { <e p:att=\"\"/>/(@att, attribute::att) } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <r xmlns=\"http://example.com/\" xmlns:p=\"http://example.com/\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r xmlns=\"http://example.com/\" xmlns:p=\"http://example.com/\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r xmlns=\"http://example.com/\" xmlns:p=\"http://example.com/\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-57'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/\"; declare namespace p = \"http://example.com/\"; <r> { <e p:att=\"\"/>/(@att) } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <r xmlns=\"http://example.com/\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r xmlns=\"http://example.com/\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r xmlns=\"http://example.com/\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-58'(_Config) ->
   Qry = "<r> <xs:element/> <local:element/> <fn:element/> <xml:element/> </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <r><xs:element xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"/><local:element xmlns:local=\"http://www.w3.org/2005/xquery-local-functions\"/><fn:element xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/><xml:element/></r>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><xs:element xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"/><local:element xmlns:local=\"http://www.w3.org/2005/xquery-local-functions\"/><fn:element xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/><xml:element/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><xs:element xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"/><local:element xmlns:local=\"http://www.w3.org/2005/xquery-local-functions\"/><fn:element xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/><xml:element/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-59'(_Config) ->
   Qry = "namespace-uri(<p:e xmlns:p=\"http://example.com/{{{{{{}}}}}}asd\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            http://example.com/{{{}}}asd\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "http://example.com/{{{}}}asd") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-61'(_Config) ->
   Qry = "<e xmlns:p=\"{\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-62'(_Config) ->
   Qry = "<e xmlns:p=\"}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemNamespace-63'(_Config) ->
   Qry = "<e xmlns:p=\"content{\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-64'(_Config) ->
   Qry = "<e xmlns:p=\"content}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemNamespace-65'(_Config) ->
   Qry = "namespace-uri-for-prefix(\"p\", <e xmlns:p=\"http://example.com/{{}}{{{{}}}}\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            http://example.com/{}{{}}\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "http://example.com/{}{{}}") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-67'(_Config) ->
   Qry = "<e xmlns:p=\"{content\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-68'(_Config) ->
   Qry = "<e xmlns:p=\"}content\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemNamespace-69'(_Config) ->
   Qry = "<e xmlns:p=\"content{content\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0022") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-70'(_Config) ->
   Qry = "<e xmlns:p=\"content}content\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemNamespace-71'(_Config) ->
   Qry = "<e xmlns:p=\"{\"http://example.com/\"}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-72'(_Config) ->
   Qry = "<e xmlns=\"{\"http://example.com/\"}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-73'(_Config) ->
   Qry = "<e xmlns:p=\"{()}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-74'(_Config) ->
   Qry = "<e xmlns=\"{()}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0022" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0022'}) end.
'K2-DirectConElemNamespace-75'(_Config) ->
   Qry = "namespace-uri(<e xmlns=\"http://example.com/{{1}}\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            http://example.com/{1}\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "http://example.com/{1}") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-76'(_Config) ->
   Qry = "<e xmlns:p=\"http://example.com/{{1}}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <e xmlns:p=\"http://example.com/{1}\"/>\n            \n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<e xmlns:p=\"http://example.com/{1}\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConElemNamespace-77'(_Config) ->
   Qry = "declare namespace t = \"http://example.com/2\"; <p:a xmlns:p=\"http://example.com/\"> <p:e xmlns:p=\"http://example.com/2\"/> </p:a>//t:e",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <p:e xmlns:p=\"http://example.com/2\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<p:e xmlns:p=\"http://example.com/2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<p:e xmlns:p=\"http://example.com/2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-78'(_Config) ->
   Qry = "let $e := document{(<X1:L xmlns:X1=\"http://example.com/URL1\">1</X1:L>, <X2:L xmlns:X2=\"http://example.com/URL2\">2</X2:L>)} return <outer xmlns:P=\"http://example.com/URL1\"> { let $outer as element(P:L) := $e/element(P:L) return <inner xmlns:P=\"http://example.com/URL2\"> { let $inner as element(P:L) := $e/element(P:L) return ($outer, $inner) } </inner> } </outer>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <outer xmlns:P=\"http://example.com/URL1\"><inner xmlns:P=\"http://example.com/URL2\"><X1:L xmlns:X1=\"http://example.com/URL1\">1</X1:L><X2:L xmlns:X2=\"http://example.com/URL2\">2</X2:L></inner></outer>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<outer xmlns:P=\"http://example.com/URL1\"><inner xmlns:P=\"http://example.com/URL2\"><X1:L xmlns:X1=\"http://example.com/URL1\">1</X1:L><X2:L xmlns:X2=\"http://example.com/URL2\">2</X2:L></inner></outer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<outer xmlns:P=\"http://example.com/URL1\"><inner xmlns:P=\"http://example.com/URL2\"><X1:L xmlns:X1=\"http://example.com/URL1\">1</X1:L><X2:L xmlns:X2=\"http://example.com/URL2\">2</X2:L></inner></outer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemNamespace-79'(_Config) ->
   Qry = "let $e := document{(<X1:L xmlns:X1=\"http://ns.example.com/URL1\">1</X1:L>, <X2:L xmlns:X2=\"http://ns.example.com/URL2\">2</X2:L>)} return <outer xmlns:P=\"http://ns.example.com/URL1\"> { let $outer as element(P:L) := $e/element(P:L) return <inner xmlns:P=\"http://ns.example.com/URL2\"> { let $inner as element(P:L) := $outer return $inner } </inner> } </outer>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'DirectConElemNamespace-3'(_Config) ->
   Qry = "namespace-uri(<p:e xmlns:p=\"http://ns.example.com/ns?val=\"\"\"\"\"\"asd\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            http://ns.example.com/ns?val=\"\"\"asd\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "http://ns.example.com/ns?val=\"\"\"asd") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'DirectConElemNamespace-4'(_Config) ->
   Qry = "namespace-uri(<p:e xmlns:p=\"http://ns.example.com/ns?val=\"\"asd\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            http://ns.example.com/ns?val=\"asd\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "http://ns.example.com/ns?val=\"asd") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'DirectConElemNamespace-5'(_Config) ->
   Qry = "namespace-uri(<p:e xmlns:p='http://ns.example.com/ns?val=''''''asd'/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://ns.example.com/ns?val='''asd\n      ",
   case xqerl_test:string_value(Res) of
             "http://ns.example.com/ns?val='''asd" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'DirectConElemNamespace-6'(_Config) ->
   Qry = "namespace-uri(<e xmlns='http://ns.example.com/ns?val=''asd'/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://ns.example.com/ns?val='asd\n      ",
   case xqerl_test:string_value(Res) of
             "http://ns.example.com/ns?val='asd" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-inscope-1'(_Config) ->
   Qry = "<new xmlns:foo=\"http://www.example.com\">{//@*:attr1}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-2'(_Config) ->
   Qry = "<new>{//@*:attr1, //@*:attr2}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-3'(_Config) ->
   Qry = "for $x in <parent1 xmlns:foo=\"http://www.example.com/parent1\" foo:attr1=\"attr1\"/> return <new xmlns:foo=\"http://www.example.com\">{$x//@*:attr1}</new>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-4'(_Config) ->
   Qry = "for $x in <inscope> <parent1 xmlns:foo=\"http://www.example.com/parent1\" foo:attr1=\"attr1\"/> <parent2 xmlns:foo=\"http://www.example.com/parent2\" foo:attr2=\"attr2\"/></inscope> return <new>{$x//@*:attr1, $x//@*:attr2}</new>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-5'(_Config) ->
   Qry = "<new>{//*:child3}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-6'(_Config) ->
   Qry = "<new>{//*:child4}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new><child4 xmlns=\"http://www.example.com/parent4\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new><child4 xmlns=\"http://www.example.com/parent4\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new><child4 xmlns=\"http://www.example.com/parent4\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-7'(_Config) ->
   Qry = "for $x in <parent3 xmlns:foo=\"http://www.example.com/parent3\"><foo:child3/></parent3> return <new>{$x//*:child3}</new>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-8'(_Config) ->
   Qry = "for $x in <parent4 xmlns=\"http://www.example.com/parent4\"><child4/></parent4> return <new>{$x//*:child4}</new>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new><child4 xmlns=\"http://www.example.com/parent4\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new><child4 xmlns=\"http://www.example.com/parent4\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new><child4 xmlns=\"http://www.example.com/parent4\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-9'(_Config) ->
   Qry = "<new>{//*:child1}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-10'(_Config) ->
   Qry = "<new xmlns=\"http://www.example.com\">{//*:child2}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" xmlns:foo=\"http://www.example.com/parent2\" attr=\"child\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" xmlns:foo=\"http://www.example.com/parent2\" attr=\"child\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" xmlns:foo=\"http://www.example.com/parent2\" attr=\"child\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-11'(_Config) ->
   Qry = "for $x in <parent1 xmlns:foo=\"http://www.example.com/parent1\" foo:attr1=\"attr1\"><child1 attr=\"child\"/></parent1> return <new>{$x//*:child1}</new>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n         <new><child1 attr=\"child\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new><child1 attr=\"child\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new><child1 attr=\"child\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-12'(_Config) ->
   Qry = "for $x in <parent2 xmlns:foo=\"http://www.example.com/parent2\" foo:attr2=\"attr2\"><child2 attr=\"child\"/></parent2> return <new xmlns=\"http://www.example.com\">{$x//*:child2}</new>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n         <new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" attr=\"child\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" attr=\"child\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" attr=\"child\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-13'(_Config) ->
   Qry = "declare namespace foo = \"http://example.com\"; <new/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-14'(_Config) ->
   Qry = "declare namespace foo = \"http://example.com\"; <foo:new/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <foo:new xmlns:foo=\"http://example.com\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo:new xmlns:foo=\"http://example.com\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo:new xmlns:foo=\"http://example.com\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-15'(_Config) ->
   Qry = "<xml:new/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <xml:new/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<xml:new/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<xml:new/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-16'(_Config) ->
   Qry = "<new xml:attr=\"foo\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xml:attr=\"foo\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xml:attr=\"foo\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xml:attr=\"foo\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-17'(_Config) ->
   Qry = "<new xmlns:foo=\"http://www.example.com\">{//*:child1}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns:foo=\"http://www.example.com\"><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns:foo=\"http://www.example.com\"><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns:foo=\"http://www.example.com\"><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-18'(_Config) ->
   Qry = "<new xmlns:foo=\"http://www.example.com/parent1\">{//*:child1}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns:foo=\"http://www.example.com/parent1\"><child1 attr=\"child\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns:foo=\"http://www.example.com/parent1\"><child1 attr=\"child\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns:foo=\"http://www.example.com/parent1\"><child1 attr=\"child\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-19'(_Config) ->
   Qry = "<new xmlns=\"http://www.example.com\">{//*:child4}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns=\"http://www.example.com\"><child4 xmlns=\"http://www.example.com/parent4\"/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns=\"http://www.example.com\"><child4 xmlns=\"http://www.example.com/parent4\"/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns=\"http://www.example.com\"><child4 xmlns=\"http://www.example.com/parent4\"/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-20'(_Config) ->
   Qry = "<new xmlns=\"http://www.example.com/parent4\">{//*:child4}</new>",
   Env = xqerl_test:handle_environment(environment('inscope')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <new xmlns=\"http://www.example.com/parent4\"><child4/></new>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<new xmlns=\"http://www.example.com/parent4\"><child4/></new>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<new xmlns=\"http://www.example.com/parent4\"><child4/></new>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-21'(_Config) ->
   Qry = "\n        declare namespace cat ='mycat'; \n        <a t='cat:miau'>42</a>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a t=\"cat:miau\">42</a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a t=\"cat:miau\">42</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a t=\"cat:miau\">42</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-inscope-22'(_Config) ->
   Qry = "\n        <a xsi:type='xs:integer'>42</a>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:integer\">42</a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:integer\">42</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:integer\">42</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ConInScopeNamespace-1'(_Config) ->
   Qry = "let $i := document{<e1/>, <e2/>, <e3/>, <e4/>} return (in-scope-prefixes($i/e1), in-scope-prefixes($i/e2), in-scope-prefixes($i/e3), in-scope-prefixes($i/e4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xml xml xml xml\n      ",
   case xqerl_test:string_value(Res) of
             "xml xml xml xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
