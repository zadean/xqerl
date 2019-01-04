(: Name: id-comma-expr-010-test :)
(: Description: Query to verify id-comma-expr-010 :)
(: expression is () and second expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/works[1]/employee[2]