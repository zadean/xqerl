-module('prod_OrderingModeDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['orderDecl-1'/1]).
-export(['orderDecl-2'/1]).
-export(['orderdecl-3'/1]).
-export(['orderDecl-4'/1]).
-export(['orderdecl-5'/1]).
-export(['orderdecl-6'/1]).
-export(['orderDecl-7'/1]).
-export(['orderDecl-8'/1]).
-export(['orderDecl-9'/1]).
-export(['orderDecl-10'/1]).
-export(['orderDecl-11'/1]).
-export(['orderDecl-12'/1]).
-export(['orderDecl-13'/1]).
-export(['orderdecl-14'/1]).
-export(['orderDecl-15'/1]).
-export(['orderDecl-16'/1]).
-export(['orderDecl-17'/1]).
-export(['orderDecl-18'/1]).
-export(['orderDecl-20'/1]).
-export(['orderDecl-21'/1]).
-export(['orderDecl-22'/1]).
-export(['orderDecl-23'/1]).
-export(['K-DefaultOrderingProlog-1'/1]).
-export(['K-DefaultOrderingProlog-2'/1]).
-export(['K-DefaultOrderingProlog-3'/1]).
-export(['K2-DefaultOrderingProlog-1'/1]).
-export(['K2-DefaultOrderingProlog-2'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'orderDecl-1',
   'orderDecl-2',
   'orderdecl-3',
   'orderDecl-4',
   'orderdecl-5',
   'orderdecl-6',
   'orderDecl-7',
   'orderDecl-8',
   'orderDecl-9',
   'orderDecl-10',
   'orderDecl-11',
   'orderDecl-12',
   'orderDecl-13',
   'orderdecl-14',
   'orderDecl-15',
   'orderDecl-16',
   'orderDecl-17',
   'orderDecl-18',
   'orderDecl-20',
   'orderDecl-21',
   'orderDecl-22',
   'orderDecl-23',
   'K-DefaultOrderingProlog-1',
   'K-DefaultOrderingProlog-2',
   'K-DefaultOrderingProlog-3',
   'K2-DefaultOrderingProlog-1',
   'K2-DefaultOrderingProlog-2'].
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
'orderDecl-1'(_Config) ->
   Qry = "declare ordering unordered; declare ordering ordered; \"aa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0065" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0065'}) end.
'orderDecl-2'(_Config) ->
   Qry = "declare ordering ordered; let $a := <a><b>1</b><c>2</c></a> return $a/b union $a/c",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b>1</b><c>2</c>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b>1</b><c>2</c>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b>1</b><c>2</c>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderdecl-3'(_Config) ->
   Qry = "declare ordering unordered; (<a>1</a>) union (<b>2</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <a>1</a><b>2</b>
            <b>2</b><a>1</a>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<a>1</a><b>2</b>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P2 -> "deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<b>2</b><a>1</a>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'orderDecl-4'(_Config) ->
   Qry = "declare ordering ordered; (//overtime) intersect (//overtime)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderdecl-5'(_Config) ->
   Qry = "declare ordering unordered; (//overtime) intersect (//overtime)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderdecl-6'(_Config) ->
   Qry = "declare ordering ordered; (//employee[1]) except (//employee[2])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-7'(_Config) ->
   Qry = "declare ordering unordered; (//employee[1]) except (//employee[2])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-8'(_Config) ->
   Qry = "declare ordering ordered; for $x in //hours return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-9'(_Config) ->
   Qry = "declare ordering ordered; for $x in //hours order by $x descending return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-10'(_Config) ->
   Qry = "declare ordering ordered; for $x in //hours order by $x ascending return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-11'(_Config) ->
   Qry = "declare ordering unordered; for $x in //hours order by $x descending return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-12'(_Config) ->
   Qry = "declare ordering unordered; for $x in //hours order by $x ascending return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-13'(_Config) ->
   Qry = "declare ordering ordered; for $x in (/works/employee/hours) return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderdecl-14'(_Config) ->
   Qry = "declare ordering unordered; for $x in (/works/employee[4]/hours) return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <hours>20</hours><hours>40</hours>
            <hours>40</hours><hours>20</hours>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<hours>20</hours><hours>40</hours>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P2 -> "deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<hours>40</hours><hours>20</hours>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'orderDecl-15'(_Config) ->
   Qry = "declare ordering ordered; for $x in (//day) return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day><day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day><day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day><day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-16'(_Config) ->
   Qry = "declare ordering unordered; for $x in (//day) return $x",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <day>Monday</day><day>Tuesday</day>
            <day>Tuesday</day><day>Monday</day>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<day>Monday</day><day>Tuesday</day>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P2 -> "deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<day>Tuesday</day><day>Monday</day>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'orderDecl-17'(_Config) ->
   Qry = "declare ordering unordered; ordered { for $x in /works//day return $x }",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day><day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day><day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day><day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-18'(_Config) ->
   Qry = "declare ordering ordered; unordered { for $x in /works//day return $x }",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <day>Monday</day><day>Tuesday</day>
            <day>Tuesday</day><day>Monday</day>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<day>Monday</day><day>Tuesday</day>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P2 -> "deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<day>Tuesday</day><day>Monday</day>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'orderDecl-20'(_Config) ->
   Qry = "declare ordering ordered; for $x in /works//overtime return $x/child::day",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day><day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day><day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day><day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-21'(_Config) ->
   Qry = "declare ordering ordered; for $x in /works//day[1] return $x/parent::node()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'orderDecl-22'(_Config) ->
   Qry = "declare ordering ordered; for $x in /works//day[1] return $x/following::day",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <day>Tuesday</day>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<day>Tuesday</day>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0010") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'orderDecl-23'(_Config) ->
   Qry = "declare ordering ordered; for $x in /works//overtime return $x/descendant::day",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day><day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day><day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day><day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K-DefaultOrderingProlog-1'(_Config) ->
   Qry = "declare(::)ordering ordered; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DefaultOrderingProlog-2'(_Config) ->
   Qry = "declare(::)ordering unordered; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DefaultOrderingProlog-3'(_Config) ->
   Qry = "declare(::)ordering unordered; declare(::)ordering ordered; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0065" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0065'}) end.
'K2-DefaultOrderingProlog-1'(_Config) ->
   Qry = "ordering eq ordering",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-DefaultOrderingProlog-2'(_Config) ->
   Qry = "order eq order",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
