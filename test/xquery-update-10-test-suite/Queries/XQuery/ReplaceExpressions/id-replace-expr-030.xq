(: Name: id-replace-expr-030 :)
(: Description: Replace the value of a text node with a sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var/empnum[1]/text() with (text { "E" }, text { "1000" })
