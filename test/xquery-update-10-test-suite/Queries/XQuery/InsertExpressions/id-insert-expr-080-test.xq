(: Name: id-insert-expr-080-test :)
(: Description: Query to verify id-insert-expr-080 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/works[1]/employee[@name="John Doe 12"]/overtime