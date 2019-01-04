(: Name: fn-put-013 :)
(: Description: Multiple invocations of fn:put on the different URI. :)

(: insert-start :)
declare variable $input-URI external;
declare variable $input-URI-2 external;
(: insert-end :)

fn:put(document { <test/> }, $input-URI),
fn:put(document { <test2/> }, $input-URI-2)
