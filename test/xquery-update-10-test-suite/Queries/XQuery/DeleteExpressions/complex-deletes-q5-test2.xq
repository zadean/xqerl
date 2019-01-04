(: Name: complex-deletes-q5 :)
(: Description: Delete all text node children of element "south". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-south//text()
return
  <result count="{count($a)}">{$a}</result>
