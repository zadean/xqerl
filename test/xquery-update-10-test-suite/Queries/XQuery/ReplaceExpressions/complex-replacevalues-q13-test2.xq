(: Name: complex-replacevalues-q13 :)
(: Description: Replace the value of the attributes named "west-attr-2", "center-attr-2", and "south-attr-2". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//@west-attr-3/../@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//@mark[. = "c0"]/../@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//@south-attr-1/../@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//@south-attr-2[. = ""]
return
  <result count="{count($a)}">{$a}</result>
