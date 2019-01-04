(: Name: complex-deletes-q10 :)
(: Description: Delete the element called "far-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-north/text()
return
  <result count="{count($a)}">{$a}</result>
