(: Name: id-replace-expr-043 :)
(: Description: Replace value of a PI with empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[13]/processing-instruction()
return replace value of node $var1 with ("testing", 123)