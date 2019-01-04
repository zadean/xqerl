(: Test - parts-q4-2 :)
(: Description - Update Use Case Parts Q4 - Alternate solution :)

(: insert-start :)
declare variable $part-tree external;
(: insert-end :)

(:state-1-start :)

let $next := max($part-tree//@partid) + 1
  return
    insert node <part partid="{$next}" name="radio"/>
       as last
       into $part-tree//part[@partid=0 and @name="car"]
       
(:state-1-end :)       