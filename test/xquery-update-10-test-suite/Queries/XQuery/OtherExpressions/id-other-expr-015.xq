(: Name: id-other-expr-015 :)
(: Description: Evaluates usage of an updating expression (delete) as part of a Node Comparison (is) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) is (delete node $input-context/employees[1]/employee[1]/salary[1])