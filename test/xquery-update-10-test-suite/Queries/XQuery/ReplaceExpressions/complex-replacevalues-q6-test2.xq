(: Name: complex-replacevalues-q6 :)
(: Description: Replace value of the text node child of element "east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//east/node()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//east/preceding-sibling::text()
return
  <result count="{count($a)}">{$a}</result>
