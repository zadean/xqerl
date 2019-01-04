(: Name: applyUpdates-003 :)
(: Description: Apply insertBefore then replaceNode. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node <exempt/> before $var/hours,
   replace node $var/hours with <overtime>10</overtime>
   )
