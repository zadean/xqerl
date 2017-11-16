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
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('string') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/string.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseSTRING.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('string-and-company-data') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/string.xml","$string",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/company-data.xml","$company-data",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseSTRING.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'string-queries-results-q1'(_Config) ->
   Qry = "//news_item/title[contains(., \"Foobar Corporation\")]",
   {Env,Opts} = xqerl_test:handle_environment(environment('string')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<title>Foobar Corporation releases its new line of Foo products
   today</title><title>Foobar Corporation is suing Gorilla Corporation for
   patent infringement </title>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'string-queries-results-q2'(_Config) ->
   Qry = "
        declare variable $input-context1 := $string;
        declare variable $input-context2 := $company-data;

        declare function local:partners($company as xs:string) as element()*
        {
            let $c := $input-context2//company[name = $company]
            return $c//partner
        };

        let $foobar_partners := local:partners(\"Foobar Corporation\")

        for $item in $input-context1//news_item
        where
          some $t in $item//title satisfies
            (contains(exactly-one($t/text()), \"Foobar Corporation\")
            and (some $partner in $foobar_partners satisfies
              contains(exactly-one($t/text()), $partner/text())))
          or (some $par in $item//par satisfies
           (contains(string($par), \"Foobar Corporation\")
             and (some $partner in $foobar_partners satisfies
                contains(string($par), $partner/text()))))
        return
            <news_item>
                { $item/title }
                { $item/date }
            </news_item>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('string-and-company-data')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<news_item><title> Gorilla Corporation acquires YouNameItWeIntegrateIt.com </title><date>1-20-2000</date></news_item><news_item><title>Foobar Corporation releases its new line of Foo products
   today</title><date>1-20-2000</date></news_item><news_item><title>Foobar Corporation is suing Gorilla Corporation for
   patent infringement </title><date>1-20-2000</date></news_item>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'string-queries-results-q4'(_Config) ->
   Qry = "
        declare function local:partners($c as xs:string) as element()* { 
            let $c := $company-data//company[name = $c] 
            return $c//partner 
        }; 
        for $item in $string//news_item, 
            $c in $company-data//company 
        let $partners := local:partners(exactly-one($c/name)) 
        where contains(string($item), $c/name) 
          and (some $p in $partners satisfies contains(string($item), $p) and $item/news_agent != $c/name) 
        return $item",
   {Env,Opts} = xqerl_test:handle_environment(environment('string-and-company-data')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<news_item>
   <title> Gorilla Corporation acquires YouNameItWeIntegrateIt.com </title>
   <content>
      <par> Today, Gorilla Corporation announced that it will purchase
          YouNameItWeIntegrateIt.com. The shares of
          YouNameItWeIntegrateIt.com dropped $3.00 as a result of this
          announcement.
      </par>

      <par> As a result of this acquisition, the CEO of
          YouNameItWeIntegrateIt.com Bill Smarts resigned. He did not
          announce what he will do next.  Sources close to
          YouNameItWeIntegrateIt.com hint that Bill Smarts might be
          taking a position in Foobar Corporation.
      </par>

      <par>YouNameItWeIntegrateIt.com is a leading systems integrator
          that enables <quote>brick and mortar</quote> companies to
          have a presence on the web.
      </par>

   </content>
   <date>1-20-2000</date>
   <author>Mark Davis</author>
   <news_agent>News Online</news_agent>
</news_item><news_item> <title>Foobar Corporation is suing Gorilla Corporation for
   patent infringement </title>
   <content>
      <par> In surprising developments today, Foobar Corporation
         announced that it is suing Gorilla Corporation for patent
         infringement. The patents that were mentioned as part of the
         lawsuit are considered to be the basis of Foobar
         Corporation's <quote>Wireless Foo</quote> line of products.
      </par>
      <par>The tension between Foobar and Gorilla Corporations has
         been increasing ever since the Gorilla Corporation acquired
         more than 40 engineers who have left Foobar Corporation,
         TheAppCompany Inc. and YouNameItWeIntegrateIt.com over the
         past 3 months. The engineers who have left the Foobar
         corporation and its partners were rumored to be working on
         the next generation of server products and applications which
         will directly compete with Foobar's Foo 20.9 servers. Most of
         the engineers have relocated to Hawaii where the Gorilla
         Corporation's server development is located.
      </par>
   </content>
   <date>1-20-2000</date>
   <news_agent>Reliable News Corporation</news_agent>
</news_item>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'string-queries-results-q5'(_Config) ->
   Qry = "
        for $item in //news_item 
        where contains(string(exactly-one($item/content)), \"Gorilla Corporation\") 
        return <item_summary> { concat($item/title,\". \") } 
                              { concat($item/date,\". \") } 
                              { string(($item//par)[1]) } 
               </item_summary>
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('string')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<item_summary> Gorilla Corporation acquires YouNameItWeIntegrateIt.com . 1-20-2000.  Today, Gorilla Corporation announced that it will purchase
          YouNameItWeIntegrateIt.com. The shares of
          YouNameItWeIntegrateIt.com dropped $3.00 as a result of this
          announcement.
      </item_summary><item_summary>Foobar Corporation is suing Gorilla Corporation for
   patent infringement . 1-20-2000.  In surprising developments today, Foobar Corporation
         announced that it is suing Gorilla Corporation for patent
         infringement. The patents that were mentioned as part of the
         lawsuit are considered to be the basis of Foobar
         Corporation's Wireless Foo line of products.
      </item_summary>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
