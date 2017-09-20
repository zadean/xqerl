-module('prod_DirElemContent_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-cont-invalid-1'/1]).
-export(['Constr-cont-invalid-2'/1]).
-export(['Constr-cont-invalid-3'/1]).
-export(['Constr-cont-invalid-4'/1]).
-export(['Constr-cont-eol-1'/1]).
-export(['Constr-cont-eol-2'/1]).
-export(['Constr-cont-eol-3'/1]).
-export(['Constr-cont-eol-4'/1]).
-export(['Constr-cont-entref-1'/1]).
-export(['Constr-cont-entref-2'/1]).
-export(['Constr-cont-entref-3'/1]).
-export(['Constr-cont-entref-4'/1]).
-export(['Constr-cont-entref-5'/1]).
-export(['Constr-cont-charref-1'/1]).
-export(['Constr-cont-charref-2'/1]).
-export(['Constr-cont-cdata-1'/1]).
-export(['Constr-cont-text-1'/1]).
-export(['Constr-cont-text-2'/1]).
-export(['Constr-cont-nested-1'/1]).
-export(['Constr-cont-nested-2'/1]).
-export(['Constr-cont-nested-3'/1]).
-export(['Constr-cont-nested-4'/1]).
-export(['Constr-cont-enclexpr-1'/1]).
-export(['Constr-cont-enclexpr-2'/1]).
-export(['Constr-cont-enclexpr-3'/1]).
-export(['Constr-cont-enclexpr-4'/1]).
-export(['Constr-cont-enclexpr-5'/1]).
-export(['Constr-cont-nested-5'/1]).
-export(['Constr-cont-nodeid-1'/1]).
-export(['Constr-cont-nodeid-2'/1]).
-export(['Constr-cont-nodeid-3'/1]).
-export(['Constr-cont-nodeid-4'/1]).
-export(['Constr-cont-nodeid-5'/1]).
-export(['Constr-cont-constrmod-1'/1]).
-export(['Constr-cont-constrmod-2'/1]).
-export(['Constr-cont-constrmod-3'/1]).
-export(['Constr-cont-constrmod-4'/1]).
-export(['Constr-cont-constrmod-5'/1]).
-export(['Constr-cont-constrmod-6'/1]).
-export(['Constr-cont-constrmod-7'/1]).
-export(['Constr-cont-constrmod-8'/1]).
-export(['Constr-cont-nsmode-1'/1]).
-export(['Constr-cont-nsmode-2'/1]).
-export(['Constr-cont-nsmode-3'/1]).
-export(['Constr-cont-nsmode-4'/1]).
-export(['Constr-cont-nsmode-5'/1]).
-export(['Constr-cont-nsmode-6'/1]).
-export(['Constr-cont-nsmode-7'/1]).
-export(['Constr-cont-nsmode-8'/1]).
-export(['Constr-cont-nsmode-9'/1]).
-export(['Constr-cont-nsmode-10'/1]).
-export(['Constr-cont-nsmode-11'/1]).
-export(['Constr-cont-uripres-1'/1]).
-export(['Constr-cont-adjtext-1'/1]).
-export(['Constr-cont-adjtext-2'/1]).
-export(['Constr-cont-adjtext-3'/1]).
-export(['Constr-cont-adjtext-4'/1]).
-export(['Constr-cont-doc-1'/1]).
-export(['Constr-cont-attr-1'/1]).
-export(['Constr-cont-attr-2'/1]).
-export(['Constr-cont-attr-3'/1]).
-export(['Constr-cont-attr-4'/1]).
-export(['Constr-cont-baseuri-1'/1]).
-export(['Constr-cont-baseuri-2'/1]).
-export(['Constr-cont-baseuri-3'/1]).
-export(['Constr-cont-parent-1'/1]).
-export(['Constr-cont-attr-5'/1]).
-export(['Constr-cont-attr-6'/1]).
-export(['Constr-cont-attr-7'/1]).
-export(['Constr-cont-attr-8'/1]).
-export(['Constr-cont-attr-9'/1]).
-export(['Constr-cont-string-1'/1]).
-export(['Constr-cont-data-1'/1]).
-export(['Constr-cont-document-1'/1]).
-export(['Constr-cont-document-2'/1]).
-export(['Constr-cont-document-3'/1]).
-export(['Constr-cont-document-4'/1]).
-export(['Constr-cont-document-5'/1]).
-export(['K2-DirectConElemContent-1'/1]).
-export(['K2-DirectConElemContent-2'/1]).
-export(['K2-DirectConElemContent-3'/1]).
-export(['K2-DirectConElemContent-4'/1]).
-export(['K2-DirectConElemContent-5'/1]).
-export(['K2-DirectConElemContent-6'/1]).
-export(['K2-DirectConElemContent-7'/1]).
-export(['K2-DirectConElemContent-8'/1]).
-export(['K2-DirectConElemContent-9'/1]).
-export(['K2-DirectConElemContent-10'/1]).
-export(['K2-DirectConElemContent-11'/1]).
-export(['K2-DirectConElemContent-12'/1]).
-export(['K2-DirectConElemContent-13'/1]).
-export(['K2-DirectConElemContent-14'/1]).
-export(['K2-DirectConElemContent-15'/1]).
-export(['K2-DirectConElemContent-16'/1]).
-export(['K2-DirectConElemContent-17'/1]).
-export(['K2-DirectConElemContent-18'/1]).
-export(['K2-DirectConElemContent-19'/1]).
-export(['K2-DirectConElemContent-20'/1]).
-export(['K2-DirectConElemContent-21'/1]).
-export(['K2-DirectConElemContent-22'/1]).
-export(['K2-DirectConElemContent-23'/1]).
-export(['K2-DirectConElemContent-24'/1]).
-export(['K2-DirectConElemContent-25'/1]).
-export(['K2-DirectConElemContent-26'/1]).
-export(['K2-DirectConElemContent-27'/1]).
-export(['K2-DirectConElemContent-28'/1]).
-export(['K2-DirectConElemContent-29'/1]).
-export(['K2-DirectConElemContent-30'/1]).
-export(['K2-DirectConElemContent-31'/1]).
-export(['K2-DirectConElemContent-32'/1]).
-export(['K2-DirectConElemContent-33'/1]).
-export(['K2-DirectConElemContent-34'/1]).
-export(['K2-DirectConElemContent-35'/1]).
-export(['K2-DirectConElemContent-36'/1]).
-export(['K2-DirectConElemContent-37'/1]).
-export(['K2-DirectConElemContent-38'/1]).
-export(['K2-DirectConElemContent-39'/1]).
-export(['K2-DirectConElemContent-40'/1]).
-export(['K2-DirectConElemContent-41'/1]).
-export(['K2-DirectConElemContent-42'/1]).
-export(['K2-DirectConElemContent-43'/1]).
-export(['K2-DirectConElemContent-44'/1]).
-export(['K2-DirectConElemContent-45'/1]).
-export(['K2-DirectConElemContent-46'/1]).
-export(['K2-DirectConElemContent-47'/1]).
-export(['K2-DirectConElemContent-48'/1]).
-export(['cbcl-ns-fixup-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-cont-invalid-1',
   'Constr-cont-invalid-2',
   'Constr-cont-invalid-3',
   'Constr-cont-invalid-4',
   'Constr-cont-eol-1',
   'Constr-cont-eol-2',
   'Constr-cont-eol-3',
   'Constr-cont-eol-4',
   'Constr-cont-entref-1',
   'Constr-cont-entref-2',
   'Constr-cont-entref-3',
   'Constr-cont-entref-4',
   'Constr-cont-entref-5',
   'Constr-cont-charref-1',
   'Constr-cont-charref-2',
   'Constr-cont-cdata-1',
   'Constr-cont-text-1',
   'Constr-cont-text-2',
   'Constr-cont-nested-1',
   'Constr-cont-nested-2',
   'Constr-cont-nested-3',
   'Constr-cont-nested-4',
   'Constr-cont-enclexpr-1',
   'Constr-cont-enclexpr-2',
   'Constr-cont-enclexpr-3',
   'Constr-cont-enclexpr-4',
   'Constr-cont-enclexpr-5',
   'Constr-cont-nested-5',
   'Constr-cont-nodeid-1',
   'Constr-cont-nodeid-2',
   'Constr-cont-nodeid-3',
   'Constr-cont-nodeid-4',
   'Constr-cont-nodeid-5',
   'Constr-cont-constrmod-1',
   'Constr-cont-constrmod-2',
   'Constr-cont-constrmod-3',
   'Constr-cont-constrmod-4',
   'Constr-cont-constrmod-5',
   'Constr-cont-constrmod-6',
   'Constr-cont-constrmod-7',
   'Constr-cont-constrmod-8',
   'Constr-cont-nsmode-1',
   'Constr-cont-nsmode-2',
   'Constr-cont-nsmode-3',
   'Constr-cont-nsmode-4',
   'Constr-cont-nsmode-5',
   'Constr-cont-nsmode-6',
   'Constr-cont-nsmode-7',
   'Constr-cont-nsmode-8',
   'Constr-cont-nsmode-9',
   'Constr-cont-nsmode-10',
   'Constr-cont-nsmode-11',
   'Constr-cont-uripres-1',
   'Constr-cont-adjtext-1',
   'Constr-cont-adjtext-2',
   'Constr-cont-adjtext-3',
   'Constr-cont-adjtext-4',
   'Constr-cont-doc-1',
   'Constr-cont-attr-1',
   'Constr-cont-attr-2',
   'Constr-cont-attr-3',
   'Constr-cont-attr-4',
   'Constr-cont-baseuri-1',
   'Constr-cont-baseuri-2',
   'Constr-cont-baseuri-3',
   'Constr-cont-parent-1',
   'Constr-cont-attr-5',
   'Constr-cont-attr-6',
   'Constr-cont-attr-7',
   'Constr-cont-attr-8',
   'Constr-cont-attr-9',
   'Constr-cont-string-1',
   'Constr-cont-data-1',
   'Constr-cont-document-1',
   'Constr-cont-document-2',
   'Constr-cont-document-3',
   'Constr-cont-document-4',
   'Constr-cont-document-5',
   'K2-DirectConElemContent-1',
   'K2-DirectConElemContent-2',
   'K2-DirectConElemContent-3',
   'K2-DirectConElemContent-4',
   'K2-DirectConElemContent-5',
   'K2-DirectConElemContent-6',
   'K2-DirectConElemContent-7',
   'K2-DirectConElemContent-8',
   'K2-DirectConElemContent-9',
   'K2-DirectConElemContent-10',
   'K2-DirectConElemContent-11',
   'K2-DirectConElemContent-12',
   'K2-DirectConElemContent-13',
   'K2-DirectConElemContent-14',
   'K2-DirectConElemContent-15',
   'K2-DirectConElemContent-16',
   'K2-DirectConElemContent-17',
   'K2-DirectConElemContent-18',
   'K2-DirectConElemContent-19',
   'K2-DirectConElemContent-20',
   'K2-DirectConElemContent-21',
   'K2-DirectConElemContent-22',
   'K2-DirectConElemContent-23',
   'K2-DirectConElemContent-24',
   'K2-DirectConElemContent-25',
   'K2-DirectConElemContent-26',
   'K2-DirectConElemContent-27',
   'K2-DirectConElemContent-28',
   'K2-DirectConElemContent-29',
   'K2-DirectConElemContent-30',
   'K2-DirectConElemContent-31',
   'K2-DirectConElemContent-32',
   'K2-DirectConElemContent-33',
   'K2-DirectConElemContent-34',
   'K2-DirectConElemContent-35',
   'K2-DirectConElemContent-36',
   'K2-DirectConElemContent-37',
   'K2-DirectConElemContent-38',
   'K2-DirectConElemContent-39',
   'K2-DirectConElemContent-40',
   'K2-DirectConElemContent-41',
   'K2-DirectConElemContent-42',
   'K2-DirectConElemContent-43',
   'K2-DirectConElemContent-44',
   'K2-DirectConElemContent-45',
   'K2-DirectConElemContent-46',
   'K2-DirectConElemContent-47',
   'K2-DirectConElemContent-48',
   'cbcl-ns-fixup-1'].
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
environment('nsmode') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/DirElemContent/nsmode.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('namespace-sensitive') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/DirElemContent/namespace-sensitive.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/DirElemContent/namespace-sensitive.xsd","http://www.example.com/test/namespace-sensitive"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-cont-invalid-1'(_Config) ->
   Qry = "<elem>{</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-cont-invalid-2'(_Config) ->
   Qry = "<elem>}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-cont-invalid-3'(_Config) ->
   Qry = "<elem><</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-cont-invalid-4'(_Config) ->
   Qry = "<elem>&</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-cont-eol-1'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>1
2</elem>)}</codepoints>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <codepoints>49 10 50</codepoints>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<codepoints>49 10 50</codepoints>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<codepoints>49 10 50</codepoints>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-eol-2'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>1&#xa;2</elem>) }</codepoints>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <codepoints>49 10 50</codepoints>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<codepoints>49 10 50</codepoints>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<codepoints>49 10 50</codepoints>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-eol-3'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>&#xD;&#xA;</elem>)}</codepoints>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <codepoints>13 10</codepoints>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<codepoints>13 10</codepoints>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<codepoints>13 10</codepoints>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-eol-4'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>&#xD;</elem>)}</codepoints>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <codepoints>13</codepoints>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<codepoints>13</codepoints>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<codepoints>13</codepoints>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-entref-1'(_Config) ->
   Qry = "string-to-codepoints(<elem>&lt;</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         60
      ",
 Tst = xqerl:run("60"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-entref-2'(_Config) ->
   Qry = "string-to-codepoints(<elem>&gt;</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         62
      ",
 Tst = xqerl:run("62"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-entref-3'(_Config) ->
   Qry = "string-to-codepoints(<elem>&amp;</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         38
      ",
 Tst = xqerl:run("38"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-entref-4'(_Config) ->
   Qry = "string-to-codepoints(<elem>&quot;</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         34
      ",
 Tst = xqerl:run("34"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-entref-5'(_Config) ->
   Qry = "string-to-codepoints(<elem>&apos;</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         39
      ",
 Tst = xqerl:run("39"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-charref-1'(_Config) ->
   Qry = "<elem>&#x30;</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>0</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>0</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>0</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-charref-2'(_Config) ->
   Qry = "<elem>&#x0;</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0090" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0090'}) end.
'Constr-cont-cdata-1'(_Config) ->
   Qry = "<elem><![CDATA[cdata&<>'\"&lt;&#x20;]]></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>cdata&amp;&lt;&gt;'\"&amp;lt;&amp;#x20;</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>cdata&amp;&lt;&gt;'\"&amp;lt;&amp;#x20;</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>cdata&amp;&lt;&gt;'\"&amp;lt;&amp;#x20;</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-text-1'(_Config) ->
   Qry = "count((<elem>text</elem>)/text())",
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
'Constr-cont-text-2'(_Config) ->
   Qry = "count((<elem>text<![CDATA[cdata]]></elem>)/text())",
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
'Constr-cont-nested-1'(_Config) ->
   Qry = "<elem><a><b/></a><a/><c/></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><a><b/></a><a/><c/></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><a><b/></a><a/><c/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><a><b/></a><a/><c/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nested-2'(_Config) ->
   Qry = "<elem><?pi?><?pi content?></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><?pi ?><?pi content?></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><?pi ?><?pi content?></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><?pi ?><?pi content?></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nested-3'(_Config) ->
   Qry = "<elem><!----><!--content--></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><!----><!--content--></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><!----><!--content--></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><!----><!--content--></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nested-4'(_Config) ->
   Qry = "<elem>A<a>B<?pi?>C<b/>D<!---->E</a>F<!--content-->G<a/>H<?pi content?>I<c/>J</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>A<a>B<?pi ?>C<b/>D<!---->E</a>F<!--content-->G<a/>H<?pi content?>I<c/>J</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>A<a>B<?pi ?>C<b/>D<!---->E</a>F<!--content-->G<a/>H<?pi content?>I<c/>J</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>A<a>B<?pi ?>C<b/>D<!---->E</a>F<!--content-->G<a/>H<?pi content?>I<c/>J</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-enclexpr-1'(_Config) ->
   Qry = "count((<elem>{1,'a',3.5,4e2}</elem>)/text())",
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
'Constr-cont-enclexpr-2'(_Config) ->
   Qry = "count((<elem>{1,'a',<a/>,3.5,4e2}</elem>)/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-enclexpr-3'(_Config) ->
   Qry = "<elem>{1,'a',3.5,4e2}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1 a 3.5 400</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1 a 3.5 400</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1 a 3.5 400</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-enclexpr-4'(_Config) ->
   Qry = "<elem>{1,//a,2,3,//comment(),4,5,//processing-instruction(),6,7,//text(),8}</elem>",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-enclexpr-5'(_Config) ->
   Qry = "<elem>{1, '', 2}</elem>",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1  2</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1  2</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1  2</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nested-5'(_Config) ->
   Qry = "<elem>{/root}</elem>",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nodeid-1'(_Config) ->
   Qry = "for $x in <a/>, $y in <elem>{$x}</elem> return exactly-one($y/a) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-cont-nodeid-2'(_Config) ->
   Qry = "for $x in <a b=\"b\"/>, $y in <elem>{$x/@b}</elem> return $y/@b is $x/@b",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-cont-nodeid-3'(_Config) ->
   Qry = "for $x in <!--comment-->, $y in <elem>{$x}</elem> return exactly-one($y/comment()) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-cont-nodeid-4'(_Config) ->
   Qry = "for $x in <?pi content?>, $y in <elem>{$x}</elem> return exactly-one($y/processing-instruction()) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-cont-nodeid-5'(_Config) ->
   Qry = "for $x in <a>text</a>, $y in <elem>{$x/text()}</elem> return exactly-one($y/text()) is exactly-one($x/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-cont-constrmod-1'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-2'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-3'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-4'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-5'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-6'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-7'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-1'(_Config) ->
   Qry = "declare copy-namespaces preserve, inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   Env = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <z xmlns:preserve=\"http://www.example.com/preserve\" xmlns:inherit=\"http://www.example.com/inherit\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z xmlns:preserve=\"http://www.example.com/preserve\" xmlns:inherit=\"http://www.example.com/inherit\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z xmlns:preserve=\"http://www.example.com/preserve\" xmlns:inherit=\"http://www.example.com/inherit\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nsmode-2'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   Env = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <z xmlns:inherit=\"http://www.example.com/inherit\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z xmlns:inherit=\"http://www.example.com/inherit\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z xmlns:inherit=\"http://www.example.com/inherit\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nsmode-3'(_Config) ->
   Qry = "declare copy-namespaces preserve, no-inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   Env = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <z xmlns:preserve=\"http://www.example.com/preserve\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z xmlns:preserve=\"http://www.example.com/preserve\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z xmlns:preserve=\"http://www.example.com/preserve\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nsmode-4'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, no-inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   Env = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <z/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-nsmode-5'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-6'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-7'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-9'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-10'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-11'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-uripres-1'(_Config) ->
   Qry = "
        for $x in <a xml:base=\"http://www.example.com/base1\"><b/></a>, 
            $y in <a xml:base=\"http://www.example.com/base2\">{$x/b}</a> 
        return fn:base-uri(exactly-one($y/b))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com/base2
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/base2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-cont-adjtext-1'(_Config) ->
   Qry = "count((<elem>a{1,2,3}b</elem>)/text())",
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
'Constr-cont-adjtext-2'(_Config) ->
   Qry = "count((<elem>a{1,<a/>,3}b</elem>)/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-cont-adjtext-3'(_Config) ->
   Qry = "count((<elem>{''}</elem>)/text())",
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
'Constr-cont-adjtext-4'(_Config) ->
   Qry = "count((<elem>{()}</elem>)/text())",
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
'Constr-cont-doc-1'(_Config) ->
   Qry = "<elem>{(/), (/)}</elem>",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-attr-1'(_Config) ->
   Qry = "<elem>{1, //west/@mark}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'Constr-cont-attr-2'(_Config) ->
   Qry = "<elem><a/>{//west/@mark}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'Constr-cont-attr-3'(_Config) ->
   Qry = "<elem>{()}{//west/@mark}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem mark=\"w0\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem mark=\"w0\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem mark=\"w0\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-attr-4'(_Config) ->
   Qry = "<elem>{//west/@mark}x{//west/@west-attr-1}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'Constr-cont-baseuri-1'(_Config) ->
   Qry = "fn:base-uri(<elem xml:base=\"http://www.example.com\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-cont-baseuri-2'(_Config) ->
   Qry = "fn:base-uri(exactly-one((<elem xml:base=\"http://www.example.com\"><a/></elem>)/a))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-cont-baseuri-3'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:base-uri(<elem/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-cont-parent-1'(_Config) ->
   Qry = "count((<elem/>)/..)",
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
'Constr-cont-attr-5'(_Config) ->
   Qry = "<elem>{//west/@mark, //west/@west-attr-1}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem mark=\"w0\" west-attr-1=\"w1\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem mark=\"w0\" west-attr-1=\"w1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem mark=\"w0\" west-attr-1=\"w1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-attr-6'(_Config) ->
   Qry = "<elem mark=\"w0\">{//west/@west-attr-1, //west/@west-attr-2}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem mark=\"w0\" west-attr-1=\"w1\" west-attr-2=\"w2\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem mark=\"w0\" west-attr-1=\"w1\" west-attr-2=\"w2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem mark=\"w0\" west-attr-1=\"w1\" west-attr-2=\"w2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-attr-7'(_Config) ->
   Qry = "<elem>{//west/@mark, //center/@mark}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'Constr-cont-attr-8'(_Config) ->
   Qry = "<elem mark=\"w0\">{//west/@west-attr-1, //west/@mark}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'Constr-cont-attr-9'(_Config) ->
   Qry = "<elem>{//west/@west-attr-1}{//west/@west-attr-2}</elem>",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem west-attr-1=\"w1\" west-attr-2=\"w2\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem west-attr-1=\"w1\" west-attr-2=\"w2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem west-attr-1=\"w1\" west-attr-2=\"w2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-cont-string-1'(_Config) ->
   Qry = "fn:string(<elem>a<a/>b</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_test:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-cont-data-1'(_Config) ->
   Qry = "fn:data(<elem>a<a/>b</elem>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_test:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-cont-document-1'(_Config) ->
   Qry = "count(<wrapper> {'abc', document {'def', <anode/>, 'ghi'}, 'jkl'} </wrapper>/node())",
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
'Constr-cont-document-2'(_Config) ->
   Qry = "count(<wrapper> abc {document {'def', <anode/>, 'ghi'}} jkl </wrapper>/node())",
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
'Constr-cont-document-3'(_Config) ->
   Qry = "
        declare variable $codepoints as xs:integer+ := (9, 10, 13, 32 to 55295, 57344 to 65532, 65536 to 1114111 ); 
        declare variable $count as xs:integer := count($codepoints); 
        declare variable $lineWidth as xs:integer := 70;
        <allCodepoints><r>{codepoints-to-string($codepoints)}</r></allCodepoints> 
        (:<allCodepoints>{ 
            for $i in (1 to $count idiv $lineWidth) 
            let $startOffset := (($i - 1) * $lineWidth) + 1 
            return (<r s=\"{$codepoints[$startOffset]}\" e=\"{$codepoints[$startOffset] + $lineWidth}\"> { 
                codepoints-to-string(subsequence($codepoints, $startOffset, $lineWidth)) } </r>, \"&#xA;\") 
                } </allCodepoints>:)
        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,10,32,32,32,32,32,32,32,32,32,32,32,32,115,117,109,40,36,114,101,115,117,108,116,47,47,114,47,116,101,120,116,40,41,47,115,116,114,105,110,103,45,108,101,110,103,116,104,40,41,41,32,61,32,99,111,117,110,116,40,40,57,44,32,49,48,44,32,49,51,44,32,51,50,32,116,111,32,53,53,50,57,53,44,32,53,55,51,52,52,32,116,111,32,54,53,53,51,50,44,32,54,53,53,51,54,32,116,111,32,49,49,49,52,49,49,49,32,41,41,10,32,32,32,32,32,32,32,32,32,32,32,32,115,116,97,114,116,115,45,119,105,116,104,40,40,36,114,101,115,117,108,116,47,47,114,47,116,101,120,116,40,41,41,91,49,93,44,32,39,9,39,41,10,32,32,32,32,32,32,32,32,32,32,32,32,101,110,100,115,45,119,105,116,104,40,40,36,114,101,115,117,108,116,47,47,114,47,116,101,120,116,40,41,41,91,108,97,115,116,40,41,93,44,32,39,1114111,39,41,10,32,32,32,32,32,32,32,32,10,32,32,32,32,32,32],
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"sum($result//r/text()/string-length()) = count((9, 10, 13, 32 to 55295, 57344 to 65532, 65536 to 1114111 ))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"starts-with(($result//r/text())[1], '	')",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++[101,110,100,115,45,119,105,116,104,40,40,36,114,101,115,117,108,116,47,47,114,47,116,101,120,116,40,41,41,91,108,97,115,116,40,41,93,44,32,39,1114111,39,41],Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'Constr-cont-document-4'(_Config) ->
   Qry = "count( document {'abc', 'def', document {'ghi', <anode/>, 'jkl'}, 'mno' } /node() )",
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
'Constr-cont-document-5'(_Config) ->
   Qry = "count( document {'abc', 'def', document {'ghi', 'jkl'}, 'mno' } /node() )",
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
'K2-DirectConElemContent-1'(_Config) ->
   Qry = "3}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-2'(_Config) ->
   Qry = "\"a string\" }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-3'(_Config) ->
   Qry = "}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-4'(_Config) ->
   Qry = "}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-5'(_Config) ->
   Qry = "data(<name>some text</name>) instance of xs:untypedAtomic",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-6'(_Config) ->
   Qry = "not(data(<name>some text</name>) instance of xs:string)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-7'(_Config) ->
   Qry = "<name>some, if(1) then else</name> instance of element()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-8'(_Config) ->
   Qry = "not(<name>some text</name> instance of xs:untypedAtomic)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-9'(_Config) ->
   Qry = "data(<!-- a comment -->) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-10'(_Config) ->
   Qry = "not(data(<!-- a comment -->) instance of xs:untypedAtomic)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-11'(_Config) ->
   Qry = "<!-- a comment --> instance of comment()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-12'(_Config) ->
   Qry = "not(<!-- a comment --> instance of xs:untypedAtomic)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-13'(_Config) ->
   Qry = "not(<!-- a comment --> instance of xs:string)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-14'(_Config) ->
   Qry = "data(<?target content?>) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-15'(_Config) ->
   Qry = "not(data(<?target content?>) instance of xs:untypedAtomic)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-16'(_Config) ->
   Qry = "<?target content?> instance of processing-instruction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-17'(_Config) ->
   Qry = "not(<?target content?> instance of xs:untypedAtomic)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-18'(_Config) ->
   Qry = "<![CDATA[content]]>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-19'(_Config) ->
   Qry = "<elem><![THISISWRONG[content]]></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-20'(_Config) ->
   Qry = "<elem><![CDA",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-21'(_Config) ->
   Qry = "<elem><![CDATA[CONTENT]]>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-22'(_Config) ->
   Qry = "<elem><![CDATA[CONTENT]]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-23'(_Config) ->
   Qry = "<elem><![CDATA[CONTENT]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-24'(_Config) ->
   Qry = "<elem><![cdata[CONTENT]]></elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-25'(_Config) ->
   Qry = "string(<eg> (: an (:example:) </eg>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          (: an (:example:) 
      ",
   case xqerl_test:string_value(Res) of
             " (: an (:example:) " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConElemContent-26'(_Config) ->
   Qry = "<elem>content{}content</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-27'(_Config) ->
   Qry = "string(<elem><![CDATA[str]]>str<![CDATA[str]]><![CDATA[str]]><![CDATA[str]]>strstr{ \"str\", \"str\", \"strstr\", \"str\"}strstr<![CDATA[str]]>s<?target str?>tr</elem>) eq \"strstrstrstrstrstrstrstr str strstr strstrstrstrstr\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-28'(_Config) ->
   Qry = "string(<elem><![CDATA[con<<< ]] >\"\"'*\"*\">>tent]]&#00;&#x12;&amp;&quot;&notrecognized;&apos]]></elem>) eq \"con&lt;&lt;&lt; ]] &gt;\"\"\"\"'*\"\"*\"\"&gt;&gt;tent]]&amp;#00;&amp;#x12;&amp;amp;&amp;quot;&amp;notrecognized;&amp;apos\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-29'(_Config) ->
   Qry = "data(text{\"content\"}) instance of xs:untypedAtomic",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-30'(_Config) ->
   Qry = "<e>{1}A{1}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e>1A1</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>1A1</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e>1A1</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-31'(_Config) ->
   Qry = "string(<e>{1}A{1}</e>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1A1
      ",
   case xqerl_test:string_value(Res) of
             "1A1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConElemContent-32'(_Config) ->
   Qry = "data(<e>dsa</e>) instance of xs:untypedAtomic",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-33'(_Config) ->
   Qry = "data(<e>dsa</e>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         dsa
      ",
   case xqerl_test:string_value(Res) of
             "dsa" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConElemContent-34'(_Config) ->
   Qry = "<e/> instance of element(*, xs:anyType)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-35'(_Config) ->
   Qry = "<e/> instance of element(*, xs:untyped)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-36'(_Config) ->
   Qry = "declare construction strip; <e/> instance of element(*, xs:untyped)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-37'(_Config) ->
   Qry = "<e/> instance of element(a, xs:anyType)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-38'(_Config) ->
   Qry = "declare construction strip; <e/> instance of element(b, xs:untyped)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConElemContent-39'(_Config) ->
   Qry = "<elem>{1}{2}{3}{4}{5}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>12345</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>12345</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>12345</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-40'(_Config) ->
   Qry = "<elem>{1}{2}{3}{4}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>1234</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>1234</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>1234</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-41'(_Config) ->
   Qry = "<elem>{1}{2}{3}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>123</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>123</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>123</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-42'(_Config) ->
   Qry = "<elem>{1}{2}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem>12</elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem>12</elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem>12</elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-43'(_Config) ->
   Qry = "<a> <![CDATA[ ]]> {\"abc\"}</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>   abc</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>   abc</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>   abc</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-44'(_Config) ->
   Qry = "<e attr='content\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-45'(_Config) ->
   Qry = "<e attr=\"content'/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConElemContent-46'(_Config) ->
   Qry = "<e>{1}{text{()}}{2}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e>12</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>12</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e>12</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-47'(_Config) ->
   Qry = "<e>{1}{text{\"\"}}{2}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e>12</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>12</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e>12</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConElemContent-48'(_Config) ->
   Qry = "
      	<e xmlns=\"http://www.example.com/\"> <a xmlns=\"\"/> </e>, 
      	<e xmlns=\"http://www.example.com/\"> <a xmlns=\"\"/> </e>/count(in-scope-prefixes(a)), 
      	<e xmlns=\"http://www.example.com/\"> <a xmlns=\"\"> <b xmlns=\"\"/> </a> </e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/></e>1<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"><b/></a></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/></e>1<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"><b/></a></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/></e>1<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"><b/></a></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-ns-fixup-1'(_Config) ->
   Qry = " 
      	let $x := <ns:foo xmlns:ns=\"http://www.w3.org/foo\" ns:attr=\"foo\" /> 
      	return let $y := <ns:foo xmlns:ns=\"http://www.w3.org/bar\" ns:attr=\"bar\" /> 
      	return let $z := <root> { $x/@*, $y/@* } </root> 
      	return count(distinct-values(in-scope-prefixes($z)))
      ",
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
