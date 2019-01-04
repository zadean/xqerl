(: Name: fn-put-005 :)
(: Description: Store an attribute. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

fn:put(attribute name { "Barack" }, $input-URI)
