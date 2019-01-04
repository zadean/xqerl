(: Name: fn-put-004 :)
(: Description: Store a PI. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

fn:put(processing-instruction myPI { "This is a test" }, $input-URI)
