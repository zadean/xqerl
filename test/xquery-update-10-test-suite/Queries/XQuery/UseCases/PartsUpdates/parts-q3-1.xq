(: Test - parts-q3-1 :)
(: Description - Update Use Case Parts Q3:)

(: insert-start :)
declare variable $part-tree external;
declare variable $part-list external;
(: insert-end :)

(:state-1-start :)

for $pt in $part-tree//part[@name="car"]//part, 
    $pl in $part-list//part
where $pt/@partid eq $pl/@partid
return 
  delete node $pl
    
(:state-1-end :)