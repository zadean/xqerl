(: Name: complex-replacevalues-q2 :)
(: Description: Replace values of trailing comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context/*/following::node()
return
  <result count="{count($a)}">{$a}</result>
