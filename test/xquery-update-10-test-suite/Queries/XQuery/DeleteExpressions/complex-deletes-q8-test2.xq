(: Name: complex-deletes-q8 :)
(: Description: Delete all elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-south/following-sibling::node()
return
  <result count="{count($a)}">{ $a }</result>
