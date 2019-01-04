(: Name: id-other-expr-07 :)
(: Description: Evaluates usage of an updating expression (delete) as part of a logical (or) expression and usage of fn:true() function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:true() or (delete node $input-context/employees[1]/employee[1]/salary[1])