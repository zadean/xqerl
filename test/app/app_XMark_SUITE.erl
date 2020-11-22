-module('app_XMark_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

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

suite() -> [{timetrap, {seconds, 240}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "app"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
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
            'XMark-All'
        ]}
    ].

environment('XMarkAuction', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "XMark/XMarkAuction.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'XMark-Q1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <XMark-result-Q1> { \n"
        "            let $auction := (/)\n"
        "            return for $b in $auction/site/people/person[@id = \"person0\"] \n"
        "            return $b/name/text() } </XMark-result-Q1>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<XMark-result-Q1>Seongtaek Mattern</XMark-result-Q1>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <XMark-result-Q2> { \n"
        "            let $auction := (/) \n"
        "            return for $b in $auction/site/open_auctions/open_auction \n"
        "            return <increase>{$b/bidder[1]/increase/text()}</increase> } </XMark-result-Q2>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q2.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: Return the IDs of all open auctions whose current increase is at least twice as high as the initial increase. :) \n"
        "        <XMark-result-Q3> { \n"
        "            let $auction := (/) \n"
        "            return for $b in $auction/site/open_auctions/open_auction \n"
        "            where zero-or-one($b/bidder[1]/increase/text()) * 2.0 <= $b/bidder[last()]/increase/text() \n"
        "                return <increase first=\"{$b/bidder[1]/increase/text()}\" last=\"{$b/bidder[last()]/increase/text()}\"/> } \n"
        "        </XMark-result-Q3>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q3.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: List the reserves of those open auctions where a certain person issued a bid before another person. :) \n"
        "        <XMark-result-Q4> { \n"
        "            let $auction := (/) return \n"
        "            for $b in $auction/site/open_auctions/open_auction \n"
        "            where some $pr1 in $b/bidder/personref[@person = \"person20\"], $pr2 in $b/bidder/personref[@person = \"person51\"] satisfies $pr1 << $pr2 \n"
        "            return <history>{$b/reserve/text()}</history> } \n"
        "        </XMark-result-Q4>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<XMark-result-Q4/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <XMark-result-Q5> { \n"
        "          let $auction := (/) return count(\n"
        "            for $i in $auction/site/closed_auctions/closed_auction \n"
        "            where $i/price/text() >= 40.0 return $i/price) } \n"
        "        </XMark-result-Q5>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<XMark-result-Q5>200</XMark-result-Q5>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <XMark-result-Q6> { \n"
        "            let $auction := (/) return for $b in $auction//site/regions return count($b//item) } \n"
        "        </XMark-result-Q6>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<XMark-result-Q6>647</XMark-result-Q6>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<XMark-result-Q7> { let $auction := (/) return for $p in $auction/site return count($p//description) + count($p//annotation) + count($p//emailaddress) } </XMark-result-Q7>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<XMark-result-Q7>2734</XMark-result-Q7>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: List the names of persons and the number of items they bought. (joins person, closed\\_auction). :) \n"
        "         <XMark-result-Q8> { let $auction := (/) return \n"
        "         for $p in $auction/site/people/person \n"
        "         let $a := for $t in $auction/site/closed_auctions/closed_auction \n"
        "         where $t/buyer/@person = $p/@id return $t \n"
        "         return <item person=\"{$p/name/text()}\">{count($a)}</item> } </XMark-result-Q8>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q8.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: List the names of persons and the names of the items \n"
        "         they bought in Europe(joins person, closed auction, item). :) \n"
        "         <XMark-result-Q9> { \n"
        "            let $auction := (/) \n"
        "            return let $ca := $auction/site/closed_auctions/closed_auction \n"
        "            return let $ei := $auction/site/regions/europe/item \n"
        "            for $p in $auction/site/people/person \n"
        "            let $a := for $t in $ca where $p/@id = $t/buyer/@person \n"
        "            return let $n := for $t2 in $ei where $t/itemref/@item = $t2/@id \n"
        "            return $t2 return <item>{$n/name/text()}</item> \n"
        "            return <person name=\"{$p/name/text()}\">{$a}</person> } </XMark-result-Q9>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q9.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: List all persons according to their interest; use French markup in the result. :) \n"
        "         <XMark-result-Q10> { let $auction := (/) \n"
        "            return for $i in distinct-values($auction/site/people/person/profile/interest/@category) \n"
        "            let $p := for $t in $auction/site/people/person where $t/profile/interest/@category = $i \n"
        "            return <personne> \n"
        "                     <statistiques> \n"
        "                        <sexe>{$t/profile/gender/text()}</sexe> \n"
        "                        <age>{$t/profile/age/text()}</age> \n"
        "                        <education>{$t/profile/education/text()}</education> \n"
        "                        <revenu>{fn:data($t/profile/@income)}</revenu> \n"
        "                     </statistiques> \n"
        "                     <coordonnees> \n"
        "                        <nom>{$t/name/text()}</nom> \n"
        "                        <rue>{$t/address/street/text()}</rue> \n"
        "                        <ville>{$t/address/city/text()}</ville> \n"
        "                        <pays>{$t/address/country/text()}</pays> \n"
        "                        <reseau> \n"
        "                           <courrier>{$t/emailaddress/text()}</courrier> \n"
        "                           <pagePerso>{$t/homepage/text()}</pagePerso> \n"
        "                        </reseau> \n"
        "                     </coordonnees> \n"
        "                     <cartePaiement>{$t/creditcard/text()}</cartePaiement> \n"
        "                   </personne> \n"
        "            return <categorie>{<id>{$i}</id>, $p}</categorie> } </XMark-result-Q10>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q10.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q10.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpoose: For each person, list the number of items currently on sale \n"
        "         whose price does not exceed 0.02% of the person's income. :) \n"
        "         <XMark-result-Q11> { \n"
        "            let $auction := (/) return \n"
        "            for $p in $auction/site/people/person \n"
        "            let $l := for $i in $auction/site/open_auctions/open_auction/initial \n"
        "            where $p/profile/@income > 5000 * exactly-one($i/text()) \n"
        "            return $i return <items name=\"{$p/name/text()}\">{count($l)}</items> } </XMark-result-Q11>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q11.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: For each richer-than-average person, list the \n"
        "         number of items currently on sale whose price does not exceed 0.02% of the person's income. :) \n"
        "         <XMark-result-Q12> { \n"
        "            let $auction := (/) return \n"
        "            for $p in $auction/site/people/person \n"
        "            let $l := for $i in $auction/site/open_auctions/open_auction/initial \n"
        "            where $p/profile/@income > 5000.0 * exactly-one($i/text()) \n"
        "            return $i where $p/profile/@income > 50000.0 \n"
        "            return <items person=\"{$p/profile/@income}\">{count($l)}</items> } </XMark-result-Q12>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q12.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q12.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: List the names of items registered in Australia along with their descriptions. :) \n"
        "         <XMark-result-Q13> { \n"
        "            let $auction := (/) return \n"
        "            for $i in $auction/site/regions/australia/item \n"
        "            return <item name=\"{$i/name/text()}\">{$i/description}</item> } </XMark-result-Q13>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q13.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q13.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: Return the names of all items whose description contains the word `gold'. :) \n"
        "         <XMark-result-Q14> { \n"
        "            let $auction := (/) return \n"
        "            for $i in $auction/site//item \n"
        "            where contains(string(exactly-one($i/description)), \"gold\") \n"
        "            return $i/name/text() } </XMark-result-Q14>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q14.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q14.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<XMark-result-Q15> { \n"
        "            let $auction := (/) return \n"
        "            for $a in $auction/site/closed_auctions/closed_auction/annotation/description/parlist/ \n"
        "               listitem/ parlist/ listitem/ text/ emph/ keyword/ text() \n"
        "            return <text>{$a}</text> } </XMark-result-Q15>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q15.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q15.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: Return the IDs of those auctions that have one or more keywords in emphasis. (cf. Q15) :) \n"
        "         <XMark-result-Q16> { \n"
        "            let $auction := (/) return \n"
        "            for $a in $auction/site/closed_auctions/closed_auction \n"
        "            where not( empty( $a/annotation/description/parlist/listitem/parlist/listitem/text/emph/ keyword/ text() ) ) \n"
        "            return <person id=\"{$a/seller/@person}\"/> } </XMark-result-Q16>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q16.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q16.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<XMark-result-Q17> { \n"
        "            let $auction := (/) \n"
        "            return for $p in $auction/site/people/person \n"
        "            where empty($p/homepage/text()) \n"
        "            return <person name=\"{$p/name/text()}\"/> } </XMark-result-Q17>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q17.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q17.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: Convert the currency of the reserve of all open auctions to another currency. :) \n"
        "         declare namespace local = \"http://www.example.com/\"; \n"
        "         declare function local:convert($v as xs:decimal?) as xs:decimal? { 2.20371 * $v }; \n"
        "         <XMark-result-Q18> { \n"
        "            let $auction := (/) return \n"
        "            for $i in $auction/site/open_auctions/open_auction \n"
        "            return local:convert(zero-or-one($i/reserve)) } </XMark-result-Q18>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q18.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q18.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Purpose: Give an alphabetically ordered list of all items along with their location. :) \n"
        "         <XMark-result-Q19> { \n"
        "            let $auction := (/) return \n"
        "            for $b in $auction/site/regions//item \n"
        "            let $k := $b/name/text() stable order by zero-or-one($b/location) ascending empty greatest \n"
        "            return <item name=\"{$k}\">{$b/location/text()}</item> } </XMark-result-Q19>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q19.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q19.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-Q20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<XMark-result-Q20> { \n"
        "            let $auction := (/) return \n"
        "               <result> \n"
        "                  <preferred> {count($auction/site/people/person/profile[@income >= 100000.0])} </preferred>\n"
        "                  <standard> { count( $auction/site/people/person/ profile[@income < 100000.0 and @income >= 30000.0] ) } </standard>\n"
        "                  <challenge> {count($auction/site/people/person/profile[@income < 30000.0])} </challenge>\n"
        "                  <na> { count( for $p in $auction/site/people/person where empty($p/profile/@income) return $p ) } </na>\n"
        "               </result> } </XMark-result-Q20>",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-Q20.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-Q20.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XMark-All'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Written By: Frans Englich(maintainer, not original author) :)\n"
        "(: Purpose: Return the name of the person with ID `person0'. :)\n"
        "(: Date: 2007-03-09 :)\n"
        "\n"
        "declare namespace local = \"http://www.example.com/\";\n"
        "\n"
        "\n"
        "declare function local:convert($v as xs:decimal?) as xs:decimal?\n"
        "{\n"
        "  2.20371 * $v (: convert Dfl to Euro :)\n"
        "};\n"
        "\n"
        "<XMark-result-All>\n"
        "\n"
        "  <XMark-result-Q1>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $b in $auction/site/people/person[@id = \"person0\"] return $b/name/text()\n"
        "    }\n"
        "  </XMark-result-Q1>\n"
        "\n"
        "  <XMark-result-Q2>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $b in $auction/site/open_auctions/open_auction\n"
        "      return <increase>{$b/bidder[1]/increase/text()}</increase>\n"
        "    }\n"
        "  </XMark-result-Q2>\n"
        "  \n"
        "  <XMark-result-Q3>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $b in $auction/site/open_auctions/open_auction\n"
        "      where zero-or-one($b/bidder[1]/increase/text()) * 2.0 <= $b/bidder[last()]/increase/text()\n"
        "      return <increase first=\"{$b/bidder[1]/increase/text()}\"\n"
        "                       last=\"{$b/bidder[last()]/increase/text()}\"/>\n"
        "    }\n"
        "  </XMark-result-Q3>\n"
        "  \n"
        "  <XMark-result-Q4>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $b in $auction/site/open_auctions/open_auction\n"
        "      where\n"
        "        some $pr1 in $b/bidder/personref[@person = \"person20\"],\n"
        "             $pr2 in $b/bidder/personref[@person = \"person51\"]\n"
        "        satisfies $pr1 << $pr2\n"
        "      return <history>{$b/reserve/text()}</history>\n"
        "    }\n"
        "  </XMark-result-Q4>\n"
        "  \n"
        "  <XMark-result-Q5>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      count(for $i in $auction/site/closed_auctions/closed_auction\n"
        "            where $i/price/text() >= 40.0\n"
        "            return $i/price)\n"
        "    }\n"
        "  </XMark-result-Q5>\n"
        "  \n"
        "  <XMark-result-Q6>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $b in $auction//site/regions return count($b//item)\n"
        "    }\n"
        "  </XMark-result-Q6>\n"
        "  \n"
        "  <XMark-result-Q7>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $p in $auction/site\n"
        "      return count($p//description) + count($p//annotation) + count($p//emailaddress)\n"
        "    }\n"
        "  </XMark-result-Q7>\n"
        "  \n"
        "  <XMark-result-Q8>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $p in $auction/site/people/person\n"
        "      let $a := for $t in $auction/site/closed_auctions/closed_auction\n"
        "                where $t/buyer/@person = $p/@id\n"
        "                return $t\n"
        "      return <item person=\"{$p/name/text()}\">{count($a)}</item>\n"
        "    }\n"
        "  </XMark-result-Q8>\n"
        "  \n"
        "  <XMark-result-Q9>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      let $ca := $auction/site/closed_auctions/closed_auction return\n"
        "      let $ei := $auction/site/regions/europe/item\n"
        "      for $p in $auction/site/people/person\n"
        "        let $a := for $t in $ca\n"
        "                  where $p/@id = $t/buyer/@person\n"
        "                  return let $n := for $t2 in $ei where $t/itemref/@item = $t2/@id return $t2\n"
        "                         return <item>{$n/name/text()}</item>\n"
        "      return <person name=\"{$p/name/text()}\">{$a}</person>\n"
        "    }\n"
        "  </XMark-result-Q9>\n"
        "  \n"
        "  <XMark-result-Q10>\n"
        "    {\n"
        "    let $auction := (/)\n"
        "    return\n"
        "      for $i in\n"
        "        distinct-values($auction/site/people/person/profile/interest/@category)\n"
        "      let $p :=\n"
        "        for $t in $auction/site/people/person\n"
        "        where $t/profile/interest/@category = $i\n"
        "        return\n"
        "          <personne>\n"
        "            <statistiques>\n"
        "              <sexe>{$t/profile/gender/text()}</sexe>\n"
        "              <age>{$t/profile/age/text()}</age>\n"
        "              <education>{$t/profile/education/text()}</education>\n"
        "              <revenu>{fn:data($t/profile/@income)}</revenu>\n"
        "            </statistiques>\n"
        "            <coordonnees>\n"
        "              <nom>{$t/name/text()}</nom>\n"
        "              <rue>{$t/address/street/text()}</rue>\n"
        "              <ville>{$t/address/city/text()}</ville>\n"
        "              <pays>{$t/address/country/text()}</pays>\n"
        "              <reseau>\n"
        "                <courrier>{$t/emailaddress/text()}</courrier>\n"
        "                <pagePerso>{$t/homepage/text()}</pagePerso>\n"
        "              </reseau>\n"
        "            </coordonnees>\n"
        "            <cartePaiement>{$t/creditcard/text()}</cartePaiement>\n"
        "          </personne>\n"
        "      return <categorie>{<id>{$i}</id>, $p}</categorie>\n"
        "    }\n"
        "  </XMark-result-Q10>\n"
        "  \n"
        "  <XMark-result-Q11>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $p in $auction/site/people/person\n"
        "      let $l := for $i in $auction/site/open_auctions/open_auction/initial\n"
        "                where $p/profile/@income > 5000 * exactly-one($i/text())\n"
        "                return $i\n"
        "      return <items name=\"{$p/name/text()}\">{count($l)}</items>\n"
        "    }\n"
        "  </XMark-result-Q11>\n"
        "  \n"
        "  <XMark-result-Q12>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $p in $auction/site/people/person\n"
        "      let $l :=\n"
        "        for $i in $auction/site/open_auctions/open_auction/initial\n"
        "        where $p/profile/@income > 5000.0 * exactly-one($i/text())\n"
        "        return $i\n"
        "      where $p/profile/@income > 50000.0\n"
        "      return <items person=\"{$p/profile/@income}\">{count($l)}</items>\n"
        "    }\n"
        "  </XMark-result-Q12>\n"
        "  \n"
        "  <XMark-result-Q13>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $i in $auction/site/regions/australia/item\n"
        "      return <item name=\"{$i/name/text()}\">{$i/description}</item>\n"
        "    }\n"
        "  </XMark-result-Q13>\n"
        "  \n"
        "  <XMark-result-Q14>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $i in $auction/site//item\n"
        "      where contains(string(exactly-one($i/description)), \"gold\")\n"
        "      return $i/name/text()\n"
        "    }\n"
        "  </XMark-result-Q14>\n"
        "  \n"
        "  <XMark-result-Q15>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $a in\n"
        "        $auction/site/closed_auctions/closed_auction/annotation/description/parlist/\n"
        "         listitem/\n"
        "         parlist/\n"
        "         listitem/\n"
        "         text/\n"
        "         emph/\n"
        "         keyword/\n"
        "         text()\n"
        "      return <text>{$a}</text>\n"
        "    }\n"
        "  </XMark-result-Q15>\n"
        "  \n"
        "  <XMark-result-Q16>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $a in $auction/site/closed_auctions/closed_auction\n"
        "      where\n"
        "        not(\n"
        "          empty(\n"
        "            $a/annotation/description/parlist/listitem/parlist/listitem/text/emph/\n"
        "             keyword/\n"
        "             text()\n"
        "          )\n"
        "        )\n"
        "      return <person id=\"{$a/seller/@person}\"/>\n"
        "    }\n"
        "  </XMark-result-Q16>\n"
        "  \n"
        "  <XMark-result-Q17>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $p in $auction/site/people/person\n"
        "      where empty($p/homepage/text())\n"
        "      return <person name=\"{$p/name/text()}\"/>\n"
        "    }\n"
        "  </XMark-result-Q17>\n"
        "  \n"
        "  <XMark-result-Q18>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $i in $auction/site/open_auctions/open_auction\n"
        "      return local:convert(zero-or-one($i/reserve))\n"
        "    }\n"
        "  </XMark-result-Q18>\n"
        "  \n"
        "  <XMark-result-Q19>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      for $b in $auction/site/regions//item\n"
        "      let $k := $b/name/text()\n"
        "      stable order by zero-or-one($b/location) ascending empty greatest\n"
        "      return <item name=\"{$k}\">{$b/location/text()}</item>\n"
        "    }\n"
        "  </XMark-result-Q19>\n"
        "  \n"
        "  <XMark-result-Q20>\n"
        "    {\n"
        "      let $auction := (/) return\n"
        "      <result>\n"
        "        <preferred>\n"
        "          {count($auction/site/people/person/profile[@income >= 100000.0])}\n"
        "        </preferred>\n"
        "        <standard>\n"
        "          {\n"
        "            count(\n"
        "              $auction/site/people/person/\n"
        "               profile[@income < 100000.0 and @income >= 30000.0]\n"
        "            )\n"
        "          }\n"
        "        </standard>\n"
        "        <challenge>\n"
        "          {count($auction/site/people/person/profile[@income < 30000.0])}\n"
        "        </challenge>\n"
        "        <na>\n"
        "          {\n"
        "            count(\n"
        "              for $p in $auction/site/people/person\n"
        "              where empty($p/profile/@income)\n"
        "              return $p\n"
        "            )\n"
        "          }\n"
        "        </na>\n"
        "      </result>\n"
        "    }\n"
        "  </XMark-result-Q20>\n"
        "\n"
        "</XMark-result-All>\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XMark-All.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "XMark/XMark-All.xml")}) of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
