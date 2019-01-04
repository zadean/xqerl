(: Name: compatibility-023 :)
(: Description: The value of a PI node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return
   (
   replace value of node $var/processing-instruction()[1] with "test",
   replace value of node $var/processing-instruction()[1] with "otherTest"
   )
