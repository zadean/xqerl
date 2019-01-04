(: Name: compatibility-014 :)
(: Description: A PI node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
let $new1 := processing-instruction newPI {"test"}
let $new2 := processing-instruction otherNewPI {"test"}
return
   (
   replace node $var/processing-instruction()[1] with $new1,
   replace node $var/processing-instruction()[1] with $new1
   )
