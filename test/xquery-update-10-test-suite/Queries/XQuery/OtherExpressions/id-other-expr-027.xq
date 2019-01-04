(: Name: id-other-expr-027 :)
(: Description: Evaluates usage of an updating expression (delete) as part of a sequence expression (intersect operator). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]) intersect (delete node $input-context/employees[1]/employee[2])