(: Name: fn-put-006 :)
(: Description: Store a text node. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

fn:put(text { "This is a test" }, $input-URI)
