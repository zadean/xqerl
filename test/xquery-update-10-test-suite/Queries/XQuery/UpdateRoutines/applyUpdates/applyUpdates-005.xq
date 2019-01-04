(: Name: applyUpdates-005 :)
(: Description: Apply insertAsFirst then replaceElementContent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node comment { "full week" } as first into $var/hours,
   replace value of node $var/hours with "50"
   )
