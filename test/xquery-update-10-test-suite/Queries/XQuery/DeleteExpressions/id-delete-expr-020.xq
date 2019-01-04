(: Name: id-delete-expr-020 :)
(: Description: Delete a text node multiple times. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[1]
let $text := $emp/pnum/text()
return
   (
   delete node $text,
   delete node $text,
   delete node $text
   )
