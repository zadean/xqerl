(: Name: compatibility-028 :)
(: Description: Replace and replace value of operate on the same element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   replace node $var/empnum with <empnum>on leave</empnum>,
   replace value of node $var with "on leave"
   )
