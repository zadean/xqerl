(: Name: applyUpdates-015 :)
(: Description: Change attribute name to an illegal value. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   rename node $var/@name as "this is a bad name"
