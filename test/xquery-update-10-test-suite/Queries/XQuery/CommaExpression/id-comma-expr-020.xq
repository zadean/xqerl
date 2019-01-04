(: Name: id-comma-expr-020 :)
(: Description: Evaluation of a replace expression used with comma expression where first :)
(: expression is an updating (replace) expression and the second one is a mathematical expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return
(replace value of node $var/employee[1]/salary[1] with $var/employee[2]/salary[1], (6 idiv 2) + 1)