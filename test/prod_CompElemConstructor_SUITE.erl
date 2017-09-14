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
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
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
environment('DupNode') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CompAttrConstructor/DupNode.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomicns') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomicns.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TopMany') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/AxisStep/TopMany.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('acme_corp') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/op/union/acme_corp.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-compelem-name-1'(_Config) ->
   Qry = "element elem {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>text</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>text</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>text</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-name-2'(_Config) ->
   Qry = "declare namespace foo=\"http://www.example.com/foo\"; element foo:elem {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <foo:elem xmlns:foo=\"http://www.example.com/foo\">text</foo:elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo:elem xmlns:foo=\"http://www.example.com/foo\">text</foo:elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo:elem xmlns:foo=\"http://www.example.com/foo\">text</foo:elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-name-3'(_Config) ->
   Qry = "element foo:elem {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'Constr-compelem-compname-1'(_Config) ->
   Qry = "element {()} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-2'(_Config) ->
   Qry = "element {'one', 'two'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-3'(_Config) ->
   Qry = "element {xs:untypedAtomic('one'), xs:untypedAtomic('two')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-4'(_Config) ->
   Qry = "element {//a} {'text'}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-5'(_Config) ->
   Qry = "element {1,2} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-6'(_Config) ->
   Qry = "element {123} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-7'(_Config) ->
   Qry = "element {xs:dateTime(\"1999-05-31T13:20:00\")} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compelem-compname-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-compelem-compname-9'(_Config) ->
   Qry = "element {xs:QName('aQname')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <aQname>text</aQname>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<aQname>text</aQname>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<aQname>text</aQname>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-10'(_Config) ->
   Qry = "element {'elem'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>text</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>text</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>text</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-11'(_Config) ->
   Qry = "element {'elem', ()} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>text</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>text</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>text</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-12'(_Config) ->
   Qry = "element {(), 'elem'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>text</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>text</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>text</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-13'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{element {'foo:elem'} {'text'}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-14'(_Config) ->
   Qry = "element {'foo:elem'} {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compelem-compname-15'(_Config) ->
   Qry = "element {xs:untypedAtomic('elem')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>text</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>text</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>text</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-16'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{element {xs:untypedAtomic('foo:elem')} {'text'}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com/foo\"><foo:elem>text</foo:elem></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-compname-17'(_Config) ->
   Qry = "element {xs:untypedAtomic('foo:elem')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compelem-compname-18'(_Config) ->
   Qry = "element {'el em'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compelem-compname-19'(_Config) ->
   Qry = "element {xs:untypedAtomic('el em')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compelem-adjtext-1'(_Config) ->
   Qry = "count((element elem {1, 'string', 1,2e3})/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-compelem-adjtext-2'(_Config) ->
   Qry = "count((element elem {1, //text(), 'string'})/text())",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-compelem-adjtext-3'(_Config) ->
   Qry = "count((element elem {1, 2, <a/>, 3, 4, <b/>, 5, 6})/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-compelem-nested-1'(_Config) ->
   Qry = "element elem {1, element a {2, element b {element c {}, element d {3}}, 4}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1<a>2<b><c/><d>3</d></b>4</a></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1<a>2<b><c/><d>3</d></b>4</a></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1<a>2<b><c/><d>3</d></b>4</a></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-nested-2'(_Config) ->
   Qry = "element elem {}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-enclexpr-1'(_Config) ->
   Qry = "element elem {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-enclexpr-2'(_Config) ->
   Qry = "element elem {1,'a',3.5,4e2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1 a 3.5 400</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1 a 3.5 400</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1 a 3.5 400</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-enclexpr-3'(_Config) ->
   Qry = "element elem {1,//a,2,3,//comment(),4,5,//processing-instruction(),6,7,//text(),8}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-enclexpr-4'(_Config) ->
   Qry = "element elem {1, '', 2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1  2</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1  2</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1  2</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-nodeid-1'(_Config) ->
   Qry = "for $x in <a/>, $y in element elem {$x} return exactly-one($y/a) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-compelem-nodeid-2'(_Config) ->
   Qry = "for $x in <a b=\"b\"/>, $y in element elem {$x/@b} return $y/@b is $x/@b",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-compelem-nodeid-3'(_Config) ->
   Qry = "for $x in <!--comment-->, $y in element elem {$x} return exactly-one($y/comment()) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-compelem-nodeid-4'(_Config) ->
   Qry = "for $x in <?pi content?>, $y in element elem {$x} return exactly-one($y/processing-instruction()) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-compelem-nodeid-5'(_Config) ->
   Qry = "for $x in <a>text</a>, $y in element elem {$x/text()} return exactly-one($y/text()) is exactly-one($x/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-compelem-constrmod-3'(_Config) ->
   Qry = "declare construction strip; (element elem {xs:decimal((//decimal[1]))}) cast as xs:integer",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'Constr-compelem-constrmod-4'(_Config) ->
   Qry = "declare construction preserve; (element elem {xs:decimal((//decimal[1]))}) cast as xs:integer",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            12678967
            
         
      ",
 case ( begin Tst1 = xqerl:run("12678967"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-compelem-constrmod-7'(_Config) ->
   Qry = "declare construction strip; (element elem {//*:decimal/@*:attr})/@*:attr cast as xs:integer",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'Constr-compelem-constrmod-8'(_Config) ->
   Qry = "declare construction preserve; (element elem {xs:decimal(//*:decimal[1]/@*:attr)}) cast as xs:integer",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            12678967
            
            
         
      ",
 case ( begin Tst1 = xqerl:run("12678967"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-compelem-baseuri-1'(_Config) ->
   Qry = "fn:base-uri(element elem {attribute xml:base {\"http://www.example.com\"}})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compelem-baseuri-2'(_Config) ->
   Qry = "fn:base-uri(exactly-one((<elem xml:base=\"http://www.example.com\">{element a {}}</elem>)/a))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compelem-baseuri-3'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:base-uri(element elem {})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compelem-doc-1'(_Config) ->
   Qry = "element elem {., .}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-parent-1'(_Config) ->
   Qry = "count((element elem {})/..)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-compelem-string-1'(_Config) ->
   Qry = "fn:string(element elem {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_types:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compelem-data-1'(_Config) ->
   Qry = "fn:data(element elem {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_types:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compelem-attr-1'(_Config) ->
   Qry = "element elem {1, //west/@mark}",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'Constr-compelem-attr-2'(_Config) ->
   Qry = "element elem {element a {}, //west/@mark}",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'Constr-compelem-attr-3'(_Config) ->
   Qry = "element elem {//west/@mark, //west/@west-attr-1}",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem mark=\"w0\" west-attr-1=\"w1\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem mark=\"w0\" west-attr-1=\"w1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem mark=\"w0\" west-attr-1=\"w1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compelem-attr-4'(_Config) ->
   Qry = "element elem {//west/@mark, //center/@mark}",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'K2-ComputeConElem-1'(_Config) ->
   Qry = "element \"name\" {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ComputeConElem-2'(_Config) ->
   Qry = "<elem>{\"\", \"\", <e/>, <b></b>}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem> <e/><b/></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem> <e/><b/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem> <e/><b/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConElem-3'(_Config) ->
   Qry = "<elem>{<e/>, <b></b>, \"\", \"\"}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><e/><b/> </elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><e/><b/> </elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><e/><b/> </elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConElem-4'(_Config) ->
   Qry = "element {\"aPrefix:localName\"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'K2-ComputeConElem-5'(_Config) ->
   Qry = "element {xs:untypedAtomic(\"aPrefix::localName\")} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'K2-ComputeConElem-6'(_Config) ->
   Qry = "data(element foo {\"dsa\"}) instance of xs:untypedAtomic",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConElem-7'(_Config) ->
   Qry = "data(element foo {\"dsa\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         dsa
      ",
   case xqerl_types:string_value(Res) of
             "dsa" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ComputeConElem-8'(_Config) ->
   Qry = "element e {\"content\"} instance of element(*, xs:anyType)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConElem-9'(_Config) ->
   Qry = "element e {\"content\"} instance of element(*, xs:untyped)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           
           
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ComputeConElem-10'(_Config) ->
   Qry = "declare construction strip; element e {\"content\"} instance of element(*, xs:untyped)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConElem-11'(_Config) ->
   Qry = "element e {\"content\"} instance of element(a, xs:anyType)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConElem-12'(_Config) ->
   Qry = "declare construction strip; element e {\"content\"} instance of element(b, xs:untyped)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConElem-13'(_Config) ->
   Qry = "element e {element b{()}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e><b/></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><b/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><b/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConElem-14'(_Config) ->
   Qry = "
        declare function local:addNamespace($argElement as element(), $argPrefix as xs:string, $namespaceURI as xs:string) as element() { 
            element { QName($namespaceURI, concat($argPrefix, \":x\")) }{$argElement}/* 
        }; 
        local:addNamespace(<a><b/></a>, \"prefix\", \"http://example.com/\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a xmlns:prefix=\"http://example.com/\"><b/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:prefix=\"http://example.com/\"><b/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:prefix=\"http://example.com/\"><b/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConElem-15'(_Config) ->
   Qry = "
        declare default element namespace \"http://example.com/NS\"; 
        element {exactly-one((//*)[3])} {}",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <Boston xmlns=\"http://example.com/NS\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Boston xmlns=\"http://example.com/NS\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Boston xmlns=\"http://example.com/NS\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'comp-elem-bad-name-1'(_Config) ->
   Qry = "element {\"xmlns:error\"} {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
            
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0096") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'comp-elem-bad-name-2'(_Config) ->
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace URI is 'http://www.w3.org/2000/xmlns/' Mary Holstege :) element { fn:QName(\"http://www.w3.org/2000/xmlns/\",\"error\")} {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0096" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0096'}) end.
'comp-elem-bad-name-3'(_Config) ->
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace URI is 'http://www.w3.org/2000/xmlns/' Mary Holstege :) element { fn:QName(\"http://www.w3.org/2000/xmlns/\",\"foo:error\")} {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0096" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0096'}) end.
'comp-elem-bad-name-4'(_Config) ->
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace prefix is 'xml' and namespace URI is not 'http://www.w3.org/XML/1998/namespace' Mary Holstege :) element { fn:QName(\"http://example.com/not-XML-uri\",\"xml:error\") } {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0096" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0096'}) end.
'comp-elem-bad-name-5'(_Config) ->
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace prefix is not 'xml' and its namespace URI is 'http://www.w3.org/XML/1998/namespace' Mary Holstege :) element { fn:QName(\"http://www.w3.org/XML/1998/namespace\",\"foo:error\") } {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0096" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0096'}) end.
'comp-elem-bad-name-6'(_Config) ->
   Qry = "(: 3.7.3.1 Computed Element Constructor per XQ.E19 XQDY0096 if namespace prefix is 'xmlns' Mary Holstege :) element { fn:QName(\"http://example.com/some-uri\",\"xmlns:error\") } {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0096" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0096'}) end.
