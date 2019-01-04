(: Name: id-other-expr-032 :)
(: Description: Evaluates usage of an updating expression (delete) as part of a range expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

($input-context/employees[1]/employee[1]) to (delete node $input-context/employees[1]/employee[2])