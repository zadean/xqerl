(: Name: compatibility-021 :)
(: Description: The value of a text node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   replace value of node $var/text()[1] with "test",
   replace value of node $var/text()[1] with "otherTest"
   )
