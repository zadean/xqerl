(: Test - relational-data-q8 :)
(: Description - Update Use Case #8  :)

(: insert-start :)
declare variable $users external;
declare variable $bids external;
(: insert-end :)

let $uid := $users/users/user_tuple[name="Annabel Lee"]/userid
return fn:count(($bids/bids/bid_tuple[userid=$uid]))