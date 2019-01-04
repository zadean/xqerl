(: Test - relational-data-q5-1-test :)
(: Description - Verification query for Update Use Case #5  :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
return $bids/bids/bid_tuple[userid=$uid]