-module('app_UseCaseR_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['rdb-queries-results-q1'/1]).
-export(['rdb-queries-results-q2'/1]).
-export(['rdb-queries-results-q3'/1]).
-export(['rdb-queries-results-q4'/1]).
-export(['rdb-queries-results-q5'/1]).
-export(['rdb-queries-results-q6'/1]).
-export(['rdb-queries-results-q7'/1]).
-export(['rdb-queries-results-q8'/1]).
-export(['rdb-queries-results-q9'/1]).
-export(['rdb-queries-results-q10'/1]).
-export(['rdb-queries-results-q11'/1]).
-export(['rdb-queries-results-q12'/1]).
-export(['rdb-queries-results-q13'/1]).
-export(['rdb-queries-results-q14'/1]).
-export(['rdb-queries-results-q15'/1]).
-export(['rdb-queries-results-q16'/1]).
-export(['rdb-queries-results-q17'/1]).
-export(['rdb-queries-results-q18'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'rdb-queries-results-q1', 
'rdb-queries-results-q2', 
'rdb-queries-results-q3', 
'rdb-queries-results-q4', 
'rdb-queries-results-q5', 
'rdb-queries-results-q6', 
'rdb-queries-results-q7', 
'rdb-queries-results-q8', 
'rdb-queries-results-q9', 
'rdb-queries-results-q10', 
'rdb-queries-results-q11', 
'rdb-queries-results-q12', 
'rdb-queries-results-q13', 
'rdb-queries-results-q14', 
'rdb-queries-results-q15', 
'rdb-queries-results-q16', 
'rdb-queries-results-q17', 
'rdb-queries-results-q18'
].
environment('users-items-bids',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/users.xml"), "$users",[]}, 
{filename:join(__BaseDir, "../docs/items.xml"), "$items",[]}, 
{filename:join(__BaseDir, "../docs/bids.xml"), "$bids",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'rdb-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $i in $items//item_tuple 
            where $i/start_date <= xs:date(\"1999-01-31\") 
                and $i/end_date >= xs:date(\"1999-01-31\") 
                and contains(exactly-one($i/description), \"Bicycle\") 
            order by $i/itemno 
            return <item_tuple> { $i/itemno } { $i/description } </item_tuple> } 
        </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><item_tuple><itemno>1003</itemno><description>Old Bicycle</description></item_tuple><item_tuple><itemno>1007</itemno><description>Racing Bicycle</description></item_tuple></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $i in $items//item_tuple 
            let $b := $bids//bid_tuple[itemno = $i/itemno] 
            where contains(exactly-one($i/description), \"Bicycle\") 
            order by $i/itemno 
            return <item_tuple> { $i/itemno } { $i/description } <high_bid>{ max($b/bid) }</high_bid> </item_tuple> } 
        </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><item_tuple><itemno>1001</itemno><description>Red Bicycle</description><high_bid>55</high_bid></item_tuple><item_tuple><itemno>1003</itemno><description>Old Bicycle</description><high_bid>20</high_bid></item_tuple><item_tuple><itemno>1007</itemno><description>Racing Bicycle</description><high_bid>225</high_bid></item_tuple><item_tuple><itemno>1008</itemno><description>Broken Bicycle</description><high_bid/></item_tuple></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $u in $users//user_tuple 
            for $i in $items//item_tuple 
            where $u/rating > \"C\" and $i/reserve_price > 1000 and $i/offered_by = $u/userid 
            return <warning> { $u/name } { $u/rating } { $i/description } { $i/reserve_price } </warning> } 
        </result>
     ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><warning><name>Dee Linquent</name><rating>D</rating><description>Helicopter</description><reserve_price>50000</reserve_price></warning></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $i in $items//item_tuple 
            where empty ($bids//bid_tuple[itemno = $i/itemno]) 
            return <no_bid_item> { $i/itemno } { $i/description } </no_bid_item> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><no_bid_item><itemno>1005</itemno><description>Tennis Racket</description></no_bid_item><no_bid_item><itemno>1006</itemno><description>Helicopter</description></no_bid_item><no_bid_item><itemno>1008</itemno><description>Broken Bicycle</description></no_bid_item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            unordered ( 
                for $seller in $users//user_tuple, 
                    $buyer in $users//user_tuple, 
                    $item in $items//item_tuple, 
                    $highbid in $bids//bid_tuple 
                where $seller/name = \"Tom Jones\" 
                  and $seller/userid = $item/offered_by 
                  and contains(exactly-one($item/description), \"Bicycle\") 
                  and $item/itemno = $highbid/itemno 
                  and $highbid/userid = $buyer/userid 
                  and $highbid/bid = max( $bids//bid_tuple [itemno = $item/itemno]/bid ) 
                return <jones_bike> { $item/itemno } { $item/description } 
                        <high_bid>{ $highbid/bid }</high_bid> 
                        <high_bidder>{ $buyer/name }</high_bidder> 
                       </jones_bike> ) 
        } </result>
     ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><jones_bike><itemno>1001</itemno><description>Red Bicycle</description><high_bid><bid>55</bid></high_bid><high_bidder><name>Mary Doe</name></high_bidder></jones_bike></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $item in $items//item_tuple 
            let $b := $bids//bid_tuple[itemno = $item/itemno] 
            let $z := max($b/bid) 
            where exactly-one($item/reserve_price) * 2 < $z 
            return <successful_item> { $item/itemno } { $item/description } { $item/reserve_price } 
                    <high_bid>{$z }</high_bid> 
                   </successful_item> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><successful_item><itemno>1002</itemno><description>Motorcycle</description><reserve_price>500</reserve_price><high_bid>1200</high_bid></successful_item><successful_item><itemno>1004</itemno><description>Tricycle</description><reserve_price>15</reserve_price><high_bid>40</high_bid></successful_item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $allbikes := $items//item_tuple [contains(exactly-one(description), \"Bicycle\") or contains(exactly-one(description), \"Tricycle\")] 
        let $bikebids := $bids//bid_tuple[itemno = $allbikes/itemno] 
        return <high_bid> { max($bikebids/bid) } </high_bid>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<high_bid>225</high_bid>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $item := $items//item_tuple [end_date >= xs:date(\"1999-03-01\") and end_date <= xs:date(\"1999-03-31\")] 
            return <item_count> { count($item) } </item_count>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<item_count>3</item_count>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            let $end_dates := $items//item_tuple/end_date 
            for $m in distinct-values(
                        for $e in $end_dates 
                        return month-from-date($e)) 
            let $item := $items//item_tuple[year-from-date(exactly-one(end_date)) = 1999 and month-from-date(exactly-one(end_date)) = $m] 
            order by $m 
            return <monthly_result> 
                    <month>{ $m }</month> 
                    <item_count>{ count($item) }</item_count>
                   </monthly_result> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><monthly_result><month>1</month><item_count>1</item_count></monthly_result><monthly_result><month>2</month><item_count>2</item_count></monthly_result><monthly_result><month>3</month><item_count>3</item_count></monthly_result><monthly_result><month>4</month><item_count>1</item_count></monthly_result><monthly_result><month>5</month><item_count>1</item_count></monthly_result></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $highbid in $bids//bid_tuple, 
                $user in $users//user_tuple 
            where $user/userid = $highbid/userid and $highbid/bid = max($bids//bid_tuple[itemno=$highbid/itemno]/bid) 
            order by exactly-one($highbid/itemno) 
            return <high_bid> { $highbid/itemno } { $highbid/bid } 
                     <bidder>{ $user/name/text() }</bidder> 
                   </high_bid> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><high_bid><itemno>1001</itemno><bid>55</bid><bidder>Mary Doe</bidder></high_bid><high_bid><itemno>1002</itemno><bid>1200</bid><bidder>Mary Doe</bidder></high_bid><high_bid><itemno>1003</itemno><bid>20</bid><bidder>Jack Sprat</bidder></high_bid><high_bid><itemno>1004</itemno><bid>40</bid><bidder>Tom Jones</bidder></high_bid><high_bid><itemno>1007</itemno><bid>225</bid><bidder>Roger Smith</bidder></high_bid></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $highbid := max($bids//bid_tuple/bid) 
        return <result> { for $item in $items//item_tuple, 
                              $b in $bids//bid_tuple[itemno = $item/itemno] 
                          where $b/bid = $highbid 
                          return <expensive_item> { $item/itemno } { $item/description } 
                                    <high_bid>{ $highbid }</high_bid> 
                                 </expensive_item> 
               } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><expensive_item><itemno>1002</itemno><description>Motorcycle</description><high_bid>1200</high_bid></expensive_item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:bid_summary() as element()* { 
            for $i in distinct-values($bids//itemno) 
            let $b := $bids//bid_tuple[itemno = $i] 
            return <bid_count> 
                        <itemno>{ $i }</itemno> 
                        <nbids>{ count($b) }</nbids> 
                   </bid_count> };
        <result> { 
            let $bid_counts := local:bid_summary(), 
                $maxbids := max($bid_counts/nbids), 
                $maxitemnos := $bid_counts[nbids = $maxbids] 
                for $item in $items//item_tuple, 
                    $bc in $bid_counts 
                where $bc/nbids = $maxbids and $item/itemno = $bc/itemno 
                return <popular_item> { $item/itemno } { $item/description } 
                        <bid_count>{ $bc/nbids/text() }</bid_count> 
                       </popular_item> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><popular_item><itemno>1001</itemno><description>Red Bicycle</description><bid_count>5</bid_count></popular_item><popular_item><itemno>1002</itemno><description>Motorcycle</description><bid_count>5</bid_count></popular_item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $uid in distinct-values($bids//userid), 
                $u in $users//user_tuple[userid = $uid] 
            let $b := $bids//bid_tuple[userid = $uid] 
            order by exactly-one($u/userid) 
            return <bidder> { $u/userid } { $u/name } <bidcount>{ count($b) }</bidcount> <avgbid>{ avg($b/bid) }</avgbid> </bidder> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><bidder><userid>U01</userid><name>Tom Jones</name><bidcount>2</bidcount><avgbid>220</avgbid></bidder><bidder><userid>U02</userid><name>Mary Doe</name><bidcount>5</bidcount><avgbid>387</avgbid></bidder><bidder><userid>U03</userid><name>Dee Linquent</name><bidcount>2</bidcount><avgbid>487.5</avgbid></bidder><bidder><userid>U04</userid><name>Roger Smith</name><bidcount>5</bidcount><avgbid>266</avgbid></bidder><bidder><userid>U05</userid><name>Jack Sprat</name><bidcount>2</bidcount><avgbid>110</avgbid></bidder></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $i in distinct-values($items//itemno) 
            let $b := $bids//bid_tuple[itemno = $i] 
            let $avgbid := avg($b/bid) 
            where count($b) >= 3 
            order by $avgbid descending 
            return <popular_item> <itemno>{ $i }</itemno> <avgbid>{ $avgbid }</avgbid> </popular_item> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><popular_item><itemno>1002</itemno><avgbid>800</avgbid></popular_item><popular_item><itemno>1007</itemno><avgbid>200</avgbid></popular_item><popular_item><itemno>1001</itemno><avgbid>45</avgbid></popular_item></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $u in $users//user_tuple 
            let $b := $bids//bid_tuple[userid=$u/userid and bid>=100] 
            where count($b) > 1 
            return <big_spender>{ $u/name/text() }</big_spender> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><big_spender>Mary Doe</big_spender><big_spender>Dee Linquent</big_spender><big_spender>Roger Smith</big_spender></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $u in $users//user_tuple 
            let $b := $bids//bid_tuple[userid = $u/userid] 
            order by exactly-one($u/userid) 
            return <user> { $u/userid } { $u/name } { 
                if (empty($b)) 
                then <status>inactive</status> 
                else <status>active</status> } </user> 
        } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><user><userid>U01</userid><name>Tom Jones</name><status>active</status></user><user><userid>U02</userid><name>Mary Doe</name><status>active</status></user><user><userid>U03</userid><name>Dee Linquent</name><status>active</status></user><user><userid>U04</userid><name>Roger Smith</name><status>active</status></user><user><userid>U05</userid><name>Jack Sprat</name><status>active</status></user><user><userid>U06</userid><name>Rip Van Winkle</name><status>inactive</status></user></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <frequent_bidder> { 
            for $u in $users//user_tuple 
            where every $item in $items//item_tuple 
                  satisfies some $b in $bids//bid_tuple 
                            satisfies ($item/itemno = $b/itemno and $u/userid = $b/userid) 
            return $u/name 
        } </frequent_bidder>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<frequent_bidder/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'rdb-queries-results-q18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <result> { 
            for $u in $users//user_tuple 
            order by $u/name 
            return <user> { $u/name } { 
                for $b in distinct-values($bids//bid_tuple [userid = $u/userid]/itemno) 
                for $i in $items//item_tuple[itemno = $b] 
                let $descr := $i/description/text() 
                order by exactly-one($descr) 
                return <bid_on_item>{ $descr }</bid_on_item> } </user> 
        } </result>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-items-bids',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "rdb-queries-results-q18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><user><name>Dee Linquent</name><bid_on_item>Motorcycle</bid_on_item><bid_on_item>Racing Bicycle</bid_on_item></user><user><name>Jack Sprat</name><bid_on_item>Old Bicycle</bid_on_item><bid_on_item>Racing Bicycle</bid_on_item></user><user><name>Mary Doe</name><bid_on_item>Motorcycle</bid_on_item><bid_on_item>Red Bicycle</bid_on_item></user><user><name>Rip Van Winkle</name></user><user><name>Roger Smith</name><bid_on_item>Motorcycle</bid_on_item><bid_on_item>Old Bicycle</bid_on_item><bid_on_item>Racing Bicycle</bid_on_item><bid_on_item>Red Bicycle</bid_on_item></user><user><name>Tom Jones</name><bid_on_item>Motorcycle</bid_on_item><bid_on_item>Tricycle</bid_on_item></user></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.