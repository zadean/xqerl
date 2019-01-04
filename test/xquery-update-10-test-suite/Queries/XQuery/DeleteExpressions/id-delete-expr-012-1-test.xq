(: Name: id-delete-expr-012-1-test :)
(: Description: Verification Query for id-delete-expr-012-1. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:count($input-context/works[1]//employee)