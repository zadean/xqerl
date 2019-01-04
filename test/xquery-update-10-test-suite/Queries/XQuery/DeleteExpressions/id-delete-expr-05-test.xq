(: Name: id-delete-expr-05-test :)
(: Description: Query to verify id-delete-expr-05:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:count($input-context//employee)