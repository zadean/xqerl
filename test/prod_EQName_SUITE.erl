-module('prod_EQName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['eqname-001'/1]).
-export(['eqname-002'/1]).
-export(['eqname-003'/1]).
-export(['eqname-004'/1]).
-export(['eqname-005'/1]).
-export(['eqname-006'/1]).
-export(['eqname-007'/1]).
-export(['eqname-008'/1]).
-export(['eqname-009'/1]).
-export(['eqname-010'/1]).
-export(['eqname-011'/1]).
-export(['eqname-012'/1]).
-export(['eqname-013'/1]).
-export(['eqname-014'/1]).
-export(['eqname-015'/1]).
-export(['eqname-016'/1]).
-export(['eqname-017'/1]).
-export(['eqname-018'/1]).
-export(['eqname-019'/1]).
-export(['eqname-901'/1]).
-export(['eqname-902'/1]).
-export(['eqname-903'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'eqname-001',
   'eqname-002',
   'eqname-003',
   'eqname-004',
   'eqname-005',
   'eqname-006',
   'eqname-007',
   'eqname-008',
   'eqname-009',
   'eqname-010',
   'eqname-011',
   'eqname-012',
   'eqname-013',
   'eqname-014',
   'eqname-015',
   'eqname-016',
   'eqname-017',
   'eqname-018',
   'eqname-019',
   'eqname-901',
   'eqname-902',
   'eqname-903'].
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
'eqname-001'(_Config) ->
   Qry = "<out>{ (<my:a xmlns:my=\"http://www.example.com/ns/my\"><my:b>42</my:b></my:a>) / Q{http://www.example.com/ns/my}b }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out><my:b xmlns:my=\"http://www.example.com/ns/my\">42</my:b></out>
       ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><my:b xmlns:my=\"http://www.example.com/ns/my\">42</my:b></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><my:b xmlns:my=\"http://www.example.com/ns/my\">42</my:b></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-002'(_Config) ->
   Qry = "
            declare variable $Q{http://www.example.com/ns/my}var := 12; 
            <out>{$Q{http://www.example.com/ns/my}var}</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out>12</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>12</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>12</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-003'(_Config) ->
   Qry = "
        declare function Q{http://www.example.com/ns/my}fn ($a as xs:integer) as xs:integer { $a + 2 }; 
        <out>{Q{http://www.example.com/ns/my}fn(12)}</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out>14</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>14</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>14</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-004'(_Config) ->
   Qry = "declare function local:fn ($a as Q{http://www.w3.org/2001/XMLSchema}integer) as element(Q{http://www.example.com/ns/my}e) { <e xmlns=\"http://www.example.com/ns/my\">{$a}</e> }; <out>{local:fn(12)}</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out><e xmlns=\"http://www.example.com/ns/my\">12</e></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><e xmlns=\"http://www.example.com/ns/my\">12</e></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><e xmlns=\"http://www.example.com/ns/my\">12</e></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-005'(_Config) ->
   Qry = "declare option Q{http://www.example.com/ns}option \"ignore me\"; <a/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-006'(_Config) ->
   Qry = "(# Q{http://www.example.com/ns}pragma ignore me #) {<a/>}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-007'(_Config) ->
   Qry = "
        declare decimal-format Q{http://www.example.com/ns}format grouping-separator=\"'\"; 
        <a xmlns:ex=\"http://www.example.com/ns\">{format-number(1e9, \"#'###'###'##0.00\", 'ex:format')}</a>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a xmlns:ex=\"http://www.example.com/ns\">1'000'000'000.00</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns:ex=\"http://www.example.com/ns\">1'000'000'000.00</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns:ex=\"http://www.example.com/ns\">1'000'000'000.00</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-008'(_Config) ->
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns\"><ex:b>93.7</ex:b></a>) /Q{http://www&#x2e;example&#x2E;com/ns}b }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out><ex:b xmlns:ex=\"http://www.example.com/ns\">93.7</ex:b></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><ex:b xmlns:ex=\"http://www.example.com/ns\">93.7</ex:b></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><ex:b xmlns:ex=\"http://www.example.com/ns\">93.7</ex:b></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-009'(_Config) ->
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ ns\"><ex:b>93.7</ex:b></a>) /Q{ http://www.example.com/ ns }b/namespace-uri() }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out>http://www.example.com/ ns</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>http://www.example.com/ ns</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>http://www.example.com/ ns</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-010'(_Config) ->
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}b }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-011'(_Config) ->
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}b }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-012'(_Config) ->
   Qry = "<out>{ (<my:a xmlns:my=\"http://www.example.com/ns/my\"><my:b>42</my:b></my:a>) / Q{http://www.example.com/ns/my}* + 5 }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out>47</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>47</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>47</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-013'(_Config) ->
   Qry = "<out xmlns=\"http://www.example.com/one\">{ (<my:a xmlns:my=\"http://www.example.com/ns/my\"><my:b>42</my:b><b xmlns=\"\">93</b></my:a>) / Q{}* + 5 }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <out xmlns=\"http://www.example.com/one\">98</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out xmlns=\"http://www.example.com/one\">98</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out xmlns=\"http://www.example.com/one\">98</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'eqname-014'(_Config) ->
   Qry = "string((//Q{http://www.example.com/AuctionWatch}Start)[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3.00
      ",
   case xqerl_types:string_value(Res) of
             "3.00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'eqname-015'(_Config) ->
   Qry = "for $Q{http://example.com/ns}x in 1 to 10 return $Q{http://example.com/ns}x + 1",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 3 4 5 6 7 8 9 10 11
      ",
   case xqerl_types:string_value(Res) of
             "2 3 4 5 6 7 8 9 10 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'eqname-016'(_Config) ->
   Qry = "string-join(<a foo=\"3\" bar=\"5\" xml:space=\"preserve\"/> / @Q{}*, '.')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           \"3.5\"
           \"5.3\"
           
      ",
 case ( begin Tst1 = xqerl:run("\"3.5\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("\"5.3\""),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'eqname-017'(_Config) ->
   Qry = "string-join(<a foo=\"3\" bar=\"5\" xml:space=\"preserve\"/> / @Q{http://www.w3.org/XML/1998/namespace}*, '.')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"preserve\"
      ",
 Tst = xqerl:run("\"preserve\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'eqname-018'(_Config) ->
   {skip,"XP30+"}.
'eqname-019'(_Config) ->
   Qry = "(<?alpha?>, <?beta?>, <?gamma?>)/processing-instruction(Q{}alpha)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'eqname-901'(_Config) ->
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}:b }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'eqname-902'(_Config) ->
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}}b }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'eqname-903'(_Config) ->
   Qry = "<out>{ <Q{http://www.example.com/ns}/> }</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
