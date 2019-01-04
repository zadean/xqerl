(: Name: complex-deletes-q1 :)
(: Description: Delete leading comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context/*/preceding::node()
return
  <result count="{count($a)}">{$a}</result>
