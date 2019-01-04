(: Name: id-delete-expr-022 :)
(: Description: Delete a PI node multiple times. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[13]
let $pi := $emp/processing-instruction()
return
   (
   delete node $pi,
   delete node $pi,
   delete node $pi
   )
