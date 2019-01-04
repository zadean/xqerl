(: Name: complex-replacevalues-q12 :)
(: Description: Replace value of all attributes on the "west" element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-north/*/@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,
let $a := $input-context//west[@west-attr-2 >= "west coast"]
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>
