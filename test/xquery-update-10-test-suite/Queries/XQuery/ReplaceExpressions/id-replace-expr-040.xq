(: Name: id-replace-expr-039 :)
(: Description: Replace value of a PI with empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[1]
return replace value of node $var1/text()[1] with ()