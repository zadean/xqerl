(: Name: fn-put-012 :)
(: Description: Multiple invocations of fn:put on the same URI. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

fn:put(document { <test/> }, $input-URI),
fn:put(document { <test2/> }, $input-URI)
