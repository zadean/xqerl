(: Name: id-comma-expr-010 :)
(: Description: Evaluation of a delete expression used with comma expression where first :)
(: expression is () and second expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
((), delete node $var/hours[1])