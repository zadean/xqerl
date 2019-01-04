(: Name: id-other-expr-022 :)
(: Description:  Evaluates usage of an updating expression (rename) as part of a value Comparison (gt operator) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) gt (rename node $input-context/employees[1]/employee[1]/salary[1] as "salary1")