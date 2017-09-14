-module('prod_CompCommentConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-compcomment-enclexpr-1'/1]).
-export(['Constr-compcomment-enclexpr-2'/1]).
-export(['Constr-compcomment-enclexpr-3'/1]).
-export(['Constr-compcomment-enclexpr-4'/1]).
-export(['Constr-compcomment-enclexpr-5'/1]).
-export(['Constr-compcomment-doc-1'/1]).
-export(['Constr-compcomment-parent-1'/1]).
-export(['Constr-compcomment-string-1'/1]).
-export(['Constr-compcomment-data-1'/1]).
-export(['Constr-compcomment-nested-1'/1]).
-export(['Constr-compcomment-nested-2'/1]).
-export(['Constr-compcomment-nested-3'/1]).
-export(['Constr-compcomment-dash-1'/1]).
-export(['Constr-compcomment-dash-2'/1]).
-export(['Constr-compcomment-dash-3'/1]).
-export(['Constr-compcomment-dash-4'/1]).
-export(['Constr-compcomment-doubledash-1'/1]).
-export(['Constr-compcomment-doubledash-2'/1]).
-export(['Constr-compcomment-doubledash-3'/1]).
-export(['Constr-compcomment-doubledash-4'/1]).
-export(['Constr-compcomment-doubledash-5'/1]).
-export(['K2-ComputeConComment-1'/1]).
-export(['K2-ComputeConComment-2'/1]).
-export(['K2-ComputeConComment-3'/1]).
-export(['K2-ComputeConComment-4'/1]).
-export(['K2-ComputeConComment-5'/1]).
-export(['cbcl-constr-compcomment-001'/1]).
-export(['cbcl-constr-compcomment-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-compcomment-enclexpr-1',
   'Constr-compcomment-enclexpr-2',
   'Constr-compcomment-enclexpr-3',
   'Constr-compcomment-enclexpr-4',
   'Constr-compcomment-enclexpr-5',
   'Constr-compcomment-doc-1',
   'Constr-compcomment-parent-1',
   'Constr-compcomment-string-1',
   'Constr-compcomment-data-1',
   'Constr-compcomment-nested-1',
   'Constr-compcomment-nested-2',
   'Constr-compcomment-nested-3',
   'Constr-compcomment-dash-1',
   'Constr-compcomment-dash-2',
   'Constr-compcomment-dash-3',
   'Constr-compcomment-dash-4',
   'Constr-compcomment-doubledash-1',
   'Constr-compcomment-doubledash-2',
   'Constr-compcomment-doubledash-3',
   'Constr-compcomment-doubledash-4',
   'Constr-compcomment-doubledash-5',
   'K2-ComputeConComment-1',
   'K2-ComputeConComment-2',
   'K2-ComputeConComment-3',
   'K2-ComputeConComment-4',
   'K2-ComputeConComment-5',
   'cbcl-constr-compcomment-001',
   'cbcl-constr-compcomment-002'].
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
'Constr-compcomment-enclexpr-1'(_Config) ->
   Qry = "comment {1,'string',3.14,xs:float('1.2345e-2'),xs:dateTime('2002-04-02T12:00:00-01:00')}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--1 string 3.14 0.012345 2002-04-02T12:00:00-01:00-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--1 string 3.14 0.012345 2002-04-02T12:00:00-01:00-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--1 string 3.14 0.012345 2002-04-02T12:00:00-01:00-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-enclexpr-2'(_Config) ->
   Qry = "comment {<elem>123</elem>, (<elem attr='456'/>)/@attr, (<elem>789</elem>)/text()}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--123 456 789-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--123 456 789-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--123 456 789-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-enclexpr-3'(_Config) ->
   Qry = "comment {1,'',2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--1  2-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--1  2-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--1  2-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-enclexpr-4'(_Config) ->
   Qry = "comment {1,<a/>,2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--1  2-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--1  2-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--1  2-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-enclexpr-5'(_Config) ->
   Qry = "comment {/root}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--texttext-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--texttext-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--texttext-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-doc-1'(_Config) ->
   Qry = "comment {., .}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--texttext texttext-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--texttext texttext-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--texttext texttext-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-parent-1'(_Config) ->
   Qry = "count((comment {'comment'})/..)",
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
'Constr-compcomment-string-1'(_Config) ->
   Qry = "fn:string(comment {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a  b
      ",
   case xqerl_types:string_value(Res) of
             "a  b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compcomment-data-1'(_Config) ->
   Qry = "fn:data(comment {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a  b
      ",
   case xqerl_types:string_value(Res) of
             "a  b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-compcomment-nested-1'(_Config) ->
   Qry = "comment {comment {'one', comment {'two'}}, 'three', comment {'four'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--one two three four-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--one two three four-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--one two three four-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-nested-2'(_Config) ->
   Qry = "<elem>{comment {'one'}}<a>{comment {'two'}}</a>{comment {'three'}}</elem>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <elem><!--one--><a><!--two--></a><!--three--></elem>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<elem><!--one--><a><!--two--></a><!--three--></elem>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<elem><!--one--><a><!--two--></a><!--three--></elem>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-nested-3'(_Config) ->
   Qry = "document {comment {'one'}, <a/>, comment {'two'}, <b/>, comment {'three'}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--one--><a/><!--two--><b/><!--three-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--one--><a/><!--two--><b/><!--three-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--one--><a/><!--two--><b/><!--three-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-compcomment-dash-1'(_Config) ->
   Qry = "comment {'-'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-dash-2'(_Config) ->
   Qry = "comment {'comment-'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-dash-3'(_Config) ->
   Qry = "comment {'comment&#x2D;'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-dash-4'(_Config) ->
   Qry = "comment {//*:test-case[@name=\"Constr-compcomment-dash-4\"]/*:description}",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CompCommentConstructor.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-doubledash-1'(_Config) ->
   Qry = "comment {'--'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-doubledash-2'(_Config) ->
   Qry = "comment {'com--ment'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-doubledash-3'(_Config) ->
   Qry = "comment {'com&#x2D;&#x2D;ment'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-doubledash-4'(_Config) ->
   Qry = "comment {//*:test-case[@name=\"Constr-compcomment-doubledash-4\"]/*:description}",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CompCommentConstructor.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'Constr-compcomment-doubledash-5'(_Config) ->
   Qry = "comment {'com','-','-','ment'}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!--com - - ment-->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--com - - ment-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--com - - ment-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConComment-1'(_Config) ->
   Qry = "comment {\"name\"} {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ComputeConComment-2'(_Config) ->
   Qry = "comment name {\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ComputeConComment-3'(_Config) ->
   Qry = "comment {()}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!---->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!---->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!---->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConComment-4'(_Config) ->
   Qry = "comment{}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         <!---->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!---->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!---->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ComputeConComment-5'(_Config) ->
   Qry = "data(comment {\"content\"}) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-constr-compcomment-001'(_Config) ->
   Qry = "<element> { comment { '-', '-' } } </element>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
'cbcl-constr-compcomment-002'(_Config) ->
   Qry = "
      	declare function local:tag($arg) as element() { element { 'tag' } { $arg } }; 
      	<element> { comment { 'comment', local:tag('--') } } </element>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0072" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0072'}) end.
