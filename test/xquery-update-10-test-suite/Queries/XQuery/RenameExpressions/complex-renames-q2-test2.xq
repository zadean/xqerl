(: Name: complex-renames-q2 :)
(: Description: Rename all elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-south/following-sibling::node()
return
  <result count="{count($a)}">{ $a }</result>,
let $a := $input-context//south-east
return
  <result count="{count($a)}">{ $a }</result>,
let $a := $input-context//se
return
  <result count="{count($a)}">{ $a }</result>,
let $a := $input-context//south-east[@mark="1se"]
return
  <result count="{count($a)}">{ $a }</result>,
let $a := $input-context//se[@mark="1se"]
return
  <result count="{count($a)}">{ $a }</result>
