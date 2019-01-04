(: Name: id-insert-expr-069 :)
(: Description: Insert an attribute before an element without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := <employee/>
return
   insert node attribute test { "123" } before $emp
