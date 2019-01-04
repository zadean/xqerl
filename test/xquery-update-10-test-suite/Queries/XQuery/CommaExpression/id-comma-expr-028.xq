(: Name: id-comma-expr-028 :)
(: Description: Evaluation of a rename expression used with comma expression where first :)
(: expression is a mathematical expression and second one is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return
 ((6 idiv 2) + 1, rename node $var/salary[1] as "salary1")