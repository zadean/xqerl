(: Name: id-delete-expr-09-test :)
(: Description: Query to verify id-delete-expr-09 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:count($input-context//employee)