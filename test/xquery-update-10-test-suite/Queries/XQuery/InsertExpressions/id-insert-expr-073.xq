(: Name: id-insert-expr-073 :)
(: Description: Insert an attribute before a comment without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := comment { "alone" }
return
   insert node attribute test { "123" } before $n
