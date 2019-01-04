(: Name: id-other-expr-011 :)
(: Description: Evaluates usage of an updating expression (replace) as part of a logical (and) expression and usage of fn:true() function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:true() and (replace node $input-context/employees[1]/employee[1]/salary[1] with <salary1>120000</salary1>)