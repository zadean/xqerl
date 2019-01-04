(: Name: fn-put-003 :)
(: Description: Store a comment. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

fn:put(comment { "This is a test" }, $input-URI)
