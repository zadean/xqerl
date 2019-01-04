(: Name: id-delete-expr-021 :)
(: Description: Delete a comment node multiple times. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[13]
let $comment := $emp/comment()
return
   (
   delete node $comment,
   delete node $comment,
   delete node $comment
   )
