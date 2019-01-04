(: Name: id-comma-expr-017 :)
(: Description: Evaluation of insert expression used with comma expression where first :)
(: expression is () and second expression is an updating (replace) expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
((), replace value of node $var/hours[1] with $var/hours[2])