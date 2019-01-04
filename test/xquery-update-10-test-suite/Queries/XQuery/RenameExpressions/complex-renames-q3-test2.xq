(: Name: complex-renames-q3 :)
(: Description: Rename the element called "center". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-east/preceding-sibling::node()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//near-west/following-sibling::node()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//center
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//middle
return
  <result count="{count($a)}">{$a}</result>
