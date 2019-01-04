(: Name: complex-replacevalues-q1 :)
(: Description: Replace the value of the leading comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context/*/preceding::node()
return
  <result count="{count($a)}">{$a}</result>
