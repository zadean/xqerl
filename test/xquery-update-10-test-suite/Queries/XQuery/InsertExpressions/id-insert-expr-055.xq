(: Name: id-insert-expr-055 :)
(: Description: Insert an element into a text node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//text())[1]
return
   insert node <test/> into $n
