(: Name: complex-renames-q5 :)
(: Description: Rename the element called "far-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-north/text()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//far-east
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//new-far-east
return
  <result count="{count($a)}">{$a}</result>
