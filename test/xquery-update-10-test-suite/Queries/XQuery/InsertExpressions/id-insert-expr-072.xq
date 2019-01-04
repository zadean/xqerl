(: Name: id-insert-expr-072 :)
(: Description: Insert an attribute after a text node without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := text { "alone" }
return
   insert node attribute test { "123" } after $n
