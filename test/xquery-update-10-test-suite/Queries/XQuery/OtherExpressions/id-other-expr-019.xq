(: Name: id-other-expr-019 :)
(: Description: Evaluates usage of an updating expression (insert) as part of a Node Comparison (is) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) is (insert node <salary1>107900</salary1> into $input-context/employees[1]/employee[1])