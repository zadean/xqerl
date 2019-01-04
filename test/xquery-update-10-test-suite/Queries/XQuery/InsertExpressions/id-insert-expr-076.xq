(: Name: id-insert-expr-076 :)
(: Description: Insert an attribute after a PI without a parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := processing-instruction audio-output { "beep"}
return
   insert node attribute test { "123" } after $n
