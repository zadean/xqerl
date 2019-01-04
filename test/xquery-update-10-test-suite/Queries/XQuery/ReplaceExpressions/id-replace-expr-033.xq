(: Name: id-replace-expr-033 :)
(: Description: Replace the value of a element node with a document. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var with $input-context
