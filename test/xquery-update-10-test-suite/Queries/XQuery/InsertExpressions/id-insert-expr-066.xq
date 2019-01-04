(: Name: id-insert-expr-066 :)
(: Description: Insert an attribute into a PI. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//processing-instruction())[1]
return
   insert node attribute day { "good" } into $n
