(: Test - parts-q2 :)
(: Description - Update Use Case Parts Q2:)

(: insert-start :)
declare variable $part-tree external;
(: insert-end :)

(:state-1-start :)
 delete node $part-tree//part[@name="car"]/part

(:state-1-end :)