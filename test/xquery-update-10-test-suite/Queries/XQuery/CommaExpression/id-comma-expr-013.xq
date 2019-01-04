(: Name: id-comma-expr-013 :)
(: Description: Evaluation of a delete expression used with comma expression where first :)
(: expression is an updating expression and the second one is a mathematical expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
(delete node $var/salary[1], (6 idiv 2) + 1)