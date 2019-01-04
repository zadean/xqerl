(: Name: complex-deletes-q12 :)
(: Description: Delete all attributes on the "west" element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-north/*/@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>
