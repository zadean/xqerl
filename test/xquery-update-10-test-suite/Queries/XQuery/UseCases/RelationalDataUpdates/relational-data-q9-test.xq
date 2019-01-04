(: Test - relational-data-q9 :)
(: Description - Update Use Case #9  :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

let $uid := $users/users/user_tuple[name="Annabel Lee"]/userid
return fn:count(($bids/bids/bid_tuple[userid=$uid]))