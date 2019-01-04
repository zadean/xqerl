(: Name: id-comma-expr-09 :)
(: Description: Evaluation of a delete expression used with comma expression where first :)
(: expression is an updating expression and the secon one is ().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
(delete node $var/hours[1], ())