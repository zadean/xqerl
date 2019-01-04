(: Name: id-insert-expr-062 :)
(: Description: Insert an element before an element without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := <employee/>
return
   insert node <test/> before $emp
