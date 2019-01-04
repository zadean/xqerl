(: Name: applyUpdates-025 :)
(: Description: Swap the names of two attribute nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   rename node $var/@name as "gender",
   rename node $var/@gender as "name"
   )
