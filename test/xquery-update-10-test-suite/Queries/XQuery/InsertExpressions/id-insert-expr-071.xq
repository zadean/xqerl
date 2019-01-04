(: Name: id-insert-expr-071 :)
(: Description: Insert an attribute before a text node without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := text { "alone" }
return
   insert node attribute test { "123" } before $n
