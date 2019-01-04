(: Name: fn-put-001 :)
(: Description: Store a document. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

fn:put(document { <test/> }, $input-URI)
