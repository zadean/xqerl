(: Test - relational-data-q5-2 :)
(: Description - Update Use Case #5  :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

(:state-1-start :)

let $uid := $users/users/user_tuple[name="Annabel Lee"]/userid
let $topbid := max($bids/bids/bid_tuple[itemno=1007]/bid/xs:decimal(.))
where $topbid*1.1 <= 500
return 
  insert nodes 
    <bid_tuple> 
      <userid>{data($uid)}</userid> 
      <itemno>1007</itemno> 
      <bid>{$topbid*1.1}</bid> 
      <bid_date>1999-02-01</bid_date> 
    </bid_tuple>
  into $bids/bids
    
(:state-1-end :)  