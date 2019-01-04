(: Name: complex-renames-q8 :)
(: Description: Rename the attributes names "west-attr-2", "center-attr-2", and "south-attr-2". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := $input-context//@west-attr-3/../@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//@mark[. = "c0"]/../@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//@south-attr-1/../@*
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//(@west-attr-2 | @center-attr-2 | @south-attr-2)
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>,

let $a := $input-context//@luke
return
  <result count="{count($a)}">{for $b in $a order by name($b), string($b) return <attr>{$b}</attr>}</result>
