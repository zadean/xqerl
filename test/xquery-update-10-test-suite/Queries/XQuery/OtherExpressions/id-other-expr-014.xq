(: Name: id-other-expr-014 :)
(: Description: Evaluates usage of an updating expression (rename) as part of a Node Comparison (is) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) is (rename node $input-context/employees[1]/employee[1]/salary[1] as "salary1")