(: Name: id-insert-expr-063 :)
(: Description: Insert an element after an element without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := <employee/>
return
   insert node <test/> after $emp
