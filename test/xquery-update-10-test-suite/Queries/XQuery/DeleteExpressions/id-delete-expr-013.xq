(: Name: id-delete-expr-013 :)
(: Description: Delete an element node and its parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   delete node $ot/day[. eq "Monday"],
   delete node $ot
   )
