(: Name: id-comma-expr-014 :)
(: Description: Evaluation of insert expression used with comma expression where first :)
(: expression is a mathematical expression and second one is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
((6 idiv 2) + 1, delete node $var/salary[1])