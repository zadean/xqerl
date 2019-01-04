(: Name: id-flwor-expr-022-test :)
(: Description: Verification query for id-flwor-expr-022. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:count($input-context//empnum)