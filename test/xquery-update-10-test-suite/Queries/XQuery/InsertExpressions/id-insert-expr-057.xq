(: Name: id-insert-expr-057 :)
(: Description: Insert a text node into a text node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//text())[1]
return
   insert node text {"test"} into $n
