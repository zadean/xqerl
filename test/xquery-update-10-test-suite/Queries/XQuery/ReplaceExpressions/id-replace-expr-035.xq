(: Name: id-replace-expr-035 :)
(: Description: Replace value of element with empty sequence :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace value of node $var/hours[1] with ()