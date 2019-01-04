(: Name: complex-deletes-q9 :)
(: Description: Delete the element called "center". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-east/preceding-sibling::node()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//near-west/following-sibling::node()
return
  <result count="{count($a)}">{$a}</result>
