(: Name: id-replace-expr-037 :)
(: Description: Replace value of an attribute with empty sequence :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace value of node $var/@name with ()