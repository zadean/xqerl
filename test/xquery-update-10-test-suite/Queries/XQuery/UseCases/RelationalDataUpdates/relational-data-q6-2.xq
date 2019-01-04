(: Test - relational-data-q6-2 :)
(: Description - Update Use Case #6- Alternate Solution  :)

(: insert-start :)
declare variable $users external;
declare variable $items external;
declare variable $bids external;
(: insert-end :)

(:state-1-start :)

let $user := 
$users/users/user_tuple[name="Dee Linquent"]
let $items := 
$items/items/item_tuple[offered_by=$user/userid]
let $bids := 
$bids/bids/bid_tuple[userid=$user/userid]
return 
  delete nodes ($user, $items, $bids)

(:state-1-end :) 
