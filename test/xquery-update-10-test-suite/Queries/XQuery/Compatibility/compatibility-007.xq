(: Name: compatibility-007 :)
(: Description: An element node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
let $new1 := <employee/>
let $new2 := <otherEmployee/>
return
   (
   replace node $var with $new1,
   replace node $var with $new2
   )
