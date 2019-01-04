(: Test - relational-data-q3 :)
(: Description - Update Use Case #3  :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

(:state-1-start :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
let $topbid := 
max($bids/bids/bid_tuple[itemno=1002]/bid)
return 
  insert node 
    <bid_tuple> 
      <userid>{data($uid)}</userid> 
      <itemno>1002</itemno> 
      <bid>{$topbid*1.1}</bid>
      <bid_date>1999-02-01</bid_date> 
    </bid_tuple>
  into $bids/bids
  
(:state-1-end :)