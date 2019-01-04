(: Name: complex-replacevalues-q3 :)
(: Description: Replace value of all PIs with target "a-pi". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//(north | near-south)/preceding-sibling::comment()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//(north | near-south)/preceding-sibling::text()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//(north | near-south)/preceding-sibling::processing-instruction()
return
  <result count="{count($a)}">{$a}</result>
