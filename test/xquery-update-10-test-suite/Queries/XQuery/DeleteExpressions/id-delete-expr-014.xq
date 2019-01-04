(: Name: id-delete-expr-014 :)
(: Description: Delete an element node parent and then the element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   delete node $ot,
   delete node $ot/day[. eq "Monday"]
   )
