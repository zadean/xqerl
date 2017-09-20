-module('prod_AxisStep_unabbr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['unabbreviatedSyntax-1'/1]).
-export(['unabbreviatedSyntax-2'/1]).
-export(['unabbreviatedSyntax-3'/1]).
-export(['unabbreviatedSyntax-4'/1]).
-export(['unabbreviatedSyntax-5'/1]).
-export(['unabbreviatedSyntax-8'/1]).
-export(['unabbreviatedSyntax-9'/1]).
-export(['unabbreviatedSyntax-12'/1]).
-export(['unabbreviatedSyntax-13'/1]).
-export(['unabbreviatedSyntax-14'/1]).
-export(['unabbreviatedSyntax-15'/1]).
-export(['unabbreviatedSyntax-16'/1]).
-export(['unabbreviatedSyntax-18'/1]).
-export(['unabbreviatedSyntax-19'/1]).
-export(['unabbreviatedSyntax-20'/1]).
-export(['unabbreviatedSyntax-21'/1]).
-export(['unabbreviatedSyntax-22'/1]).
-export(['unabbreviatedSyntax-23'/1]).
-export(['unabbreviatedSyntax-26'/1]).
-export(['unabbreviatedSyntax-27'/1]).
-export(['unabbreviatedSyntax-28'/1]).
-export(['unabbreviatedSyntax-29'/1]).
-export(['unabbreviatedSyntax-30'/1]).
-export(['unabbreviatedSyntax-31'/1]).
-export(['unabbreviatedSyntax-32'/1]).
-export(['unabbreviatedSyntax-33'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'unabbreviatedSyntax-1',
   'unabbreviatedSyntax-2',
   'unabbreviatedSyntax-3',
   'unabbreviatedSyntax-4',
   'unabbreviatedSyntax-5',
   'unabbreviatedSyntax-8',
   'unabbreviatedSyntax-9',
   'unabbreviatedSyntax-12',
   'unabbreviatedSyntax-13',
   'unabbreviatedSyntax-14',
   'unabbreviatedSyntax-15',
   'unabbreviatedSyntax-16',
   'unabbreviatedSyntax-18',
   'unabbreviatedSyntax-19',
   'unabbreviatedSyntax-20',
   'unabbreviatedSyntax-21',
   'unabbreviatedSyntax-22',
   'unabbreviatedSyntax-23',
   'unabbreviatedSyntax-26',
   'unabbreviatedSyntax-27',
   'unabbreviatedSyntax-28',
   'unabbreviatedSyntax-29',
   'unabbreviatedSyntax-30',
   'unabbreviatedSyntax-31',
   'unabbreviatedSyntax-32',
   'unabbreviatedSyntax-33'].
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
'unabbreviatedSyntax-1'(_Config) ->
   Qry = "for $h in (/works/employee) return $h/child::empnum",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-2'(_Config) ->
   Qry = "for $h in (/works/employee[1]) return $h/child::*",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><pnum>P1</pnum><hours>40</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><pnum>P1</pnum><hours>40</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><pnum>P1</pnum><hours>40</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-3'(_Config) ->
   Qry = "for $h in (/works[1]/employee[2]) return $h/child::text()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Text data from Employee[2]
      ",
   case string:trim(xqerl_test:string_value(Res)) of
             "Text data from Employee[2]" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'unabbreviatedSyntax-4'(_Config) ->
   Qry = "for $h in (/works/employee[1]) return $h/child::node()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  "++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  " of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-5'(_Config) ->
   Qry = "for $h in (/works/employee[2]) return $h/child::node()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><pnum>P2</pnum><hours>70</hours><hours>20</hours>Text data from Employee[2]
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><pnum>P2</pnum><hours>70</hours><hours>20</hours>Text data from Employee[2]"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><pnum>P2</pnum><hours>70</hours><hours>20</hours>Text data from Employee[2]" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-8'(_Config) ->
   Qry = "for $h in (/works/employee[1]/hours) return $h/parent::node()",
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
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
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
'unabbreviatedSyntax-9'(_Config) ->
   Qry = "for $h in (/works/employee) return $h/descendant::empnum",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-12'(_Config) ->
   Qry = "for $h in (/works/employee[1]) return $h/descendant-or-self::employee",
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
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
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
'unabbreviatedSyntax-13'(_Config) ->
   Qry = "for $h in (/works/employee[1]) return $h/self::employee",
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
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
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
'unabbreviatedSyntax-14'(_Config) ->
   Qry = "for $h in (/works[1]/employee[1]) return fn:count(($h/self::employee[1000]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'unabbreviatedSyntax-15'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee/descendant::empnum",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-16'(_Config) ->
   Qry = "for $h in (/works) return $h/child::*/child::pnum",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-18'(_Config) ->
   Qry = "for $h in (/works) return $h/descendant::pnum",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-19'(_Config) ->
   Qry = "for $h in (/works) return $h/descendant::employee/child::pnum",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-20'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[fn:position() = 1]",
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
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
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
'unabbreviatedSyntax-21'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[fn:position() = fn:last()]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-22'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[fn:position() = fn:last()-1]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-23'(_Config) ->
   Qry = "for $h in (/works/employee) return $h/child::hours[fn:position() > 1]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>20</hours><hours>40</hours><hours>30</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>20</hours><hours>40</hours><hours>30</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>20</hours><hours>40</hours><hours>30</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-26'(_Config) ->
   Qry = "for $h in (/works) return $h/descendant::employee[fn:position() = 12]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-27'(_Config) ->
   Qry = "/child::works/child::employee[fn:position() = 5]/child::hours[fn:position() = 2]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>30</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>30</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>30</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-28'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[attribute::name eq \"Jane Doe 11\"]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-29'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[attribute::gender eq 'female'][fn:position() = 5]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-30'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[child::empnum = 'E3']",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-31'(_Config) ->
   Qry = "for $h in (/works) return $h/child::employee[child::status]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-32'(_Config) ->
   Qry = "for $h in (/works/employee[7]) return $h/child::*[self::pnum or self::empnum]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E2</empnum><pnum>P1</pnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E2</empnum><pnum>P1</pnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E2</empnum><pnum>P1</pnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'unabbreviatedSyntax-33'(_Config) ->
   Qry = "for $h in (/works/employee[6]) return $h/child::*[self::empnum or self::pnum][fn:position() = fn:last()]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <pnum>P6</pnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<pnum>P6</pnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<pnum>P6</pnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
