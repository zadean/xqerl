(: Name: id-other-expr-024 :)
(: Description:  Evaluates usage of an updating expression (rename) as part of a value Comparison (le operator) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) le (rename node $input-context/employees[1]/employee[1]/salary[1] as "salary1")