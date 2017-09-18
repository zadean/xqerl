-module('prod_CompPIConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-comppi-name-1'/1]).
-export(['Constr-comppi-name-2'/1]).
-export(['Constr-comppi-compname-1'/1]).
-export(['Constr-comppi-compname-2'/1]).
-export(['Constr-comppi-compname-3'/1]).
-export(['Constr-comppi-compname-4'/1]).
-export(['Constr-comppi-compname-5'/1]).
-export(['Constr-comppi-compname-6'/1]).
-export(['Constr-comppi-compname-7'/1]).
-export(['Constr-comppi-compname-8'/1]).
-export(['Constr-comppi-compname-9'/1]).
-export(['Constr-comppi-compname-10'/1]).
-export(['Constr-comppi-compname-11'/1]).
-export(['Constr-comppi-compname-12'/1]).
-export(['Constr-comppi-compname-13'/1]).
-export(['Constr-comppi-compname-15'/1]).
-export(['Constr-comppi-compname-16'/1]).
-export(['Constr-comppi-compname-18'/1]).
-export(['Constr-comppi-compname-19'/1]).
-export(['Constr-comppi-doc-1'/1]).
-export(['Constr-comppi-parent-1'/1]).
-export(['Constr-comppi-string-1'/1]).
-export(['Constr-comppi-data-1'/1]).
-export(['Constr-comppi-enclexpr-1'/1]).
-export(['Constr-comppi-enclexpr-2'/1]).
-export(['Constr-comppi-enclexpr-3'/1]).
-export(['Constr-comppi-enclexpr-4'/1]).
-export(['Constr-comppi-enclexpr-5'/1]).
-export(['Constr-comppi-namexml-1'/1]).
-export(['Constr-comppi-namexml-2'/1]).
-export(['Constr-comppi-namexml-3'/1]).
-export(['Constr-comppi-namexml-4'/1]).
-export(['Constr-comppi-invalid-1'/1]).
-export(['Constr-comppi-invalid-2'/1]).
-export(['Constr-comppi-invalid-3'/1]).
-export(['Constr-comppi-space-1'/1]).
-export(['Constr-comppi-space-2'/1]).
-export(['Constr-comppi-space-3'/1]).
-export(['Constr-comppi-space-4'/1]).
-export(['Constr-comppi-empty-1'/1]).
-export(['Constr-comppi-empty-2'/1]).
-export(['K2-ComputeConPI-1'/1]).
-export(['K2-ComputeConPI-2'/1]).
-export(['K2-ComputeConPI-3'/1]).
-export(['K2-ComputeConPI-4'/1]).
-export(['K2-ComputeConPI-5'/1]).
-export(['K2-ComputeConPI-6'/1]).
-export(['K2-ComputeConPI-7'/1]).
-export(['K2-ComputeConPI-8'/1]).
-export(['K2-ComputeConPI-9'/1]).
-export(['K2-ComputeConPI-10'/1]).
-export(['K2-ComputeConPI-11'/1]).
-export(['cbcl-constr-comppi-001'/1]).
-export(['cbcl-constr-comppi-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-comppi-name-1',
   'Constr-comppi-name-2',
   'Constr-comppi-compname-1',
   'Constr-comppi-compname-2',
   'Constr-comppi-compname-3',
   'Constr-comppi-compname-4',
   'Constr-comppi-compname-5',
   'Constr-comppi-compname-6',
   'Constr-comppi-compname-7',
   'Constr-comppi-compname-8',
   'Constr-comppi-compname-9',
   'Constr-comppi-compname-10',
   'Constr-comppi-compname-11',
   'Constr-comppi-compname-12',
   'Constr-comppi-compname-13',
   'Constr-comppi-compname-15',
   'Constr-comppi-compname-16',
   'Constr-comppi-compname-18',
   'Constr-comppi-compname-19',
   'Constr-comppi-doc-1',
   'Constr-comppi-parent-1',
   'Constr-comppi-string-1',
   'Constr-comppi-data-1',
   'Constr-comppi-enclexpr-1',
   'Constr-comppi-enclexpr-2',
   'Constr-comppi-enclexpr-3',
   'Constr-comppi-enclexpr-4',
   'Constr-comppi-enclexpr-5',
   'Constr-comppi-namexml-1',
   'Constr-comppi-namexml-2',
   'Constr-comppi-namexml-3',
   'Constr-comppi-namexml-4',
   'Constr-comppi-invalid-1',
   'Constr-comppi-invalid-2',
   'Constr-comppi-invalid-3',
   'Constr-comppi-space-1',
   'Constr-comppi-space-2',
   'Constr-comppi-space-3',
   'Constr-comppi-space-4',
   'Constr-comppi-empty-1',
   'Constr-comppi-empty-2',
   'K2-ComputeConPI-1',
   'K2-ComputeConPI-2',
   'K2-ComputeConPI-3',
   'K2-ComputeConPI-4',
   'K2-ComputeConPI-5',
   'K2-ComputeConPI-6',
   'K2-ComputeConPI-7',
   'K2-ComputeConPI-8',
   'K2-ComputeConPI-9',
   'K2-ComputeConPI-10',
   'K2-ComputeConPI-11',
   'cbcl-constr-comppi-001',
   'cbcl-constr-comppi-002'].
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
'Constr-comppi-name-1'(_Config) ->
   Qry = "processing-instruction pi {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-name-2'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com\">{processing-instruction foo:pi {'text'}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Constr-comppi-compname-1'(_Config) ->
   Qry = "processing-instruction {()} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-2'(_Config) ->
   Qry = "processing-instruction {'one', 'two'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-3'(_Config) ->
   Qry = "processing-instruction {xs:untypedAtomic('one'), xs:untypedAtomic('two')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-4'(_Config) ->
   Qry = "processing-instruction {//a} {'text'}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-5'(_Config) ->
   Qry = "processing-instruction {1,2} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-6'(_Config) ->
   Qry = "processing-instruction {123} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-7'(_Config) ->
   Qry = "processing-instruction {xs:dateTime(\"1999-05-31T13:20:00\")} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-comppi-compname-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-comppi-compname-9'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-comppi-compname-10'(_Config) ->
   Qry = "processing-instruction {'pi'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-compname-11'(_Config) ->
   Qry = "processing-instruction {'pi', ()} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-compname-12'(_Config) ->
   Qry = "processing-instruction {(), 'pi'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-compname-13'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{processing-instruction {'foo:attr'} {}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0041" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0041'}) end.
'Constr-comppi-compname-15'(_Config) ->
   Qry = "processing-instruction {xs:untypedAtomic('pi')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-compname-16'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.example.com/foo\">{processing-instruction {xs:untypedAtomic('foo:pi')} {'text'}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0041" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0041'}) end.
'Constr-comppi-compname-18'(_Config) ->
   Qry = "processing-instruction {'p i'} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0041" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0041'}) end.
'Constr-comppi-compname-19'(_Config) ->
   Qry = "processing-instruction {xs:untypedAtomic('p i')} {'text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0041" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0041'}) end.
'Constr-comppi-doc-1'(_Config) ->
   Qry = "processing-instruction pi {., .}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi texttext texttext?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi texttext texttext?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi texttext texttext?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-parent-1'(_Config) ->
   Qry = "count((processing-instruction pi {()})/..)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'Constr-comppi-string-1'(_Config) ->
   Qry = "fn:string(processing-instruction pi {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         a  b\n      ",
   case xqerl_test:string_value(Res) of
             "a  b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-comppi-data-1'(_Config) ->
   Qry = "fn:data(processing-instruction pi {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         a  b\n      ",
   case xqerl_test:string_value(Res) of
             "a  b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-comppi-enclexpr-1'(_Config) ->
   Qry = "processing-instruction pi {1,'string',3.14,xs:float('1.2345e-2'),xs:dateTime('2002-04-02T12:00:00-01:00')}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi 1 string 3.14 0.012345 2002-04-02T12:00:00-01:00?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi 1 string 3.14 0.012345 2002-04-02T12:00:00-01:00?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi 1 string 3.14 0.012345 2002-04-02T12:00:00-01:00?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-enclexpr-2'(_Config) ->
   Qry = "processing-instruction pi {<elem>123</elem>, (<elem attr='456'/>)/@attr, (<elem>789</elem>)/text()}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi 123 456 789?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi 123 456 789?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi 123 456 789?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-enclexpr-3'(_Config) ->
   Qry = "processing-instruction pi {1,'',2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi 1  2?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi 1  2?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi 1  2?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-enclexpr-4'(_Config) ->
   Qry = "processing-instruction pi {1,<a/>,2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi 1  2?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi 1  2?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi 1  2?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-enclexpr-5'(_Config) ->
   Qry = "processing-instruction pi {/root}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi texttext?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi texttext?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi texttext?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-namexml-1'(_Config) ->
   Qry = "processing-instruction xml {'pi'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0064" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0064'}) end.
'Constr-comppi-namexml-2'(_Config) ->
   Qry = "processing-instruction XmL {'pi'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0064" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0064'}) end.
'Constr-comppi-namexml-3'(_Config) ->
   Qry = "processing-instruction {'xml'} {'pi'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0064" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0064'}) end.
'Constr-comppi-namexml-4'(_Config) ->
   Qry = "processing-instruction {'XmL'} {'pi'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0064" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0064'}) end.
'Constr-comppi-invalid-1'(_Config) ->
   Qry = "processing-instruction pi {'?>'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0026" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0026'}) end.
'Constr-comppi-invalid-2'(_Config) ->
   Qry = "processing-instruction pi {'?>text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0026" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0026'}) end.
'Constr-comppi-invalid-3'(_Config) ->
   Qry = "processing-instruction pi {'text?>text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0026" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0026'}) end.
'Constr-comppi-space-1'(_Config) ->
   Qry = "processing-instruction pi {' text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-space-2'(_Config) ->
   Qry = "processing-instruction pi {'&#x20;&#x0A;&#x0D;&#x09;text'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <?pi text?>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?pi text?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?pi text?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-comppi-space-3'(_Config) ->
   Qry = "string-to-codepoints(processing-instruction pi {' text'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         116 101 120 116\n      ",
   case xqerl_test:string_value(Res) of
             "116 101 120 116" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-comppi-space-4'(_Config) ->
   Qry = "string-to-codepoints(processing-instruction pi {'&#x20;&#x0A;&#x0D;&#x09;text'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         116 101 120 116\n      ",
   case xqerl_test:string_value(Res) of
             "116 101 120 116" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Constr-comppi-empty-1'(_Config) ->
   Qry = "processing-instruction pi {()}",
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
'Constr-comppi-empty-2'(_Config) ->
   Qry = "processing-instruction pi {''}",
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
'K2-ComputeConPI-1'(_Config) ->
   Qry = "processing-instruction \"name\" {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ComputeConPI-2'(_Config) ->
   Qry = "processing-instruction {\"xml\"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0064" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0064'}) end.
'K2-ComputeConPI-3'(_Config) ->
   Qry = "processing-instruction {\" xmL \"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0064" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0064'}) end.
'K2-ComputeConPI-4'(_Config) ->
   Qry = "local-name(processing-instruction {\" name \"} {\"content\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         name\n      ",
   case xqerl_test:string_value(Res) of
             "name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ComputeConPI-5'(_Config) ->
   Qry = "local-name(processing-instruction {\" XmLnaMe \"} {\"content\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         XmLnaMe\n      ",
   case xqerl_test:string_value(Res) of
             "XmLnaMe" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ComputeConPI-6'(_Config) ->
   Qry = "processing-instruction {\"1.das \"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0041" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0041'}) end.
'K2-ComputeConPI-7'(_Config) ->
   Qry = "processing-instruction {\"thename\"} {\"asdas?>\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0026" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0026'}) end.
'K2-ComputeConPI-8'(_Config) ->
   Qry = "string(processing-instruction {\"thename\"} {\"asdas? >\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         asdas? >\n      ",
   case xqerl_test:string_value(Res) of
             "asdas? >" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ComputeConPI-9'(_Config) ->
   Qry = "string(processing-instruction {\"thename\"} {\"content {1+ } {\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         content {1+ } {\n      ",
   case xqerl_test:string_value(Res) of
             "content {1+ } {" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ComputeConPI-10'(_Config) ->
   Qry = "processing-instruction name {\" \"} eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ComputeConPI-11'(_Config) ->
   Qry = "data(processing-instruction name {\"content\"}) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-constr-comppi-001'(_Config) ->
   Qry = "\n      	<element> { processing-instruction { 'pi' } { <element>?&gt;</element> } } </element>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0026" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0026'}) end.
'cbcl-constr-comppi-002'(_Config) ->
   Qry = "\n      	declare function local:tag($arg) as element() { element { 'tag' } { $arg } }; \n      	<element> { processing-instruction { 'pi' } { \"content\", local:tag('?&gt;') } } </element>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0026" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0026'}) end.
