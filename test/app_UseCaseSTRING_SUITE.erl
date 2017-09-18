-module('app_UseCaseSTRING_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['string-queries-results-q1'/1]).
-export(['string-queries-results-q2'/1]).
-export(['string-queries-results-q4'/1]).
-export(['string-queries-results-q5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'string-queries-results-q1',
   'string-queries-results-q2',
   'string-queries-results-q4',
   'string-queries-results-q5'].
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
environment('string') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/string.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('string-and-company-data') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/string.xml","$string",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/company-data.xml","$company-data",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'string-queries-results-q1'(_Config) ->
   Qry = "//news_item/title[contains(., \"Foobar Corporation\")]",
   Env = xqerl_test:handle_environment(environment('string')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>Foobar Corporation releases its new line of Foo products\n   today</title><title>Foobar Corporation is suing Gorilla Corporation for\n   patent infringement </title>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'string-queries-results-q2'(_Config) ->
   Qry = "\n        declare variable $input-context1 := $string;\n        declare variable $input-context2 := $company-data;\n\n        declare function local:partners($company as xs:string) as element()*\n        {\n            let $c := $input-context2//company[name = $company]\n            return $c//partner\n        };\n\n        let $foobar_partners := local:partners(\"Foobar Corporation\")\n\n        for $item in $input-context1//news_item\n        where\n          some $t in $item//title satisfies\n            (contains(exactly-one($t/text()), \"Foobar Corporation\")\n            and (some $partner in $foobar_partners satisfies\n              contains(exactly-one($t/text()), $partner/text())))\n          or (some $par in $item//par satisfies\n           (contains(string($par), \"Foobar Corporation\")\n             and (some $partner in $foobar_partners satisfies\n                contains(string($par), $partner/text()))))\n        return\n            <news_item>\n                { $item/title }\n                { $item/date }\n            </news_item>\n      ",
   Env = xqerl_test:handle_environment(environment('string-and-company-data')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<news_item><title> Gorilla Corporation acquires YouNameItWeIntegrateIt.com </title><date>1-20-2000</date></news_item><news_item><title>Foobar Corporation releases its new line of Foo products\n   today</title><date>1-20-2000</date></news_item><news_item><title>Foobar Corporation is suing Gorilla Corporation for\n   patent infringement </title><date>1-20-2000</date></news_item>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'string-queries-results-q4'(_Config) ->
   Qry = "\n        declare function local:partners($c as xs:string) as element()* { \n            let $c := $company-data//company[name = $c] \n            return $c//partner \n        }; \n        for $item in $string//news_item, \n            $c in $company-data//company \n        let $partners := local:partners(exactly-one($c/name)) \n        where contains(string($item), $c/name) \n          and (some $p in $partners satisfies contains(string($item), $p) and $item/news_agent != $c/name) \n        return $item",
   Env = xqerl_test:handle_environment(environment('string-and-company-data')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<news_item>\n   <title> Gorilla Corporation acquires YouNameItWeIntegrateIt.com </title>\n   <content>\n      <par> Today, Gorilla Corporation announced that it will purchase\n          YouNameItWeIntegrateIt.com. The shares of\n          YouNameItWeIntegrateIt.com dropped $3.00 as a result of this\n          announcement.\n      </par>\n\n      <par> As a result of this acquisition, the CEO of\n          YouNameItWeIntegrateIt.com Bill Smarts resigned. He did not\n          announce what he will do next.  Sources close to\n          YouNameItWeIntegrateIt.com hint that Bill Smarts might be\n          taking a position in Foobar Corporation.\n      </par>\n\n      <par>YouNameItWeIntegrateIt.com is a leading systems integrator\n          that enables <quote>brick and mortar</quote> companies to\n          have a presence on the web.\n      </par>\n\n   </content>\n   <date>1-20-2000</date>\n   <author>Mark Davis</author>\n   <news_agent>News Online</news_agent>\n</news_item><news_item> <title>Foobar Corporation is suing Gorilla Corporation for\n   patent infringement </title>\n   <content>\n      <par> In surprising developments today, Foobar Corporation\n         announced that it is suing Gorilla Corporation for patent\n         infringement. The patents that were mentioned as part of the\n         lawsuit are considered to be the basis of Foobar\n         Corporation's <quote>Wireless Foo</quote> line of products.\n      </par>\n      <par>The tension between Foobar and Gorilla Corporations has\n         been increasing ever since the Gorilla Corporation acquired\n         more than 40 engineers who have left Foobar Corporation,\n         TheAppCompany Inc. and YouNameItWeIntegrateIt.com over the\n         past 3 months. The engineers who have left the Foobar\n         corporation and its partners were rumored to be working on\n         the next generation of server products and applications which\n         will directly compete with Foobar's Foo 20.9 servers. Most of\n         the engineers have relocated to Hawaii where the Gorilla\n         Corporation's server development is located.\n      </par>\n   </content>\n   <date>1-20-2000</date>\n   <news_agent>Reliable News Corporation</news_agent>\n</news_item>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'string-queries-results-q5'(_Config) ->
   Qry = "\n        for $item in //news_item \n        where contains(string(exactly-one($item/content)), \"Gorilla Corporation\") \n        return <item_summary> { concat($item/title,\". \") } \n                              { concat($item/date,\". \") } \n                              { string(($item//par)[1]) } \n               </item_summary>\n      ",
   Env = xqerl_test:handle_environment(environment('string')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<item_summary> Gorilla Corporation acquires YouNameItWeIntegrateIt.com . 1-20-2000.  Today, Gorilla Corporation announced that it will purchase\n          YouNameItWeIntegrateIt.com. The shares of\n          YouNameItWeIntegrateIt.com dropped $3.00 as a result of this\n          announcement.\n      </item_summary><item_summary>Foobar Corporation is suing Gorilla Corporation for\n   patent infringement . 1-20-2000.  In surprising developments today, Foobar Corporation\n         announced that it is suing Gorilla Corporation for patent\n         infringement. The patents that were mentioned as part of the\n         lawsuit are considered to be the basis of Foobar\n         Corporation's Wireless Foo line of products.\n      </item_summary>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
