(: Name: id-delete-expr-016 :)
(: Description: Delete an element node multiple times. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   delete node $ot,
   delete node $ot,
   delete node $ot
   )
