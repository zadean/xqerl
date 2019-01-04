(: Name: id-delete-expr-019 :)
(: Description: Delete an attribute node multiple times. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[1]
let $attr := $emp/@gender
return
   (
   delete node $attr,
   delete node $attr,
   delete node $attr
   )
