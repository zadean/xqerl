(: Name: id-other-expr-012 :)
(: Description: Evaluates usage of an updating expression (insert) as part of a logical (and) expression and usage of fn:true() function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:true() and (insert node <salary1>120000</salary1> into $input-context/employees[1]/employee[1])