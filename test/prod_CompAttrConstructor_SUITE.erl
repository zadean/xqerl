-module('prod_CompAttrConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-compattr-name-1'/1]).
-export(['Constr-compattr-name-2'/1]).
-export(['Constr-compattr-name-3'/1]).
-export(['Constr-compattr-compname-1'/1]).
-export(['Constr-compattr-compname-2'/1]).
-export(['Constr-compattr-compname-3'/1]).
-export(['Constr-compattr-compname-4'/1]).
-export(['Constr-compattr-compname-5'/1]).
-export(['Constr-compattr-compname-6'/1]).
-export(['Constr-compattr-compname-7'/1]).
-export(['Constr-compattr-compname-8'/1]).
-export(['Constr-compattr-compname-9'/1]).
-export(['Constr-compattr-compname-10'/1]).
-export(['Constr-compattr-compname-11'/1]).
-export(['Constr-compattr-compname-12'/1]).
-export(['Constr-compattr-compname-13'/1]).
-export(['Constr-compattr-compname-14'/1]).
-export(['Constr-compattr-compname-15'/1]).
-export(['Constr-compattr-compname-16'/1]).
-export(['Constr-compattr-compname-17'/1]).
-export(['Constr-compattr-compname-18'/1]).
-export(['Constr-compattr-compname-19'/1]).
-export(['Constr-compattr-doc-1'/1]).
-export(['Constr-compattr-parent-1'/1]).
-export(['Constr-compattr-string-1'/1]).
-export(['Constr-compattr-data-1'/1]).
-export(['Constr-compattr-enclexpr-1'/1]).
-export(['Constr-compattr-enclexpr-2'/1]).
-export(['Constr-compattr-enclexpr-3'/1]).
-export(['Constr-compattr-enclexpr-4'/1]).
-export(['Constr-compattr-id-1'/1]).
-export(['Constr-compattr-id-2'/1]).
-export(['constattrerr-1'/1]).
-export(['K2-ComputeConAttr-1'/1]).
-export(['K2-ComputeConAttr-2'/1]).
-export(['K2-ComputeConAttr-3'/1]).
-export(['K2-ComputeConAttr-4'/1]).
-export(['K2-ComputeConAttr-5'/1]).
-export(['K2-ComputeConAttr-6'/1]).
-export(['K2-ComputeConAttr-7'/1]).
-export(['K2-ComputeConAttr-8'/1]).
-export(['K2-ComputeConAttr-9'/1]).
-export(['K2-ComputeConAttr-10'/1]).
-export(['K2-ComputeConAttr-11'/1]).
-export(['K2-ComputeConAttr-12'/1]).
-export(['K2-ComputeConAttr-13'/1]).
-export(['K2-ComputeConAttr-14'/1]).
-export(['K2-ComputeConAttr-15'/1]).
-export(['K2-ComputeConAttr-16'/1]).
-export(['K2-ComputeConAttr-17'/1]).
-export(['K2-ComputeConAttr-18'/1]).
-export(['K2-ComputeConAttr-19'/1]).
-export(['K2-ComputeConAttr-20'/1]).
-export(['K2-ComputeConAttr-21'/1]).
-export(['K2-ComputeConAttr-22'/1]).
-export(['K2-ComputeConAttr-23'/1]).
-export(['K2-ComputeConAttr-24'/1]).
-export(['K2-ComputeConAttr-25'/1]).
-export(['K2-ComputeConAttr-26'/1]).
-export(['K2-ComputeConAttr-27'/1]).
-export(['K2-ComputeConAttr-28'/1]).
-export(['K2-ComputeConAttr-29'/1]).
-export(['K2-ComputeConAttr-30'/1]).
-export(['K2-ComputeConAttr-31'/1]).
-export(['K2-ComputeConAttr-32'/1]).
-export(['K2-ComputeConAttr-33'/1]).
-export(['K2-ComputeConAttr-34'/1]).
-export(['K2-ComputeConAttr-35'/1]).
-export(['K2-ComputeConAttr-36'/1]).
-export(['K2-ComputeConAttr-37'/1]).
-export(['K2-ComputeConAttr-38'/1]).
-export(['K2-ComputeConAttr-39'/1]).
-export(['K2-ComputeConAttr-40'/1]).
-export(['K2-ComputeConAttr-41'/1]).
-export(['K2-ComputeConAttr-42'/1]).
-export(['K2-ComputeConAttr-43'/1]).
-export(['K2-ComputeConAttr-44'/1]).
-export(['K2-ComputeConAttr-45'/1]).
-export(['K2-ComputeConAttr-46'/1]).
-export(['K2-ComputeConAttr-47'/1]).
-export(['K2-ComputeConAttr-48'/1]).
-export(['K2-ComputeConAttr-49'/1]).
-export(['K2-ComputeConAttr-50'/1]).
-export(['K2-ComputeConAttr-51'/1]).
-export(['K2-ComputeConAttr-52'/1]).
-export(['K2-ComputeConAttr-53'/1]).
-export(['K2-ComputeConAttr-54'/1]).
-export(['K2-ComputeConAttr-55'/1]).
-export(['K2-ComputeConAttr-56'/1]).
-export(['K2-ComputeConAttr-57'/1]).
-export(['K2-ComputeConAttr-58'/1]).
-export(['K2-ComputeConAttr-59'/1]).
-export(['K2-ComputeConAttr-60'/1]).
-export(['K2-ComputeConAttr-61'/1]).
-export(['comp-attr-bad-name-1'/1]).
-export(['comp-attr-bad-name-2'/1]).
-export(['comp-attr-bad-name-3'/1]).
-export(['comp-attr-bad-name-4'/1]).
-export(['comp-attr-bad-name-5'/1]).
-export(['comp-attr-bad-name-6'/1]).
-export(['comp-attr-bad-name-7'/1]).
-export(['cbcl-constr-compattr-001'/1]).
-export(['cbcl-constr-compattr-002'/1]).
-export(['cbcl-constr-compattr-003'/1]).
-export(['cbcl-constr-compattr-005'/1]).
-export(['cbcl-constr-compattr-006'/1]).
-export(['cbcl-constr-compattr-007'/1]).
-export(['cbcl-constr-compattr-008'/1]).
-export(['cbcl-constr-compattr-009'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-compattr-name-1',
   'Constr-compattr-name-2',
   'Constr-compattr-name-3',
   'Constr-compattr-compname-1',
   'Constr-compattr-compname-2',
   'Constr-compattr-compname-3',
   'Constr-compattr-compname-4',
   'Constr-compattr-compname-5',
   'Constr-compattr-compname-6',
   'Constr-compattr-compname-7',
   'Constr-compattr-compname-8',
   'Constr-compattr-compname-9',
   'Constr-compattr-compname-10',
   'Constr-compattr-compname-11',
   'Constr-compattr-compname-12',
   'Constr-compattr-compname-13',
   'Constr-compattr-compname-14',
   'Constr-compattr-compname-15',
   'Constr-compattr-compname-16',
   'Constr-compattr-compname-17',
   'Constr-compattr-compname-18',
   'Constr-compattr-compname-19',
   'Constr-compattr-doc-1',
   'Constr-compattr-parent-1',
   'Constr-compattr-string-1',
   'Constr-compattr-data-1',
   'Constr-compattr-enclexpr-1',
   'Constr-compattr-enclexpr-2',
   'Constr-compattr-enclexpr-3',
   'Constr-compattr-enclexpr-4',
   'Constr-compattr-id-1',
   'Constr-compattr-id-2',
   'constattrerr-1',
   'K2-ComputeConAttr-1',
   'K2-ComputeConAttr-2',
   'K2-ComputeConAttr-3',
   'K2-ComputeConAttr-4',
   'K2-ComputeConAttr-5',
   'K2-ComputeConAttr-6',
   'K2-ComputeConAttr-7',
   'K2-ComputeConAttr-8',
   'K2-ComputeConAttr-9',
   'K2-ComputeConAttr-10',
   'K2-ComputeConAttr-11',
   'K2-ComputeConAttr-12',
   'K2-ComputeConAttr-13',
   'K2-ComputeConAttr-14',
   'K2-ComputeConAttr-15',
   'K2-ComputeConAttr-16',
   'K2-ComputeConAttr-17',
   'K2-ComputeConAttr-18',
   'K2-ComputeConAttr-19',
   'K2-ComputeConAttr-20',
   'K2-ComputeConAttr-21',
   'K2-ComputeConAttr-22',
   'K2-ComputeConAttr-23',
   'K2-ComputeConAttr-24',
   'K2-ComputeConAttr-25',
   'K2-ComputeConAttr-26',
   'K2-ComputeConAttr-27',
   'K2-ComputeConAttr-28',
   'K2-ComputeConAttr-29',
   'K2-ComputeConAttr-30',
   'K2-ComputeConAttr-31',
   'K2-ComputeConAttr-32',
   'K2-ComputeConAttr-33',
   'K2-ComputeConAttr-34',
   'K2-ComputeConAttr-35',
   'K2-ComputeConAttr-36',
   'K2-ComputeConAttr-37',
   'K2-ComputeConAttr-38',
   'K2-ComputeConAttr-39',
   'K2-ComputeConAttr-40',
   'K2-ComputeConAttr-41',
   'K2-ComputeConAttr-42',
   'K2-ComputeConAttr-43',
   'K2-ComputeConAttr-44',
   'K2-ComputeConAttr-45',
   'K2-ComputeConAttr-46',
   'K2-ComputeConAttr-47',
   'K2-ComputeConAttr-48',
   'K2-ComputeConAttr-49',
   'K2-ComputeConAttr-50',
   'K2-ComputeConAttr-51',
   'K2-ComputeConAttr-52',
   'K2-ComputeConAttr-53',
   'K2-ComputeConAttr-54',
   'K2-ComputeConAttr-55',
   'K2-ComputeConAttr-56',
   'K2-ComputeConAttr-57',
   'K2-ComputeConAttr-58',
   'K2-ComputeConAttr-59',
   'K2-ComputeConAttr-60',
   'K2-ComputeConAttr-61',
   'comp-attr-bad-name-1',
   'comp-attr-bad-name-2',
   'comp-attr-bad-name-3',
   'comp-attr-bad-name-4',
   'comp-attr-bad-name-5',
   'comp-attr-bad-name-6',
   'comp-attr-bad-name-7',
   'cbcl-constr-compattr-001',
   'cbcl-constr-compattr-002',
   'cbcl-constr-compattr-003',
   'cbcl-constr-compattr-005',
   'cbcl-constr-compattr-006',
   'cbcl-constr-compattr-007',
   'cbcl-constr-compattr-008',
   'cbcl-constr-compattr-009'].
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
].
'Constr-compattr-name-1'(_Config) ->
   Qry = "element elem {attribute attr {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-name-2'(_Config) ->
   Qry = "declare namespace foo=\"http://www.example.com/foo\"; element elem {attribute foo:attr {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem xmlns:foo=\"http://www.example.com/foo\" foo:attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com/foo\" foo:attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com/foo\" foo:attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-name-3'(_Config) ->
   Qry = "element elem {attribute foo:attr {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'Constr-compattr-compname-1'(_Config) ->
   Qry = "element elem {attribute {()} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-2'(_Config) ->
   Qry = "element elem {attribute {'one', 'two'} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-3'(_Config) ->
   Qry = "element elem {attribute {xs:untypedAtomic('one'), xs:untypedAtomic('two')} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-4'(_Config) ->
   Qry = "element elem {attribute {//a} {'text'}}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-5'(_Config) ->
   Qry = "element elem {attribute {1,2} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-6'(_Config) ->
   Qry = "element elem {attribute {123} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-7'(_Config) ->
   Qry = "element elem {attribute {xs:dateTime(\"1999-05-31T13:20:00\")} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-compattr-compname-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-compattr-compname-9'(_Config) ->
   Qry = "element elem {attribute {xs:QName('aQname')} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem aQname=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem aQname=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem aQname=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-10'(_Config) ->
   Qry = "element elem {attribute {'attr'} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-11'(_Config) ->
   Qry = "element elem {attribute {'attr', ()} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-12'(_Config) ->
   Qry = "element elem {attribute {(), 'attr'} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-13'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{element elem {attribute {'foo:attr'} {}}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem xmlns:foo=\"http://www.example.com/foo\"><elem foo:attr=\"\"/></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com/foo\"><elem foo:attr=\"\"/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com/foo\"><elem foo:attr=\"\"/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-14'(_Config) ->
   Qry = "element elem {attribute {'foo:attr'} {}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compattr-compname-15'(_Config) ->
   Qry = "element elem {attribute {xs:untypedAtomic('attr')} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-16'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{attribute {xs:untypedAtomic('foo:attr')} {'text'}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem xmlns:foo=\"http://www.example.com/foo\" foo:attr=\"text\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xmlns:foo=\"http://www.example.com/foo\" foo:attr=\"text\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xmlns:foo=\"http://www.example.com/foo\" foo:attr=\"text\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-compname-17'(_Config) ->
   Qry = "element elem {attribute {xs:untypedAtomic('foo:elem')} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compattr-compname-18'(_Config) ->
   Qry = "element elem {attribute {'el em'} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compattr-compname-19'(_Config) ->
   Qry = "element elem {attribute {xs:untypedAtomic('el em')} {'text'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'Constr-compattr-doc-1'(_Config) ->
   Qry = "element elem {attribute attr {., .}}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"texttext texttext\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"texttext texttext\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"texttext texttext\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-parent-1'(_Config) ->
   Qry = "count((attribute attr {})/..)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-compattr-string-1'(_Config) ->
   Qry = "fn:string(attribute attr {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         a  b
      ",
   case xqerl_test:string_value(Res) of
             "a  b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-compattr-data-1'(_Config) ->
   Qry = "fn:data(attribute attr {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         a  b
      ",
   case xqerl_test:string_value(Res) of
             "a  b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-compattr-enclexpr-1'(_Config) ->
   Qry = "element elem {attribute attr {1,'string',3.14,xs:float('1.2345e-2'),xs:dateTime('2002-04-02T12:00:00-01:00')}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"1 string 3.14 0.012345 2002-04-02T12:00:00-01:00\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"1 string 3.14 0.012345 2002-04-02T12:00:00-01:00\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"1 string 3.14 0.012345 2002-04-02T12:00:00-01:00\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-enclexpr-2'(_Config) ->
   Qry = "element elem {attribute attr {<elem>123</elem>, (<elem attr='456'/>)/@attr, (<elem>789</elem>)/text()}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"123 456 789\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"123 456 789\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"123 456 789\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-enclexpr-3'(_Config) ->
   Qry = "element elem {attribute attr {1,'',2}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"1  2\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"1  2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"1  2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-enclexpr-4'(_Config) ->
   Qry = "element elem {attribute attr {1,<a/>,2}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem attr=\"1  2\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem attr=\"1  2\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem attr=\"1  2\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-id-1'(_Config) ->
   Qry = "element elem {attribute xml:id {\"ncname\"}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem xml:id=\"ncname\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem xml:id=\"ncname\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem xml:id=\"ncname\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compattr-id-2'(_Config) ->
   Qry = "element elem {attribute xml:id {\" ab c d \"}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <elem xml:id=\"ab c d\"/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<elem xml:id=\"ab c d\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0091") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'constattrerr-1'(_Config) ->
   Qry = "declare variable $input-context1 external; attribute xmlns {}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'K2-ComputeConAttr-1'(_Config) ->
   Qry = "attribute \"name\" {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ComputeConAttr-2'(_Config) ->
   Qry = "<elem> <?target content ?> {attribute name {\"content\"}} </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-3'(_Config) ->
   Qry = "<elem> {\"a string\", attribute name {\"content\"}} </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-4'(_Config) ->
   Qry = "<elem> {\"a string\", attribute name {\"content\"}} </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-5'(_Config) ->
   Qry = "<elem> <![CDATA[]]> {attribute name {\"content\"}} </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-6'(_Config) ->
   Qry = "<elem> <![CDATA[content]]> {attribute name {\"content\"}} </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-7'(_Config) ->
   Qry = "<elem> <!-- content --> {attribute name {\"content\"}} </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-8'(_Config) ->
   Qry = "<elem> <!-- comment --> { \"a string\", 999, attribute name {\"content\"}, xs:hexBinary(\"FF\") } </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-9'(_Config) ->
   Qry = "<elem> <!-- comment --> { \"a string\", 999, (\"another string\", attribute name {\"content\"}, 383), xs:hexBinary(\"FF\") } </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-10'(_Config) ->
   Qry = "<a> <?target content?> {<b>{attribute name{\"content\"}}</b>} </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <a><?target content?><b name=\"content\"/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><?target content?><b name=\"content\"/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><?target content?><b name=\"content\"/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-11'(_Config) ->
   Qry = "<a>{(<?target content?>, attribute name{\"content\"})[2]} </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <a name=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a name=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a name=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-12'(_Config) ->
   Qry = "<a> <!-- content --> {attribute name{\"content\"}} </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-13'(_Config) ->
   Qry = "<foo > <doo/> {attribute name {\"content\"}} </foo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-14'(_Config) ->
   Qry = "declare function local:myFunc() { <a/> }; <b> {local:myFunc()} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-15'(_Config) ->
   Qry = "declare function local:myFunc() { comment {\"content\"} }; <b> {local:myFunc()} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-16'(_Config) ->
   Qry = "declare function local:myFunc() as element()+ { <a/> }; <b> {local:myFunc()} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-17'(_Config) ->
   Qry = "declare function local:myFunc() as item() { <a/> }; <b> {local:myFunc()} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-18'(_Config) ->
   Qry = "declare function local:myFunc() as item() { <a/> }; <b> {local:myFunc()} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-19'(_Config) ->
   Qry = "declare function local:myFunc($recurse as xs:integer) { <nested> { if ($recurse = 0) then () else local:myFunc($recurse - 1) } </nested> }; <b> {local:myFunc(3)} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-20'(_Config) ->
   Qry = "declare function local:myFunc($recurse as xs:integer) as item() { <nested> { if ($recurse = 0) then () else local:myFunc($recurse - 1) } </nested> }; <b> {local:myFunc(3)} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-21'(_Config) ->
   Qry = "declare function local:myFunc() { <elem/>, attribute name {\"content\"} }; <b> {local:myFunc()} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-22'(_Config) ->
   Qry = "declare variable $myVar := (<elem/>, attribute name {\"content\"}); <b> {$myVar} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-23'(_Config) ->
   Qry = "declare variable $myVar := (<elem/>, attribute name {\"content\"}); <b> {$myVar[2]} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b name=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b name=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b name=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-24'(_Config) ->
   Qry = "declare variable $myVar := (attribute name {\"content\"}, <elem/>); <b> {$myVar[2]} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b><elem/></b>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b><elem/></b>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b><elem/></b>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-25'(_Config) ->
   Qry = "declare function local:myFunc($recurse as xs:integer) { attribute {concat(\"name\", $recurse)} {\"content\"} , if ($recurse = 0) then () else local:myFunc($recurse - 1) }; <b> {local:myFunc(2)} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b name2=\"content\" name1=\"content\" name0=\"content\" name=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b name2=\"content\" name1=\"content\" name0=\"content\" name=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b name2=\"content\" name1=\"content\" name0=\"content\" name=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-26'(_Config) ->
   Qry = "declare function local:myFunc() { attribute name {\"content\"}, <elem/> }; <b> {local:myFunc()} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b name=\"content\"><elem/></b>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b name=\"content\"><elem/></b>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b name=\"content\"><elem/></b>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-27'(_Config) ->
   Qry = "declare function local:myFunc() { <elem/>, attribute name {\"content\"} }; <b> {local:myFunc()[2]} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b name=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b name=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b name=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-28'(_Config) ->
   Qry = "declare variable $local:myVar := <a/>; <b> {$local:myVar} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-29'(_Config) ->
   Qry = "declare variable $local:myVar as item() := <a/>; <b> {$local:myVar} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ComputeConAttr-30'(_Config) ->
   Qry = "declare variable $local:myVar := attribute n2 {\"content\"}; <b> {$local:myVar} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b n2=\"content\" name=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b n2=\"content\" name=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b n2=\"content\" name=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-31'(_Config) ->
   Qry = "declare function local:myFunc() { attribute n2 {\"content\"} }; <b> {local:myFunc()} {attribute name {\"content\"}} </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <b n2=\"content\" name=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b n2=\"content\" name=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b n2=\"content\" name=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-32'(_Config) ->
   Qry = "<e> { attribute name {<anElement/>}, attribute name2 {\"content\"} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e name=\"\" name2=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e name=\"\" name2=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e name=\"\" name2=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-33'(_Config) ->
   Qry = "<e> { attribute name {\"content\"}, attribute name2 {\"content\"} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e name=\"content\" name2=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e name=\"content\" name2=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e name=\"content\" name2=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-34'(_Config) ->
   Qry = "<e> { attribute name {xs:hexBinary(\"ff\")}, attribute name2 {\"content\"} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e name=\"FF\" name2=\"content\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e name=\"FF\" name2=\"content\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e name=\"FF\" name2=\"content\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-35'(_Config) ->
   Qry = "<elem><![CDATA[]]>{attribute name {\"content\"}}<alem/> </elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <elem name=\"content\"><alem/></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem name=\"content\"><alem/></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem name=\"content\"><alem/></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-36'(_Config) ->
   Qry = "count(<elem><![CDATA[]]></elem>/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-ComputeConAttr-37'(_Config) ->
   Qry = "attribute xmlns:localName {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K2-ComputeConAttr-38'(_Config) ->
   Qry = "attribute {\"xmlns:localName\"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ComputeConAttr-39'(_Config) ->
   Qry = "attribute aPrefix:localName {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K2-ComputeConAttr-40'(_Config) ->
   Qry = "attribute {\"aPrefix:localName\"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'K2-ComputeConAttr-41'(_Config) ->
   Qry = "attribute {xs:untypedAtomic(\"aPrefix::localName\")} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'K2-ComputeConAttr-42'(_Config) ->
   Qry = "
        declare namespace prefix = \"http://www.w3.org/2000/xmlns/\"; 
        <e>{attribute prefix:localName {\"content\"}}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'K2-ComputeConAttr-43'(_Config) ->
   Qry = "declare namespace prefix = \"http://www.w3.org/2000/xmlns/\"; <e>{attribute {\"prefix:localName\"} {\"content\"}}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'K2-ComputeConAttr-44'(_Config) ->
   Qry = "attribute {\"xmlns\"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'K2-ComputeConAttr-45'(_Config) ->
   Qry = "attribute xmlns {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'K2-ComputeConAttr-46'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/\"; <e>{attribute xmlns {\"content\"}}</e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'K2-ComputeConAttr-47'(_Config) ->
   Qry = "data(attribute foo {\"content\"}) instance of xs:untypedAtomic",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConAttr-48'(_Config) ->
   Qry = "string(attribute xml:id {\" ab c d \"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            ab c d
            
         
      ",
 case (xqerl_test:string_value(Res) == "ab c d") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0091") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ComputeConAttr-49'(_Config) ->
   Qry = "declare namespace a = \"http://example.com/A\"; declare namespace b = \"http://example.com/A\"; <e> { attribute a:localName {()}, attribute b:localName {()} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'K2-ComputeConAttr-50'(_Config) ->
   Qry = "<e> { attribute {QName(\"http://example.com/\", \"attr\")} {()}, attribute {QName(\"http://example.com/\", \"attr\")} {()} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'K2-ComputeConAttr-51'(_Config) ->
   Qry = "<e> { attribute {QName(\"http://example.com/\", \"attr\")} {()} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:ns0=\"http://example.com/\" ns0:attr=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:ns0=\"http://example.com/\" ns0:attr=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:ns0=\"http://example.com/\" ns0:attr=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-52'(_Config) ->
   Qry = "<e xmlns:p=\"http://example.com/\" p:attr=\"\"> { attribute {QName(\"http://example.com/\", \"p:attr\")} {()} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'K2-ComputeConAttr-53'(_Config) ->
   Qry = "<e> { attribute {QName(\"http://example.com/\", \"attr\")} {()} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:ns0=\"http://example.com/\" ns0:attr=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:ns0=\"http://example.com/\" ns0:attr=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:ns0=\"http://example.com/\" ns0:attr=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-54'(_Config) ->
   Qry = "string-length(xs:NCName(prefix-from-QName(node-name(attribute {QName(\"http://example.com/\", \"attr\")} {()})))) > 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConAttr-55'(_Config) ->
   Qry = "prefix-from-QName(node-name(attribute {QName(\"http://www.w3.org/XML/1998/namespace\", \"attr\")} {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xml
      ",
   case xqerl_test:string_value(Res) of
             "xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ComputeConAttr-56'(_Config) ->
   Qry = "<e> { attribute {QName(\"http://www.w3.org/XML/1998/namespace\", \"space\")} {\"default\"} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xml:space=\"default\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xml:space=\"default\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xml:space=\"default\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-57'(_Config) ->
   Qry = "<e> { attribute {QName(\"http://www.w3.org/2000/xmlns/\", \"space\")} {\"default\"} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'K2-ComputeConAttr-58'(_Config) ->
   Qry = "<e xmlns:p=\"http://example.com/\" p:attr1=\"value\"> { attribute {QName(\"http://example.com/\", \"attr2\")} {()} } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:p=\"http://example.com/\" xmlns:ns0=\"http://example.com/\" p:attr1=\"value\" ns0:attr2=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:p=\"http://example.com/\" xmlns:ns0=\"http://example.com/\" p:attr1=\"value\" ns0:attr2=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:p=\"http://example.com/\" xmlns:ns0=\"http://example.com/\" p:attr1=\"value\" ns0:attr2=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConAttr-59'(_Config) ->
   Qry = "<a> { attribute xml:id {\"1\"} } </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <a xml:id=\"1\"/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<a xml:id=\"1\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0091") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ComputeConAttr-60'(_Config) ->
   Qry = "<a> { attribute xml:space {\"DEFAULT\"} } </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <a xml:space=\"DEFAULT\"/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<a xml:space=\"DEFAULT\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0092") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ComputeConAttr-61'(_Config) ->
   Qry = "let $x := ( attribute a { \"a\" }, element b { \"b\" }, attribute c { \"c\" } ) return <foo> { $x } </foo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'comp-attr-bad-name-1'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if namespace prefix is 'xmlns' Mary Holstege :) <result>{attribute {\"xmlns:error\"} {}}</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'comp-attr-bad-name-2'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if no namespace prefix and local name is 'xmlns' Mary Holstege :) <result>{attribute {\"xmlns\"} {}}</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'comp-attr-bad-name-3'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if namespace URI is 'http://www.w3.org/2000/xmlns/' Mary Holstege :) <result>{ attribute { fn:QName(\"http://www.w3.org/2000/xmlns/\",\"error\")} {} }</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'comp-attr-bad-name-4'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if namespace URI is 'http://www.w3.org/2000/xmlns/' Mary Holstege :) <result>{ attribute { fn:QName(\"http://www.w3.org/2000/xmlns/\",\"foo:error\")} {} }</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'comp-attr-bad-name-5'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if namespace prefix is 'xml' and namespace URI is not 'http://www.w3.org/XML/1998/namespace' Mary Holstege :) <result>{ attribute { fn:QName(\"http://example.com/not-XML-uri\",\"xml:error\") } {} }</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'comp-attr-bad-name-6'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if namespace prefix is not 'xml' and namespace URI is 'http://www.w3.org/XML/1998/namespace' Mary Holstege :) <result>{ attribute { fn:QName(\"http://www.w3.org/XML/1998/namespace\",\"foo:error\")} {} }</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'comp-attr-bad-name-7'(_Config) ->
   Qry = "(: 3.7.3.2 Computed Attribute Constructor per XQ.E19 XQDY0044 if namespace prefix is 'xmlns' Mary Holstege :) <result>{attribute {fn:QName(\"http://example.com/some-uri\",\"xmlns:error\")} {}}</result>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'cbcl-constr-compattr-001'(_Config) ->
   Qry = "for $a in attribute { fn:QName(\"http://www.w3.org/2000/xmlns/\", \"namespace:foo\") } { \"bar\" } return name($a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'cbcl-constr-compattr-002'(_Config) ->
   Qry = "for $a in attribute { fn:QName(\"http://www.example.com/\", \"xmlns:foo\") } { \"bar\" } return name($a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'cbcl-constr-compattr-003'(_Config) ->
   Qry = "for $a in attribute { \"xmlns\" } { \"bar\" } return name($a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'cbcl-constr-compattr-005'(_Config) ->
   Qry = "
      	for $a in attribute { fn:QName(\"http://www.example.com/\", \"xml:foo\") } { \"bar\" } 
      	return name($a)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'cbcl-constr-compattr-006'(_Config) ->
   Qry = "
      	for $a in attribute { fn:QName(\"http://www.w3.org/XML/1998/namespace\", \"sgml:foo\") } { \"bar\" } 
      	return name($a)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0044" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0044'}) end.
'cbcl-constr-compattr-007'(_Config) ->
   Qry = "
      	<element xmlns:sgml=\"http://www.example.com/other\"> { 
      		for $a in attribute { fn:QName(\"http://www.example.com/\", \"sgml:foo\") } { } 
      		return concat(name($a), \"=\", namespace-uri($a)) } 
      	</element>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <element xmlns:sgml=\"http://www.example.com/other\">sgml:foo=http://www.example.com/</element>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<element xmlns:sgml=\"http://www.example.com/other\">sgml:foo=http://www.example.com/</element>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<element xmlns:sgml=\"http://www.example.com/other\">sgml:foo=http://www.example.com/</element>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-constr-compattr-008'(_Config) ->
   Qry = "
      	declare function local:factorial($arg as xs:integer) as xs:integer { 
      		if ($arg le 1) then 1 else $arg * local:factorial($arg - 1) 
      	}; 
      	<element> { attribute { fn:QName(\"http://www.example.com/\", \"sgml:foo\") } { local:factorial(5) } } </element>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <element xmlns:sgml=\"http://www.example.com/\" sgml:foo=\"120\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<element xmlns:sgml=\"http://www.example.com/\" sgml:foo=\"120\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<element xmlns:sgml=\"http://www.example.com/\" sgml:foo=\"120\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-constr-compattr-009'(_Config) ->
   Qry = "
      	declare function local:even-range($arg as xs:integer) as xs:integer* { (1 to $arg)[. mod 2 = 9] }; 
      	<element> { attribute { 'attr' } { local:even-range(0) } } </element>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <element attr=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<element attr=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<element attr=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
