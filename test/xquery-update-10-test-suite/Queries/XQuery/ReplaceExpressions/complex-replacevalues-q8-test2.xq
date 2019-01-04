(: Name: complex-replacevalues-q8 :)
(: Description: Replace value of all elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-south/following-sibling::node()
return
  <result count="{count($a)}">{ $a }</result>,
let $a := $input-context//south-east[. = "very south east"]
return
  <result count="{count($a)}">{ $a }</result>
