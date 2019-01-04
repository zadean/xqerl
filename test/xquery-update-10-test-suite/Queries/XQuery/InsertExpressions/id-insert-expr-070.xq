(: Name: id-insert-expr-070 :)
(: Description: Insert an attribute after an element without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := <employee/>
return
   insert node attribute test { "123" } after $emp
