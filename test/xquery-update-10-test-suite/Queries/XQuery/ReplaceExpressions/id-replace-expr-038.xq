(: Name: id-replace-expr-038 :)
(: Description: Replace value of a comment with empty sequence :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return replace value of node $var/comment() with ()