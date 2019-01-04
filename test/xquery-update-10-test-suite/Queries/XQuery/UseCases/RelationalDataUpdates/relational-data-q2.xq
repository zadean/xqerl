(: Test - relational-data-q2 :)
(: Description - Update Use Case #2  :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

(:state-1-start :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
return 
  insert node 
    <bid_tuple> 
      <userid>{data($uid)}</userid> 
      <itemno>1001</itemno> 
      <bid>60</bid> 
      <bid_date>1999-02-01</bid_date> 
    </bid_tuple>
  into $bids/bids 


(:state-1-end :)