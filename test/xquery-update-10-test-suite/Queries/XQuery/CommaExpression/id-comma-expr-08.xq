(: Name: id-comma-expr-08 :)
(: Description: Evaluation a delete expression used with comma expression where both :)
(: expressions are updating expressions.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
(delete node $var/hours[1], delete node $var/hours[2])