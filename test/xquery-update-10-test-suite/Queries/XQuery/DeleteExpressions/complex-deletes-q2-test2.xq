(: Name: complex-deletes-q2 :)
(: Description: Delete trailing comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context/*/following::node()
return
  <result count="{count($a)}">{$a}</result>
