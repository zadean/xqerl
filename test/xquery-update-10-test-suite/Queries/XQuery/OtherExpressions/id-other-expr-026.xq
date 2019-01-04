(: Name: id-other-expr-026 :)
(: Description: Evaluates usage of an updating expression (delete) as part of a sequence expression (union operator). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]) union (delete node $input-context/employees[1]/employee[2])