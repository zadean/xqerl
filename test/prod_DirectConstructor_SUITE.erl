-module('prod_DirectConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-pi-content-1'/1]).
-export(['Constr-pi-content-2'/1]).
-export(['Constr-pi-content-3'/1]).
-export(['Constr-pi-content-4'/1]).
-export(['Constr-pi-content-5'/1]).
-export(['Constr-pi-content-6'/1]).
-export(['Constr-pi-content-7'/1]).
-export(['Constr-pi-content-8'/1]).
-export(['Constr-pi-target-1'/1]).
-export(['Constr-pi-target-2'/1]).
-export(['Constr-pi-target-3'/1]).
-export(['Constr-pi-target-4'/1]).
-export(['Constr-comment-1'/1]).
-export(['Constr-comment-2'/1]).
-export(['Constr-comment-3'/1]).
-export(['Constr-comment-4'/1]).
-export(['Constr-comment-5'/1]).
-export(['Constr-comment-6'/1]).
-export(['Constr-comment-7'/1]).
-export(['Constr-comment-8'/1]).
-export(['K2-DirectConOther-1'/1]).
-export(['K2-DirectConOther-2'/1]).
-export(['K2-DirectConOther-3'/1]).
-export(['K2-DirectConOther-4'/1]).
-export(['K2-DirectConOther-5'/1]).
-export(['K2-DirectConOther-6'/1]).
-export(['K2-DirectConOther-7'/1]).
-export(['K2-DirectConOther-8'/1]).
-export(['K2-DirectConOther-9'/1]).
-export(['K2-DirectConOther-10'/1]).
-export(['K2-DirectConOther-11'/1]).
-export(['K2-DirectConOther-12'/1]).
-export(['K2-DirectConOther-13'/1]).
-export(['K2-DirectConOther-14'/1]).
-export(['K2-DirectConOther-15'/1]).
-export(['K2-DirectConOther-16'/1]).
-export(['K2-DirectConOther-17'/1]).
-export(['K2-DirectConOther-18'/1]).
-export(['K2-DirectConOther-19'/1]).
-export(['K2-DirectConOther-20'/1]).
-export(['K2-DirectConOther-21'/1]).
-export(['K2-DirectConOther-22'/1]).
-export(['K2-DirectConOther-23'/1]).
-export(['K2-DirectConOther-24'/1]).
-export(['K2-DirectConOther-25'/1]).
-export(['K2-DirectConOther-26'/1]).
-export(['K2-DirectConOther-27'/1]).
-export(['K2-DirectConOther-28'/1]).
-export(['K2-DirectConOther-29'/1]).
-export(['K2-DirectConOther-30'/1]).
-export(['K2-DirectConOther-31'/1]).
-export(['K2-DirectConOther-32'/1]).
-export(['K2-DirectConOther-33'/1]).
-export(['K2-DirectConOther-34'/1]).
-export(['K2-DirectConOther-35'/1]).
-export(['K2-DirectConOther-36'/1]).
-export(['K2-DirectConOther-37'/1]).
-export(['K2-DirectConOther-38'/1]).
-export(['K2-DirectConOther-39'/1]).
-export(['K2-DirectConOther-40'/1]).
-export(['K2-DirectConOther-41'/1]).
-export(['K2-DirectConOther-42'/1]).
-export(['K2-DirectConOther-43'/1]).
-export(['K2-DirectConOther-44'/1]).
-export(['K2-DirectConOther-45'/1]).
-export(['K2-DirectConOther-46'/1]).
-export(['K2-DirectConOther-47'/1]).
-export(['K2-DirectConOther-48'/1]).
-export(['K2-DirectConOther-49'/1]).
-export(['K2-DirectConOther-50'/1]).
-export(['K2-DirectConOther-51'/1]).
-export(['K2-DirectConOther-52'/1]).
-export(['K2-DirectConOther-53'/1]).
-export(['K2-DirectConOther-54'/1]).
-export(['K2-DirectConOther-55'/1]).
-export(['K2-DirectConOther-56'/1]).
-export(['K2-DirectConOther-57'/1]).
-export(['K2-DirectConOther-58'/1]).
-export(['K2-DirectConOther-59'/1]).
-export(['K2-DirectConOther-60'/1]).
-export(['K2-DirectConOther-61'/1]).
-export(['K2-DirectConOther-62'/1]).
-export(['K2-DirectConOther-63'/1]).
-export(['K2-DirectConOther-64'/1]).
-export(['K2-DirectConOther-65'/1]).
-export(['K2-DirectConOther-66'/1]).
-export(['K2-DirectConOther-67'/1]).
-export(['K2-DirectConOther-68'/1]).
-export(['K2-DirectConOther-69'/1]).
-export(['K2-DirectConOther-70'/1]).
-export(['K2-DirectConOther-71'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-pi-content-1',
   'Constr-pi-content-2',
   'Constr-pi-content-3',
   'Constr-pi-content-4',
   'Constr-pi-content-5',
   'Constr-pi-content-6',
   'Constr-pi-content-7',
   'Constr-pi-content-8',
   'Constr-pi-target-1',
   'Constr-pi-target-2',
   'Constr-pi-target-3',
   'Constr-pi-target-4',
   'Constr-comment-1',
   'Constr-comment-2',
   'Constr-comment-3',
   'Constr-comment-4',
   'Constr-comment-5',
   'Constr-comment-6',
   'Constr-comment-7',
   'Constr-comment-8',
   'K2-DirectConOther-1',
   'K2-DirectConOther-2',
   'K2-DirectConOther-3',
   'K2-DirectConOther-4',
   'K2-DirectConOther-5',
   'K2-DirectConOther-6',
   'K2-DirectConOther-7',
   'K2-DirectConOther-8',
   'K2-DirectConOther-9',
   'K2-DirectConOther-10',
   'K2-DirectConOther-11',
   'K2-DirectConOther-12',
   'K2-DirectConOther-13',
   'K2-DirectConOther-14',
   'K2-DirectConOther-15',
   'K2-DirectConOther-16',
   'K2-DirectConOther-17',
   'K2-DirectConOther-18',
   'K2-DirectConOther-19',
   'K2-DirectConOther-20',
   'K2-DirectConOther-21',
   'K2-DirectConOther-22',
   'K2-DirectConOther-23',
   'K2-DirectConOther-24',
   'K2-DirectConOther-25',
   'K2-DirectConOther-26',
   'K2-DirectConOther-27',
   'K2-DirectConOther-28',
   'K2-DirectConOther-29',
   'K2-DirectConOther-30',
   'K2-DirectConOther-31',
   'K2-DirectConOther-32',
   'K2-DirectConOther-33',
   'K2-DirectConOther-34',
   'K2-DirectConOther-35',
   'K2-DirectConOther-36',
   'K2-DirectConOther-37',
   'K2-DirectConOther-38',
   'K2-DirectConOther-39',
   'K2-DirectConOther-40',
   'K2-DirectConOther-41',
   'K2-DirectConOther-42',
   'K2-DirectConOther-43',
   'K2-DirectConOther-44',
   'K2-DirectConOther-45',
   'K2-DirectConOther-46',
   'K2-DirectConOther-47',
   'K2-DirectConOther-48',
   'K2-DirectConOther-49',
   'K2-DirectConOther-50',
   'K2-DirectConOther-51',
   'K2-DirectConOther-52',
   'K2-DirectConOther-53',
   'K2-DirectConOther-54',
   'K2-DirectConOther-55',
   'K2-DirectConOther-56',
   'K2-DirectConOther-57',
   'K2-DirectConOther-58',
   'K2-DirectConOther-59',
   'K2-DirectConOther-60',
   'K2-DirectConOther-61',
   'K2-DirectConOther-62',
   'K2-DirectConOther-63',
   'K2-DirectConOther-64',
   'K2-DirectConOther-65',
   'K2-DirectConOther-66',
   'K2-DirectConOther-67',
   'K2-DirectConOther-68',
   'K2-DirectConOther-69',
   'K2-DirectConOther-70',
   'K2-DirectConOther-71'].
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
].
'Constr-pi-content-1'(_Config) ->
   Qry = "<?pi content?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi content?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi content?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi content?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-pi-content-2'(_Config) ->
   Qry = "fn:data(<?pi content?>) = \"content\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-pi-content-3'(_Config) ->
   Qry = "<?pi ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi ?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi ?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi ?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-pi-content-4'(_Config) ->
   Qry = "fn:data(<?pi ?>) = \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-pi-content-5'(_Config) ->
   Qry = "<?pi <?&--&lt;&#x20;><![CDATA[x]]> ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi <?&--&lt;&#x20;><![CDATA[x]]> ?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi <?&--&lt;&#x20;><![CDATA[x]]> ?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi <?&--&lt;&#x20;><![CDATA[x]]> ?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-pi-content-6'(_Config) ->
   Qry = "<pi>{string-to-codepoints(<?pi x?>)}</pi>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <pi>120</pi>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<pi>120</pi>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<pi>120</pi>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-pi-content-7'(_Config) ->
   Qry = "<pi>{string-to-codepoints(<?pi x ?>)}</pi>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <pi>120 32</pi>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<pi>120 32</pi>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<pi>120 32</pi>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-pi-content-8'(_Config) ->
   Qry = "<?pi ?>?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-pi-target-1'(_Config) ->
   Qry = "<?XmL?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-pi-target-2'(_Config) ->
   Qry = "<?XML?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-pi-target-3'(_Config) ->
   Qry = "<?xml?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-pi-target-4'(_Config) ->
   Qry = "<?xMl?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-comment-1'(_Config) ->
   Qry = "<!--comment-->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!--comment-->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--comment-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--comment-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comment-2'(_Config) ->
   Qry = "fn:data(<!--comment-->) = \"comment\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-comment-3'(_Config) ->
   Qry = "<!---->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!---->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!---->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!---->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comment-4'(_Config) ->
   Qry = "fn:data(<!---->) = \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-comment-5'(_Config) ->
   Qry = "<!--<?&-&lt;&#x20;><![CDATA[x]]>-->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!--<?&-&lt;&#x20;><![CDATA[x]]>-->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--<?&-&lt;&#x20;><![CDATA[x]]>-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--<?&-&lt;&#x20;><![CDATA[x]]>-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comment-6'(_Config) ->
   Qry = "<!----->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-comment-7'(_Config) ->
   Qry = "<!--comment--->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-comment-8'(_Config) ->
   Qry = "<!--com--ment-->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-1'(_Config) ->
   Qry = "string(<?target \"\"''content&amp;amp;ss&amp;#00; &amp;#x2014;?>) eq \"\"\"\"\"''content&amp;amp;amp;ss&amp;amp;#00; &amp;amp;#x2014;\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-2'(_Config) ->
   Qry = "<!- oo -->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-3'(_Config) ->
   Qry = "<! oo -->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-4'(_Config) ->
   Qry = "<!-- oo ->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-5'(_Config) ->
   Qry = "<!--- oo ->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-6'(_Config) ->
   Qry = "<!-->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-7'(_Config) ->
   Qry = "<!-- -- -->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-8'(_Config) ->
   Qry = "<!--",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-9'(_Config) ->
   Qry = "<!-",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-10'(_Config) ->
   Qry = "<!",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-11'(_Config) ->
   Qry = "<foo><!--",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-12'(_Config) ->
   Qry = "<foo><!-",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-13'(_Config) ->
   Qry = "<foo><!",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-14'(_Config) ->
   Qry = "<!--",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-15'(_Config) ->
   Qry = "<!-- content",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-16'(_Config) ->
   Qry = "<!-- content -",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-17'(_Config) ->
   Qry = "<!---",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-18'(_Config) ->
   Qry = "<!----",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-19'(_Config) ->
   Qry = "<!----",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-20'(_Config) ->
   Qry = "<? spaceIsNotAllowedBefore ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-21'(_Config) ->
   Qry = "<?invalid|char ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-22'(_Config) ->
   Qry = "<?invalid:char ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-23'(_Config) ->
   Qry = "<?xml:char ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-24'(_Config) ->
   Qry = "<?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-25'(_Config) ->
   Qry = "<?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-26'(_Config) ->
   Qry = "<?xml ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-27'(_Config) ->
   Qry = "<?XML ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-28'(_Config) ->
   Qry = "<?XmL ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-29'(_Config) ->
   Qry = "local-name(<?xmlSUFFIX content?>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xmlSUFFIX\n      ",
   case xqerl_test:string_value(Res) of
             "xmlSUFFIX" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConOther-30'(_Config) ->
   Qry = "local-name(<?PREFIXxml content?>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PREFIXxml\n      ",
   case xqerl_test:string_value(Res) of
             "PREFIXxml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConOther-31'(_Config) ->
   Qry = "local-name(<?PREFIXxmlSUFFIX content?>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PREFIXxmlSUFFIX\n      ",
   case xqerl_test:string_value(Res) of
             "PREFIXxmlSUFFIX" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConOther-32'(_Config) ->
   Qry = "<?validchar ???<<???? <? >?hm???> eq \"???<<???? <? >?hm??\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-33'(_Config) ->
   Qry = "<?validchar content ?> eq \"content \"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-34'(_Config) ->
   Qry = "<?validchar content a b c asdada dad ?> eq \"content a b c asdada dad \"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-35'(_Config) ->
   Qry = "<!-- some - - - - content - - - >>>>> << >>><>& ;& --> eq \" some - - - - content - - - >>>>> << >>><>&amp; ;&amp; \"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-36'(_Config) ->
   Qry = "<!-- - - - - - - - - - - - - - - - - --> eq \" - - - - - - - - - - - - - - - - \"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-37'(_Config) ->
   Qry = "<?target {1 + 1}?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?target {1 + 1}?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?target {1 + 1}?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?target {1 + 1}?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-38'(_Config) ->
   Qry = "string(<?target content ?>) eq \"content \"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-39'(_Config) ->
   Qry = "<e>a<!--data tar-->b</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e>a<!--data tar-->b</e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>a<!--data tar-->b</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e>a<!--data tar-->b</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-40'(_Config) ->
   Qry = "string(<e>a<!--data tar-->b</e>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ab\n      ",
   case xqerl_test:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConOther-41'(_Config) ->
   Qry = "string(<!-- content&amp;amp;ss&amp;amp;#00; &amp;#x2014;-->) eq \" content&amp;amp;amp;ss&amp;amp;amp;#00; &amp;amp;#x2014;\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-42'(_Config) ->
   Qry = "<??>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-43'(_Config) ->
   Qry = "<?a?><?b ?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-44'(_Config) ->
   Qry = "data(<?target data?>) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-45'(_Config) ->
   Qry = "data(<!-- a comment -->) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-DirectConOther-46'(_Config) ->
   Qry = "<!-- <<<>><&%(/?=(=)&entity;-]]> -->",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!-- <<<>><&%(/?=(=)&entity;-]]> -->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!-- <<<>><&%(/?=(=)&entity;-]]> -->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!-- <<<>><&%(/?=(=)&entity;-]]> -->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-47'(_Config) ->
   Qry = "<?target ]]>?>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?target ]]>?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?target ]]>?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?target ]]>?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-48'(_Config) ->
   Qry = "string(exactly-one(<e xml:id=\" ab c d \"/>/@*))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            ab c d\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "ab c d") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0091") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConOther-49'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-DirectConOther-49                            :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Check that an attribute value's value is properly read and serialized. Since the whitespace is expressed with character references they are preserved and hence aren't subject to for instance end-of-line handling. Subsequently, the serialization process must escape such characters in order to not have the parser normalize the values when being read back in. :)\n(:*******************************************************:)\n<e attr=\"&#x20;&#xD;&#xA;&#x9;&#xD;&#xD;&#xD;&#xD;      &#xD; &#xD;     &#xD;&#xA; &#xD;&#xA; &#xD;&#xA;\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e attr=\" &#xD;&#xA;&#x9;&#xD;&#xD;&#xD;&#xD;      &#xD; &#xD;     &#xD;&#xA; &#xD;&#xA; &#xD;&#xA;\"/>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-50'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-DirectConOther-50                            :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Ensure that EOL-normalization also takes place in CDATA sections. :)\n(:*******************************************************:)\nstring(<e><![CDATA[\n]]></e>) eq \"&#xA;\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"true"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-51'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-DirectConOther-51                            :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Ensure that EOL-normalization also takes place in CDATA sections(#2). :)\n(:*******************************************************:)\nstring(<e><![CDATA[]]></e>) eq \"&#xA;\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"true"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-52'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-DirectConOther-52                            :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Ensure that EOLs are normalized in text nodes. :)\n(:*******************************************************:)\n<e>a  \nstring literal </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>a \n\n\n \nstring literal \n</e>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-53'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-DirectConOther-53                            :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Ensure that EOLs are normalized in comment nodes. :)\n(:*******************************************************:)\n<e><!--a  \nstring literal --></e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><!--a \n\n\n \nstring literal \n--></e>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-54'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-DirectConOther-54                            :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Ensure that EOLs are normalized in processing instructions. :)\n(:*******************************************************:)\n<e><?target a  \nstring literal ?></e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><?target a \n\n\n \nstring literal \n?></e>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-55'(_Config) ->
   Qry = ">",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-56'(_Config) ->
   Qry = "<",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-57'(_Config) ->
   Qry = "/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-58'(_Config) ->
   Qry = "<e attr=\"   a\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e attr=\"   a\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e attr=\"   a\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e attr=\"   a\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-59'(_Config) ->
   Qry = "<elem attr='\n                            \n                    \n                    \n                    \n\n                 '/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <elem attr=\"                                                                                                               \"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"                                                                                                               \"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"                                                                                                               \"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-60'(_Config) ->
   Qry = "<e attr=\"    \"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e attr=\"    \"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e attr=\"    \"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e attr=\"    \"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-61'(_Config) ->
   Qry = "<element attributeName=\"}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-62'(_Config) ->
   Qry = "<element attributeName='}'/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DirectConOther-63'(_Config) ->
   Qry = "<a xml:id=\"1\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <a xml:id=\"1\"/>\n            \n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<a xml:id=\"1\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0091") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConOther-64'(_Config) ->
   Qry = "<a xml:space=\"PRESERVE\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <a xml:space=\"PRESERVE\"/>\n            \n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<a xml:space=\"PRESERVE\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0092") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConOther-65'(_Config) ->
   Qry = "<a xml:space=\"   preserve\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            <a xml:space=\"   preserve\"/>\n            \n         \n      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<a xml:space=\"   preserve\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0092") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DirectConOther-66'(_Config) ->
   Qry = "declare namespace a=\"http://example.com/NotThis\"; declare namespace g=\"http://example.com/NotThis2\"; <a xmlns:a=\"http://example.com/NotThis\" xmlns:b=\"http://example.com\"> <b xmlns:a=\"http://example.com/\" xmlns:c=\"http://example.com/c\"> <c xmlns:d=\"http://example.com/d\"/> { for $i in in-scope-prefixes(<e/>) order by $i return $i, \"|\", for $i in in-scope-prefixes(element e {()}) order by $i return $i } <d xmlns:e=\"http://example.com/d\"/> </b> </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xmlns:b=\"http://example.com\" xmlns:a=\"http://example.com/NotThis\"><b xmlns:c=\"http://example.com/c\" xmlns:a=\"http://example.com/\"><c xmlns:d=\"http://example.com/d\"/>a b c xml | a b c xml<d xmlns:e=\"http://example.com/d\"/></b></a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:b=\"http://example.com\" xmlns:a=\"http://example.com/NotThis\"><b xmlns:c=\"http://example.com/c\" xmlns:a=\"http://example.com/\"><c xmlns:d=\"http://example.com/d\"/>a b c xml | a b c xml<d xmlns:e=\"http://example.com/d\"/></b></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:b=\"http://example.com\" xmlns:a=\"http://example.com/NotThis\"><b xmlns:c=\"http://example.com/c\" xmlns:a=\"http://example.com/\"><c xmlns:d=\"http://example.com/d\"/>a b c xml | a b c xml<d xmlns:e=\"http://example.com/d\"/></b></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-67'(_Config) ->
   Qry = "<e xmlns=\"http://example.com/3\">{namespace-uri-from-QName(node-name(<e/>)), namespace-uri-from-QName(node-name(element e2 {()}))}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <e xmlns=\"http://example.com/3\">http://example.com/3 http://example.com/3</e>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://example.com/3\">http://example.com/3 http://example.com/3</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://example.com/3\">http://example.com/3 http://example.com/3</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-68'(_Config) ->
   Qry = "<c b=\"a \n\n\n \nstring literal \n\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <c b=\"a      string literal  \"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<c b=\"a      string literal  \"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<c b=\"a      string literal  \"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-69'(_Config) ->
   Qry = "<c b=\"a \n\n\n \nstring literal \n\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <c b=\"a      string literal  \"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<c b=\"a      string literal  \"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<c b=\"a      string literal  \"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DirectConOther-70'(_Config) ->
   Qry = "string-to-codepoints(<a>\n\n\n \n|&#xD; &#xD;&#xA;</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         10 10 10 32 10 124 13 32 13 10\n      ",
   case xqerl_test:string_value(Res) of
             "10 10 10 32 10 124 13 32 13 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DirectConOther-71'(_Config) ->
   Qry = "<a xmlns:p=\"urn:abbrev:NS\"><b p:c=\"\" p:d=\"\"/></a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a xmlns:p=\"urn:abbrev:NS\"><b p:c=\"\" p:d=\"\"/></a>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:p=\"urn:abbrev:NS\"><b p:c=\"\" p:d=\"\"/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:p=\"urn:abbrev:NS\"><b p:c=\"\" p:d=\"\"/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
