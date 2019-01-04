(: Name: id-comma-expr-021 :)
(: Description: Evaluation of a replace expression used with comma expression where first :)
(: expression is a mathematical expression and second one is an updating (replace) expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return
 ((6 idiv 2) + 1, replace value of node $var/employee[1]/salary[1] with $var/employee[2]/salary[1])