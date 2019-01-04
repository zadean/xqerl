(: Name: complex-replacevalues-q11 :)
(: Description: Replace value of all attributes called "mark". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//west[@west-attr-2]/@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//center[@center-attr-3]/@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//@mark[. = "n0 (1)"]
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>
