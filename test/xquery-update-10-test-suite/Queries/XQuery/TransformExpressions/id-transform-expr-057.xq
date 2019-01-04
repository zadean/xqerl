(: Name: id-transform-expr-057 :)
(: Description: Within a transform, an element node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $new1 := <employee/>
let $new2 := <otherEmployee/>
return
   copy $var := $input-context/works[1]
   modify
      (
      replace node $var/employee[1] with $new1,
      replace node $var/employee[1] with $new2
      )
   return $var
