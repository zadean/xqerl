(: Name: id-flwor-expr-021-test :)
(: Description: Verification query for id-flwor-expr-021. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:count($input-context//empnum)