-module('prod_EmptyOrderDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['emptyorderdecl-1'/1]).
-export(['emptyorderdecl-2'/1]).
-export(['emptyorderdecl-3'/1]).
-export(['emptyorderdecl-4'/1]).
-export(['emptyorderdecl-5'/1]).
-export(['emptyorderdecl-6'/1]).
-export(['emptyorderdecl-7'/1]).
-export(['emptyorderdecl-8'/1]).
-export(['emptyorderdecl-9'/1]).
-export(['emptyorderdecl-10'/1]).
-export(['emptyorderdecl-11'/1]).
-export(['emptyorderdecl-12'/1]).
-export(['emptyorderdecl-13'/1]).
-export(['emptyorderdecl-14'/1]).
-export(['emptyorderdecl-15'/1]).
-export(['emptyorderdecl-16'/1]).
-export(['emptyorderdecl-17'/1]).
-export(['emptyorderdecl-18'/1]).
-export(['emptyorderdecl-19'/1]).
-export(['emptyorderdecl-20'/1]).
-export(['emptyorderdecl-21'/1]).
-export(['emptyorderdecl-22'/1]).
-export(['emptyorderdecl-23'/1]).
-export(['emptyorderdecl-24'/1]).
-export(['emptyorderdecl-25'/1]).
-export(['emptyorderdecl-26'/1]).
-export(['emptyorderdecl-27'/1]).
-export(['emptyorderdecl-28'/1]).
-export(['emptyorderdecl-29'/1]).
-export(['K-EmptyOrderProlog-1'/1]).
-export(['K-EmptyOrderProlog-2'/1]).
-export(['K-EmptyOrderProlog-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'emptyorderdecl-1',
   'emptyorderdecl-2',
   'emptyorderdecl-3',
   'emptyorderdecl-4',
   'emptyorderdecl-5',
   'emptyorderdecl-6',
   'emptyorderdecl-7',
   'emptyorderdecl-8',
   'emptyorderdecl-9',
   'emptyorderdecl-10',
   'emptyorderdecl-11',
   'emptyorderdecl-12',
   'emptyorderdecl-13',
   'emptyorderdecl-14',
   'emptyorderdecl-15',
   'emptyorderdecl-16',
   'emptyorderdecl-17',
   'emptyorderdecl-18',
   'emptyorderdecl-19',
   'emptyorderdecl-20',
   'emptyorderdecl-21',
   'emptyorderdecl-22',
   'emptyorderdecl-23',
   'emptyorderdecl-24',
   'emptyorderdecl-25',
   'emptyorderdecl-26',
   'emptyorderdecl-27',
   'emptyorderdecl-28',
   'emptyorderdecl-29',
   'K-EmptyOrderProlog-1',
   'K-EmptyOrderProlog-2',
   'K-EmptyOrderProlog-3'].
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
'emptyorderdecl-1'(_Config) ->
   Qry = "declare default order empty least; declare default order empty greatest;  \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0069" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0069'}) end.
'emptyorderdecl-2'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>1</a><a>4</a><a>7</a><a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>1</a><a>4</a><a>7</a><a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>1</a><a>4</a><a>7</a><a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-3'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>1</a><a>4</a><a>7</a><a/><a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>1</a><a>4</a><a>7</a><a/><a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>1</a><a>4</a><a>7</a><a/><a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-4'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4 7 NaN
      ",
   case xqerl_types:string_value(Res) of
             "1 4 7 NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-5'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4 7 NaN NaN
      ",
   case xqerl_types:string_value(Res) of
             "1 4 7 NaN NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-6'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>1</a><a>4</a><a/><a>7</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>1</a><a>4</a><a/><a>7</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>1</a><a>4</a><a/><a>7</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-7'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>1</a><a>4</a><a/><a>7</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>1</a><a>4</a><a/><a>7</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>1</a><a>4</a><a/><a>7</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-8'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,7) return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4 NaN 7
      ",
   case xqerl_types:string_value(Res) of
             "1 4 NaN 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-9'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,7) return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4 NaN 7
      ",
   case xqerl_types:string_value(Res) of
             "1 4 NaN 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-10'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><a>7</a><a>4</a><a>1</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><a>7</a><a>4</a><a>1</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><a>7</a><a>4</a><a>1</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-11'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><a/><a>7</a><a>4</a><a>1</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><a/><a>7</a><a>4</a><a>1</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><a/><a>7</a><a>4</a><a>1</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-12'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN 7 4 1
      ",
   case xqerl_types:string_value(Res) of
             "NaN 7 4 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-13'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN NaN 7 4 1
      ",
   case xqerl_types:string_value(Res) of
             "NaN NaN 7 4 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-14'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><a>1</a><a>4</a><a>7</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><a>1</a><a>4</a><a>7</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><a>1</a><a>4</a><a>7</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-15'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><a/><a>1</a><a>4</a><a>7</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><a/><a>1</a><a>4</a><a>7</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><a/><a>1</a><a>4</a><a>7</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-16'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN 1 4 7
      ",
   case xqerl_types:string_value(Res) of
             "NaN 1 4 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-17'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i ascending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN NaN 1 4 7
      ",
   case xqerl_types:string_value(Res) of
             "NaN NaN 1 4 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-18'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>7</a><a>4</a><a>1</a><a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>7</a><a>4</a><a>1</a><a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>7</a><a>4</a><a>1</a><a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-19'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>7</a><a>4</a><a>1</a><a/><a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>7</a><a>4</a><a>1</a><a/><a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>7</a><a>4</a><a>1</a><a/><a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-20'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         7 4 1 NaN
      ",
   case xqerl_types:string_value(Res) of
             "7 4 1 NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-21'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,0 div 0E0,0 div 0E0,7) order by $i descending return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         7 4 1 NaN NaN
      ",
   case xqerl_types:string_value(Res) of
             "7 4 1 NaN NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-22'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending empty least return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><a>1</a><a>4</a><a>7</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><a>1</a><a>4</a><a>7</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><a>1</a><a>4</a><a>7</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-23'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty least return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN 1 3 4 7
      ",
   case xqerl_types:string_value(Res) of
             "NaN 1 3 4 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-24'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by zero-or-one($i/text()) ascending empty greatest return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>1</a><a>4</a><a>7</a><a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>1</a><a>4</a><a>7</a><a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>1</a><a>4</a><a>7</a><a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-25'(_Config) ->
   Qry = "declare default order empty greatest;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty greatest return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 3 4 7 NaN
      ",
   case xqerl_types:string_value(Res) of
             "1 3 4 7 NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-26'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by $i/text() ascending empty greatest return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>1</a><a>4</a><a>7</a><a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>1</a><a>4</a><a>7</a><a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>1</a><a>4</a><a>7</a><a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-27'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty greatest return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 3 4 7 NaN
      ",
   case xqerl_types:string_value(Res) of
             "1 3 4 7 NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'emptyorderdecl-28'(_Config) ->
   Qry = "declare default order empty least;  for $i in (<a>1</a>,<a>4</a>,<a></a>,<a>7</a>) order by $i/text() ascending empty least return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><a>1</a><a>4</a><a>7</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><a>1</a><a>4</a><a>7</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><a>1</a><a>4</a><a>7</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'emptyorderdecl-29'(_Config) ->
   Qry = "declare default order empty least;  for $i in (1,4,3,0 div 0E0,7) order by $i ascending empty least return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN 1 3 4 7
      ",
   case xqerl_types:string_value(Res) of
             "NaN 1 3 4 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-EmptyOrderProlog-1'(_Config) ->
   Qry = "declare(::)default order empty(::)greatest; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EmptyOrderProlog-2'(_Config) ->
   Qry = "declare(::)default order empty(::)least; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-EmptyOrderProlog-3'(_Config) ->
   Qry = "declare(::)default order empty(::)greatest; declare(::)default order empty(::)least; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0069" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0069'}) end.
