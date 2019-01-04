(: Name: id-other-expr-010 :)
(: Description: Evaluates usage of an updating expression (rename) as part of a logical (and) expression and usage of fn:true() function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:true() and (rename node $input-context/employees[1]/employee[1]/salary[1] as "salary1")