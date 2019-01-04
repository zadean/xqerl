(: Name: fn-put-008 :)
(: Description: Check that fn:put is an updating function. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

12, fn:put(document { <test/> }, $input-URI)
