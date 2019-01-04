(: Name: id-insert-expr-064 :)
(: Description: Insert an attribute into a comment. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := ($input-context//comment())[1]
return
   insert node attribute day { "good" } into $n
