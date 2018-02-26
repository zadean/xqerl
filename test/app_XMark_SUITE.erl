-module('app_XMark_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['XMark-Q1'/1]).
-export(['XMark-Q2'/1]).
-export(['XMark-Q3'/1]).
-export(['XMark-Q4'/1]).
-export(['XMark-Q5'/1]).
-export(['XMark-Q6'/1]).
-export(['XMark-Q7'/1]).
-export(['XMark-Q8'/1]).
-export(['XMark-Q9'/1]).
-export(['XMark-Q10'/1]).
-export(['XMark-Q11'/1]).
-export(['XMark-Q12'/1]).
-export(['XMark-Q13'/1]).
-export(['XMark-Q14'/1]).
-export(['XMark-Q15'/1]).
-export(['XMark-Q16'/1]).
-export(['XMark-Q17'/1]).
-export(['XMark-Q18'/1]).
-export(['XMark-Q19'/1]).
-export(['XMark-Q20'/1]).
-export(['XMark-All'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "app")

,[{base_dir, BaseDir}|Config].
all() -> [
   'XMark-Q1',
   'XMark-Q2',
   'XMark-Q3',
   'XMark-Q4',
   'XMark-Q5',
   'XMark-Q6',
   'XMark-Q7',
   'XMark-Q8',
   'XMark-Q9',
   'XMark-Q10',
   'XMark-Q11',
   'XMark-Q12',
   'XMark-Q13',
   'XMark-Q14',
   'XMark-Q15',
   'XMark-Q16',
   'XMark-Q17',
   'XMark-Q18',
   'XMark-Q19',
   'XMark-Q20',
   'XMark-All'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('XMarkAuction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "XMark/XMarkAuction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'XMark-Q1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        <XMark-result-Q1> { 
            let $auction := (/)
            return for $b in $auction/site/people/person[@id = \"person0\"] 
            return $b/name/text() } </XMark-result-Q1>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMark-result-Q1>Seongtaek Mattern</XMark-result-Q1>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        <XMark-result-Q2> { 
            let $auction := (/) 
            return for $b in $auction/site/open_auctions/open_auction 
            return <increase>{$b/bidder[1]/increase/text()}</increase> } </XMark-result-Q2>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q2.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: Return the IDs of all open auctions whose current increase is at least twice as high as the initial increase. :) 
        <XMark-result-Q3> { 
            let $auction := (/) 
            return for $b in $auction/site/open_auctions/open_auction 
            where zero-or-one($b/bidder[1]/increase/text()) * 2.0 <= $b/bidder[last()]/increase/text() 
                return <increase first=\"{$b/bidder[1]/increase/text()}\" last=\"{$b/bidder[last()]/increase/text()}\"/> } 
        </XMark-result-Q3>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q3.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: List the reserves of those open auctions where a certain person issued a bid before another person. :) 
        <XMark-result-Q4> { 
            let $auction := (/) return 
            for $b in $auction/site/open_auctions/open_auction 
            where some $pr1 in $b/bidder/personref[@person = \"person20\"], $pr2 in $b/bidder/personref[@person = \"person51\"] satisfies $pr1 << $pr2 
            return <history>{$b/reserve/text()}</history> } 
        </XMark-result-Q4>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMark-result-Q4/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        <XMark-result-Q5> { 
          let $auction := (/) return count(
            for $i in $auction/site/closed_auctions/closed_auction 
            where $i/price/text() >= 40.0 return $i/price) } 
        </XMark-result-Q5>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMark-result-Q5>200</XMark-result-Q5>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        <XMark-result-Q6> { 
            let $auction := (/) return for $b in $auction//site/regions return count($b//item) } 
        </XMark-result-Q6>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMark-result-Q6>647</XMark-result-Q6>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<XMark-result-Q7> { let $auction := (/) return for $p in $auction/site return count($p//description) + count($p//annotation) + count($p//emailaddress) } </XMark-result-Q7>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<XMark-result-Q7>2734</XMark-result-Q7>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: List the names of persons and the number of items they bought. (joins person, closed\\_auction). :) 
         <XMark-result-Q8> { let $auction := (/) return 
         for $p in $auction/site/people/person 
         let $a := for $t in $auction/site/closed_auctions/closed_auction 
         where $t/buyer/@person = $p/@id return $t 
         return <item person=\"{$p/name/text()}\">{count($a)}</item> } </XMark-result-Q8>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q8.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: List the names of persons and the names of the items 
         they bought in Europe(joins person, closed auction, item). :) 
         <XMark-result-Q9> { 
            let $auction := (/) 
            return let $ca := $auction/site/closed_auctions/closed_auction 
            return let $ei := $auction/site/regions/europe/item 
            for $p in $auction/site/people/person 
            let $a := for $t in $ca where $p/@id = $t/buyer/@person 
            return let $n := for $t2 in $ei where $t/itemref/@item = $t2/@id 
            return $t2 return <item>{$n/name/text()}</item> 
            return <person name=\"{$p/name/text()}\">{$a}</person> } </XMark-result-Q9>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q9.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: List all persons according to their interest; use French markup in the result. :) 
         <XMark-result-Q10> { let $auction := (/) 
            return for $i in distinct-values($auction/site/people/person/profile/interest/@category) 
            let $p := for $t in $auction/site/people/person where $t/profile/interest/@category = $i 
            return <personne> 
                     <statistiques> 
                        <sexe>{$t/profile/gender/text()}</sexe> 
                        <age>{$t/profile/age/text()}</age> 
                        <education>{$t/profile/education/text()}</education> 
                        <revenu>{fn:data($t/profile/@income)}</revenu> 
                     </statistiques> 
                     <coordonnees> 
                        <nom>{$t/name/text()}</nom> 
                        <rue>{$t/address/street/text()}</rue> 
                        <ville>{$t/address/city/text()}</ville> 
                        <pays>{$t/address/country/text()}</pays> 
                        <reseau> 
                           <courrier>{$t/emailaddress/text()}</courrier> 
                           <pagePerso>{$t/homepage/text()}</pagePerso> 
                        </reseau> 
                     </coordonnees> 
                     <cartePaiement>{$t/creditcard/text()}</cartePaiement> 
                   </personne> 
            return <categorie>{<id>{$i}</id>, $p}</categorie> } </XMark-result-Q10>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q10.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpoose: For each person, list the number of items currently on sale 
         whose price does not exceed 0.02% of the person's income. :) 
         <XMark-result-Q11> { 
            let $auction := (/) return 
            for $p in $auction/site/people/person 
            let $l := for $i in $auction/site/open_auctions/open_auction/initial 
            where $p/profile/@income > 5000 * exactly-one($i/text()) 
            return $i return <items name=\"{$p/name/text()}\">{count($l)}</items> } </XMark-result-Q11>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q11.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: For each richer-than-average person, list the 
         number of items currently on sale whose price does not exceed 0.02% of the person's income. :) 
         <XMark-result-Q12> { 
            let $auction := (/) return 
            for $p in $auction/site/people/person 
            let $l := for $i in $auction/site/open_auctions/open_auction/initial 
            where $p/profile/@income > 5000.0 * exactly-one($i/text()) 
            return $i where $p/profile/@income > 50000.0 
            return <items person=\"{$p/profile/@income}\">{count($l)}</items> } </XMark-result-Q12>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q12.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: List the names of items registered in Australia along with their descriptions. :) 
         <XMark-result-Q13> { 
            let $auction := (/) return 
            for $i in $auction/site/regions/australia/item 
            return <item name=\"{$i/name/text()}\">{$i/description}</item> } </XMark-result-Q13>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q13.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: Return the names of all items whose description contains the word `gold'. :) 
         <XMark-result-Q14> { 
            let $auction := (/) return 
            for $i in $auction/site//item 
            where contains(string(exactly-one($i/description)), \"gold\") 
            return $i/name/text() } </XMark-result-Q14>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q14.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<XMark-result-Q15> { 
            let $auction := (/) return 
            for $a in $auction/site/closed_auctions/closed_auction/annotation/description/parlist/ 
               listitem/ parlist/ listitem/ text/ emph/ keyword/ text() 
            return <text>{$a}</text> } </XMark-result-Q15>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q15.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: Return the IDs of those auctions that have one or more keywords in emphasis. (cf. Q15) :) 
         <XMark-result-Q16> { 
            let $auction := (/) return 
            for $a in $auction/site/closed_auctions/closed_auction 
            where not( empty( $a/annotation/description/parlist/listitem/parlist/listitem/text/emph/ keyword/ text() ) ) 
            return <person id=\"{$a/seller/@person}\"/> } </XMark-result-Q16>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q16.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<XMark-result-Q17> { 
            let $auction := (/) 
            return for $p in $auction/site/people/person 
            where empty($p/homepage/text()) 
            return <person name=\"{$p/name/text()}\"/> } </XMark-result-Q17>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q17.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: Convert the currency of the reserve of all open auctions to another currency. :) 
         declare namespace local = \"http://www.example.com/\"; 
         declare function local:convert($v as xs:decimal?) as xs:decimal? { 2.20371 * $v }; 
         <XMark-result-Q18> { 
            let $auction := (/) return 
            for $i in $auction/site/open_auctions/open_auction 
            return local:convert(zero-or-one($i/reserve)) } </XMark-result-Q18>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q18.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Purpose: Give an alphabetically ordered list of all items along with their location. :) 
         <XMark-result-Q19> { 
            let $auction := (/) return 
            for $b in $auction/site/regions//item 
            let $k := $b/name/text() stable order by zero-or-one($b/location) ascending empty greatest 
            return <item name=\"{$k}\">{$b/location/text()}</item> } </XMark-result-Q19>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q19.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-Q20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<XMark-result-Q20> { 
            let $auction := (/) return 
               <result> 
                  <preferred> {count($auction/site/people/person/profile[@income >= 100000.0])} </preferred>
                  <standard> { count( $auction/site/people/person/ profile[@income < 100000.0 and @income >= 30000.0] ) } </standard>
                  <challenge> {count($auction/site/people/person/profile[@income < 30000.0])} </challenge>
                  <na> { count( for $p in $auction/site/people/person where empty($p/profile/@income) return $p ) } </na>
               </result> } </XMark-result-Q20>",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-Q20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-Q20.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XMark-All'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(: Written By: Frans Englich(maintainer, not original author) :)
(: Purpose: Return the name of the person with ID `person0'. :)
(: Date: 2007-03-09 :)

declare namespace local = \"http://www.example.com/\";


declare function local:convert($v as xs:decimal?) as xs:decimal?
{
  2.20371 * $v (: convert Dfl to Euro :)
};

<XMark-result-All>

  <XMark-result-Q1>
    {
      let $auction := (/) return
      for $b in $auction/site/people/person[@id = \"person0\"] return $b/name/text()
    }
  </XMark-result-Q1>

  <XMark-result-Q2>
    {
      let $auction := (/) return
      for $b in $auction/site/open_auctions/open_auction
      return <increase>{$b/bidder[1]/increase/text()}</increase>
    }
  </XMark-result-Q2>
  
  <XMark-result-Q3>
    {
      let $auction := (/) return
      for $b in $auction/site/open_auctions/open_auction
      where zero-or-one($b/bidder[1]/increase/text()) * 2.0 <= $b/bidder[last()]/increase/text()
      return <increase first=\"{$b/bidder[1]/increase/text()}\"
                       last=\"{$b/bidder[last()]/increase/text()}\"/>
    }
  </XMark-result-Q3>
  
  <XMark-result-Q4>
    {
      let $auction := (/) return
      for $b in $auction/site/open_auctions/open_auction
      where
        some $pr1 in $b/bidder/personref[@person = \"person20\"],
             $pr2 in $b/bidder/personref[@person = \"person51\"]
        satisfies $pr1 << $pr2
      return <history>{$b/reserve/text()}</history>
    }
  </XMark-result-Q4>
  
  <XMark-result-Q5>
    {
      let $auction := (/) return
      count(for $i in $auction/site/closed_auctions/closed_auction
            where $i/price/text() >= 40.0
            return $i/price)
    }
  </XMark-result-Q5>
  
  <XMark-result-Q6>
    {
      let $auction := (/) return
      for $b in $auction//site/regions return count($b//item)
    }
  </XMark-result-Q6>
  
  <XMark-result-Q7>
    {
      let $auction := (/) return
      for $p in $auction/site
      return count($p//description) + count($p//annotation) + count($p//emailaddress)
    }
  </XMark-result-Q7>
  
  <XMark-result-Q8>
    {
      let $auction := (/) return
      for $p in $auction/site/people/person
      let $a := for $t in $auction/site/closed_auctions/closed_auction
                where $t/buyer/@person = $p/@id
                return $t
      return <item person=\"{$p/name/text()}\">{count($a)}</item>
    }
  </XMark-result-Q8>
  
  <XMark-result-Q9>
    {
      let $auction := (/) return
      let $ca := $auction/site/closed_auctions/closed_auction return
      let $ei := $auction/site/regions/europe/item
      for $p in $auction/site/people/person
        let $a := for $t in $ca
                  where $p/@id = $t/buyer/@person
                  return let $n := for $t2 in $ei where $t/itemref/@item = $t2/@id return $t2
                         return <item>{$n/name/text()}</item>
      return <person name=\"{$p/name/text()}\">{$a}</person>
    }
  </XMark-result-Q9>
  
  <XMark-result-Q10>
    {
    let $auction := (/)
    return
      for $i in
        distinct-values($auction/site/people/person/profile/interest/@category)
      let $p :=
        for $t in $auction/site/people/person
        where $t/profile/interest/@category = $i
        return
          <personne>
            <statistiques>
              <sexe>{$t/profile/gender/text()}</sexe>
              <age>{$t/profile/age/text()}</age>
              <education>{$t/profile/education/text()}</education>
              <revenu>{fn:data($t/profile/@income)}</revenu>
            </statistiques>
            <coordonnees>
              <nom>{$t/name/text()}</nom>
              <rue>{$t/address/street/text()}</rue>
              <ville>{$t/address/city/text()}</ville>
              <pays>{$t/address/country/text()}</pays>
              <reseau>
                <courrier>{$t/emailaddress/text()}</courrier>
                <pagePerso>{$t/homepage/text()}</pagePerso>
              </reseau>
            </coordonnees>
            <cartePaiement>{$t/creditcard/text()}</cartePaiement>
          </personne>
      return <categorie>{<id>{$i}</id>, $p}</categorie>
    }
  </XMark-result-Q10>
  
  <XMark-result-Q11>
    {
      let $auction := (/) return
      for $p in $auction/site/people/person
      let $l := for $i in $auction/site/open_auctions/open_auction/initial
                where $p/profile/@income > 5000 * exactly-one($i/text())
                return $i
      return <items name=\"{$p/name/text()}\">{count($l)}</items>
    }
  </XMark-result-Q11>
  
  <XMark-result-Q12>
    {
      let $auction := (/) return
      for $p in $auction/site/people/person
      let $l :=
        for $i in $auction/site/open_auctions/open_auction/initial
        where $p/profile/@income > 5000.0 * exactly-one($i/text())
        return $i
      where $p/profile/@income > 50000.0
      return <items person=\"{$p/profile/@income}\">{count($l)}</items>
    }
  </XMark-result-Q12>
  
  <XMark-result-Q13>
    {
      let $auction := (/) return
      for $i in $auction/site/regions/australia/item
      return <item name=\"{$i/name/text()}\">{$i/description}</item>
    }
  </XMark-result-Q13>
  
  <XMark-result-Q14>
    {
      let $auction := (/) return
      for $i in $auction/site//item
      where contains(string(exactly-one($i/description)), \"gold\")
      return $i/name/text()
    }
  </XMark-result-Q14>
  
  <XMark-result-Q15>
    {
      let $auction := (/) return
      for $a in
        $auction/site/closed_auctions/closed_auction/annotation/description/parlist/
         listitem/
         parlist/
         listitem/
         text/
         emph/
         keyword/
         text()
      return <text>{$a}</text>
    }
  </XMark-result-Q15>
  
  <XMark-result-Q16>
    {
      let $auction := (/) return
      for $a in $auction/site/closed_auctions/closed_auction
      where
        not(
          empty(
            $a/annotation/description/parlist/listitem/parlist/listitem/text/emph/
             keyword/
             text()
          )
        )
      return <person id=\"{$a/seller/@person}\"/>
    }
  </XMark-result-Q16>
  
  <XMark-result-Q17>
    {
      let $auction := (/) return
      for $p in $auction/site/people/person
      where empty($p/homepage/text())
      return <person name=\"{$p/name/text()}\"/>
    }
  </XMark-result-Q17>
  
  <XMark-result-Q18>
    {
      let $auction := (/) return
      for $i in $auction/site/open_auctions/open_auction
      return local:convert(zero-or-one($i/reserve))
    }
  </XMark-result-Q18>
  
  <XMark-result-Q19>
    {
      let $auction := (/) return
      for $b in $auction/site/regions//item
      let $k := $b/name/text()
      stable order by zero-or-one($b/location) ascending empty greatest
      return <item name=\"{$k}\">{$b/location/text()}</item>
    }
  </XMark-result-Q19>
  
  <XMark-result-Q20>
    {
      let $auction := (/) return
      <result>
        <preferred>
          {count($auction/site/people/person/profile[@income >= 100000.0])}
        </preferred>
        <standard>
          {
            count(
              $auction/site/people/person/
               profile[@income < 100000.0 and @income >= 30000.0]
            )
          }
        </standard>
        <challenge>
          {count($auction/site/people/person/profile[@income < 30000.0])}
        </challenge>
        <na>
          {
            count(
              for $p in $auction/site/people/person
              where empty($p/profile/@income)
              return $p
            )
          }
        </na>
      </result>
    }
  </XMark-result-Q20>

</XMark-result-All>
",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "XMark-All.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "XMark/XMark-All.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
