(: Name: id-insert-expr-074 :)
(: Description: Insert an attribute after a comment without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := comment { "alone" }
return
   insert node attribute test { "123" } after $n
