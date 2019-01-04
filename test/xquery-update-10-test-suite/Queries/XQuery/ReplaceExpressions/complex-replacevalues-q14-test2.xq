(: Name: complex-replacevalues-q14 :)
(: Description: Replace the value of the "far-west" element with a string containing markup. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//far-west/node()
return
  <result count="{count($a)}">{$a}</result>
