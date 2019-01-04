(: Name: id-other-expr-020 :)
(: Description: Evaluates usage of an updating expression (insert) as part of a value Comparison (eq) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]/salary[1]) eq (insert node <salary1>107900</salary1> into $input-context/employees[1]/employee[1])