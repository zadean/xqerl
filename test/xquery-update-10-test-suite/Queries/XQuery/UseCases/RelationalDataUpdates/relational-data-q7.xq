(: Test - relational-data-q7 :)
(: Description - Update Use Case #7   :)

(: insert-start :)
declare variable $items external;
(: insert-end :)

(:state-1-start :)
 insert nodes
  <comment>This is a bargain !</comment>
as last into $items/items/item_tuple[itemno=1002] 

(:state-1-end :) 