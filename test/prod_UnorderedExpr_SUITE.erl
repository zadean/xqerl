-module('prod_UnorderedExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Orderexpr-1'/1]).
-export(['Orderexpr-2'/1]).
-export(['Orderexpr-5'/1]).
-export(['Orderexpr-6'/1]).
-export(['Orderexpr-9'/1]).
-export(['Orderexpr-10'/1]).
-export(['Orderexpr-11'/1]).
-export(['Orderexpr-12'/1]).
-export(['Orderexpr-13'/1]).
-export(['Orderexpr-14'/1]).
-export(['Orderexpr-15'/1]).
-export(['Orderexpr-16'/1]).
-export(['Orderexpr-17'/1]).
-export(['Orderexpr-18'/1]).
-export(['Orderexpr-19'/1]).
-export(['Orderexpr-20'/1]).
-export(['orderedunorderedexpr-1'/1]).
-export(['orderedunorderedexpr-2'/1]).
-export(['orderedunorderedexpr-3'/1]).
-export(['orderedunorderedexpr-4'/1]).
-export(['orderedunorderedexpr-5'/1]).
-export(['orderedunorderedexpr-6'/1]).
-export(['K-OrderExpr-1'/1]).
-export(['K-OrderExpr-2'/1]).
-export(['K-OrderExpr-3'/1]).
-export(['K-OrderExpr-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Orderexpr-1',
   'Orderexpr-2',
   'Orderexpr-5',
   'Orderexpr-6',
   'Orderexpr-9',
   'Orderexpr-10',
   'Orderexpr-11',
   'Orderexpr-12',
   'Orderexpr-13',
   'Orderexpr-14',
   'Orderexpr-15',
   'Orderexpr-16',
   'Orderexpr-17',
   'Orderexpr-18',
   'Orderexpr-19',
   'Orderexpr-20',
   'orderedunorderedexpr-1',
   'orderedunorderedexpr-2',
   'orderedunorderedexpr-3',
   'orderedunorderedexpr-4',
   'orderedunorderedexpr-5',
   'orderedunorderedexpr-6',
   'K-OrderExpr-1',
   'K-OrderExpr-2',
   'K-OrderExpr-3',
   'K-OrderExpr-4'].
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
environment('partlist') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/partlist.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Orderexpr-1'(_Config) ->
   Qry = "ordered {//part[@partid < 2]}",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Orderexpr-2'(_Config) ->
   Qry = "unordered {//part[@partid < 2]}",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>
            <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"0\" name=\"car\"/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"0\" name=\"car\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-5'(_Config) ->
   Qry = "ordered {//part[@partid < 2][2]}",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <part partid=\"1\" partof=\"0\" name=\"engine\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<part partid=\"1\" partof=\"0\" name=\"engine\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<part partid=\"1\" partof=\"0\" name=\"engine\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Orderexpr-6'(_Config) ->
   Qry = "unordered {//part[@partid < 2][2]}",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <part partid=\"1\" partof=\"0\" name=\"engine\"/>
            <part partid=\"0\" name=\"car\"/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"1\" partof=\"0\" name=\"engine\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"0\" name=\"car\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-9'(_Config) ->
   Qry = "ordered {//part[@partof = 1] union //part[@partid = 1] }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Orderexpr-10'(_Config) ->
   Qry = "unordered {//part[@partof = 1] union //part[@partid = 1] }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>
            <part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-11'(_Config) ->
   Qry = "ordered {//part[@partof < 2] intersect //part[@partid = 1 or @partid > 2] }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Orderexpr-12'(_Config) ->
   Qry = "unordered {//part[@partof < 2] intersect //part[@partid = 1 or @partid > 2] }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>
            <part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-13'(_Config) ->
   Qry = "ordered {//part[@partof < 2] except //part[@partid = 2] }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Orderexpr-14'(_Config) ->
   Qry = "unordered {//part[@partof < 2] except //part[@partid = 2] }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>
            <part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-15'(_Config) ->
   Qry = "ordered {fn:subsequence((1,2,3,4),2,2)}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2 3
      ",
   case xqerl_test:string_value(Res) of
             "2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Orderexpr-16'(_Config) ->
   Qry = "unordered {fn:subsequence((1,2,3,4),2,2)}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2 3
            3 2
         
      ",
 case (xqerl_test:string_value(Res) == "2 3") orelse (xqerl_test:string_value(Res) == "3 2") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-17'(_Config) ->
   Qry = "ordered {fn:reverse((3,2))}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2 3
      ",
   case xqerl_test:string_value(Res) of
             "2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Orderexpr-18'(_Config) ->
   Qry = "unordered {fn:reverse((2,3))}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2 3
            3 2
         
      ",
 case (xqerl_test:string_value(Res) == "2 3") orelse (xqerl_test:string_value(Res) == "3 2") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Orderexpr-19'(_Config) ->
   Qry = "ordered { for $i in (//part[@partid = 1], //part[@partid = 2]), $j in (//part[@partof = $i/@partid]) where ($i/@partid + $j/@partid) < 7 return $i/@partid + $j/@partid }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         4 6
      ",
   case xqerl_test:string_value(Res) of
             "4 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'Orderexpr-20'(_Config) ->
   Qry = "unordered { for $i in (//part[@partid = 1], //part[@partid = 2]), $j in (//part[@partof = $i/@partid]) where ($i/@partid + $j/@partid) < 7 return $i/@partid + $j/@partid }",
   Env = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            4 6
            6 4
         
      ",
 case (xqerl_test:string_value(Res) == "4 6") orelse (xqerl_test:string_value(Res) == "6 4") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'orderedunorderedexpr-1'(_Config) ->
   Qry = "ordered {if (fn:true()) then (0,1,2,3,4) else (\"A\",\"B\",\"C\")}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0 1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "0 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'orderedunorderedexpr-2'(_Config) ->
   Qry = "ordered {if (1 eq 1 and 2 eq 2) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0 1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "0 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'orderedunorderedexpr-3'(_Config) ->
   Qry = "ordered {if (1 eq 1 or 2 eq 3) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0 1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "0 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'orderedunorderedexpr-4'(_Config) ->
   Qry = "ordered {if (some $x in (1, 2, 3), $y in (2, 3, 4) satisfies $x + $y = 4) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0 1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "0 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'orderedunorderedexpr-5'(_Config) ->
   Qry = "ordered {if (every $x in (1, 2, 3) satisfies $x < 4) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0 1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "0 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'orderedunorderedexpr-6'(_Config) ->
   Qry = "ordered {typeswitch(123) case $i as xs:string return (\"a\",\"b\",\"c\") case $i as xs:double return (\"a\",\"b\",\"c\") case $i as xs:integer return (1,2,3,4) default return (\"a\",\"b\",\"c\") }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-OrderExpr-1'(_Config) ->
   Qry = "ordered{}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-OrderExpr-2'(_Config) ->
   Qry = "unordered{}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-OrderExpr-3'(_Config) ->
   Qry = "ordered{true()}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-OrderExpr-4'(_Config) ->
   Qry = "unordered{true()}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
