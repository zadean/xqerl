(: Name: complex-deletes-q11 :)
(: Description: Delete all attributes called "mark". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//west[@west-attr-2]/@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//center[@center-attr-3]/@*
return
  <result count="{count($a)}">{$a}</result>
