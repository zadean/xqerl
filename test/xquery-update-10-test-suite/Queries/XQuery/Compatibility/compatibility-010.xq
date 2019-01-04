(: Name: compatibility-010 :)
(: Description: An attribute node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
let $new1 := attribute newAttribute {"test"}
let $new2 := attribute otherNewAttribute {"test"}
return
   (
   replace node $var/@name with $new1,
   replace node $var/@name with $new1
   )
