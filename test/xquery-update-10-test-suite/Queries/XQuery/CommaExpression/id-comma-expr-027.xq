(: Name: id-comma-expr-027 :)
(: Description: Evaluation of a rename expression used with comma expression where first :)
(: expression is an updating expression and the second one is a mathematical expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return
 rename node $var/salary[1] as "salary1", (6 idiv 2) + 1