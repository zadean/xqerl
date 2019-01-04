(: Name: id-other-expr-016 :)
(: Description: Evaluates usage of an updating expression (replace) as part of a Node Comparison (is) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) is (replace node $input-context/employees[1]/employee[1]/salary[1] with <salary1>120000</salary1>)