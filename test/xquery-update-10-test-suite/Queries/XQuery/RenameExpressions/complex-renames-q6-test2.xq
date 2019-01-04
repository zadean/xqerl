(: Name: complex-renames-q6 :)
(: Description: Rename all attributes called "mark". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//west[@west-attr-2]/@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//center[@center-attr-3]/@*
return
  <result count="{count($a)}">{$a}</result>,

let $a := $input-context//@matthew
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//@mark
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>
