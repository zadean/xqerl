(: Name: id-insert-expr-067 :)
(: Description: Insert an attribute into a document. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := $input-context
return
   insert node attribute day { "good" } into $n
