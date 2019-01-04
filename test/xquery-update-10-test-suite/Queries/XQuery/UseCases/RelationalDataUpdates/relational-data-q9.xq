(: Test - relational-data-q9 :)
(: Description - Update Use Case #9   :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

(:state-1-start :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
let $topbid := 
max($bids//bid_tuple[itemno=1002]/bid)
return 
  insert nodes 
    <bid_tuple> 
      <userid>{data($uid)}</userid> 
      <itemno>1002</itemno> 
      <bid>{$topbid - 5.00}</bid> 
      <bid_date>2006-04-23</bid_date> 
    </bid_tuple>
  into $bids/bids 
  
(:state-1-end :)  