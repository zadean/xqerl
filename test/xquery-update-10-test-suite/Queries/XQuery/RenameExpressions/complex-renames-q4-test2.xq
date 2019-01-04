(: Name: complex-renames-q4 :)
(: Description: Rename one of the elements called "south-east". :)

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
