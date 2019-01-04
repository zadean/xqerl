(: Name: id-insert-expr-065 :)
(: Description: Insert an attribute into a text node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//text())[1]
return
   insert node attribute day { "good" } into $n
