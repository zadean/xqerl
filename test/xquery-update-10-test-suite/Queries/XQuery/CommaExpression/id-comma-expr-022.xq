(: Name: id-comma-expr-022 :)
(: Description: Evaluation of rename expression used with comma expression where both :)
(: expressions are updating expressions.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
 (rename node $var/hours[1] as "hour1", rename node $var/hours[2] as "hour2")