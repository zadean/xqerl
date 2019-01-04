(: Name: id-insert-expr-054 :)
(: Description: Insert an element into a comment. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//comment())[1]
return
   insert node <test/> into $n
