(: Name: complex-replacevalues-q5 :)
(: Description: Replace value of all text node children of element "south". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//near-south//text()
return
  <result count="{count($a)}">{$a}</result>,
let $a := $input-context//near-south[. = " text-5A
           south  south  text-5B
        "]
return
  <result count="{count($a)}">{$a}</result>
