(: Name: id-insert-expr-056 :)
(: Description: Insert an element into a PI. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//processing-instruction())[1]
return
   insert node <test/> into $n
