-module('app_UseCaseNS_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['ns-queries-results-q1'/1]).
-export(['ns-queries-results-q2'/1]).
-export(['ns-queries-results-q3'/1]).
-export(['ns-queries-results-q4'/1]).
-export(['ns-queries-results-q5'/1]).
-export(['ns-queries-results-q6'/1]).
-export(['ns-queries-results-q7'/1]).
-export(['ns-queries-results-q8'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'ns-queries-results-q1', 
'ns-queries-results-q2', 
'ns-queries-results-q3', 
'ns-queries-results-q4', 
'ns-queries-results-q5', 
'ns-queries-results-q6', 
'ns-queries-results-q7', 
'ns-queries-results-q8'
].
environment('auction-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'ns-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $n in distinct-values( for $i in (//* | //@*) return namespace-uri($i) ) return $n", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"http://www.example.com/AuctionWatch\",
        \"http://www.example.com/auctioneers#anyzone\",
         \"http://www.w3.org/1999/xlink\",
         \"http://www.w3.org/2001/XMLSchema\",
         \"http://www.example.com/auctioneers#eachbay\",
         \"http://www.example.org/music/records\",
         \"http://www.example.com/auctioneers#yabadoo\",
         \"http://www.w3.org/XML/1998/namespace\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace music = \"http://www.example.org/music/records\"; 
        <Q2> { //music:title } </Q2>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q2><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">In a Silent Way</title><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">Think of One ...</title></Q2>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace dt = \"http://www.w3.org/2001/XMLSchema\"; 
        <Q3> { //*[@dt:*] } </Q3>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q3><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-21:07:41:34-05:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-19:17:03:00-04:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-29:17:03:00-04:00</ma:Close></Q3>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace xlink = \"http://www.w3.org/1999/xlink\"; 
        <Q4 xmlns:xlink=\"http://www.w3.org/1999/xlink\"> { for $hr in //@xlink:href return <ns>{ $hr }</ns> } </Q4>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q4 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ns xlink:href=\"http://www.example.com/item/0321K372910\"/><ns xlink:href=\"http://auction.eachbay.com/members?get=RecordsRUs\"/><ns xlink:href=\"http://auction.anyzone.com/members/VintageRecordFreak\"/><ns xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=StarsOn45\"/></Q4>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace music = \"http://www.example.org/music/records\"; 
        <Q5 xmlns:music=\"http://www.example.org/music/records\"> { //music:record[music:remark/@xml:lang = \"de\"] } </Q5>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q5 xmlns:music=\"http://www.example.org/music/records\"><record xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <artist>Wynton Marsalis</artist>
            <title>Think of One ...</title>
            <recorded>1983</recorded>
            <label>Columbia Records</label>
            <remark xml:lang=\"en\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. The record is still clean and shiny
                and looks unplayed (looks like NM condition).  The
                cover has very light surface and edge wear.
            </remark>
            <remark xml:lang=\"de\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. Die Platte ist noch immer sauber
                und gl&#228;nzend und sieht ungespielt aus
                (NM Zustand). Das Cover hat leichte Abnutzungen an
                Oberfl&#228;che und Ecken.
            </remark>
        </record></Q5>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ma = \"http://www.example.com/AuctionWatch\"; 
        declare namespace anyzone = \"http://www.example.com/auctioneers#anyzone\"; 
        <Q6 xmlns:ma=\"http://www.example.com/AuctionWatch\"> { //ma:Auction[@anyzone:ID]/ma:Schedule/ma:Close } </Q6>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q6 xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close></Q6>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ma = \"http://www.example.com/AuctionWatch\"; 
        <Q7 xmlns:xlink=\"http://www.w3.org/1999/xlink\"> { 
            for $a in //ma:Auction 
            let $seller_id := $a/ma:Trading_Partners/ma:Seller/*:ID, 
                $buyer_id := $a/ma:Trading_Partners/ma:High_Bidder/*:ID 
            where namespace-uri(exactly-one($seller_id)) = namespace-uri($buyer_id) 
            return $a/ma:AuctionHomepage } </Q7>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q7 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ma:AuctionHomepage xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" xlink:type=\"simple\" xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/></Q7>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ns-queries-results-q8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ma = \"http://www.example.com/AuctionWatch\"; 
        <Q8 xmlns:ma=\"http://www.example.com/AuctionWatch\" 
            xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" 
            xmlns:xlink=\"http://www.w3.org/1999/xlink\"> { 
                for $s in //ma:Trading_Partners/(ma:Seller | ma:High_Bidder) 
                where $s/*:NegativeComments = 0 
                return $s } </Q8>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction-xq',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ns-queries-results-q8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Q8 xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:High_Bidder xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <eachbay:ID>VintageRecordFreak</eachbay:ID>
            <eachbay:PositiveComments>232</eachbay:PositiveComments>
            <eachbay:NeutralComments>0</eachbay:NeutralComments>
            <eachbay:NegativeComments>0</eachbay:NegativeComments>
            <ma:MemberInfoPage xlink:type=\"simple\" xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\" xlink:role=\"ma:MemberInfoPage\"/>            
        </ma:High_Bidder></Q8>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.