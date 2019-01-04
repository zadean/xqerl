(: Name: complex-deletes-q4 :)
(: Description: Delete last text node child of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context/far-north/text()
return
  <result count="{count($a)}">{$a}</result>
