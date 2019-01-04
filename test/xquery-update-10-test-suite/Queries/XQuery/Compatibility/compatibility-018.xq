(: Name: compatibility-018 :)
(: Description: The value of an element node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   replace value of node $var with "test",
   replace value of node $var with "test"
   )
