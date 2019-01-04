(: Name: complex-replacevalues-q10 :)
(: Description: Replace value of the element called "south". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//south[. = ""]
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//south/node()
return
  <result count="{count($a)}">{$a}</result>
