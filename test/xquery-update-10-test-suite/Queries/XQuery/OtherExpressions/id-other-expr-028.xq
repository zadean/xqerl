(: Name: id-other-expr-028 :)
(: Description: Evaluates usage of an updating expression (delete) as part of a sequence expression (except operator). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]) except (delete node $input-context/employees[1]/employee[2])