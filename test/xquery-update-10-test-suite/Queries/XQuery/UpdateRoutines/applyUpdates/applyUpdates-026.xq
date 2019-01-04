(: Name: applyUpdates-026 :)
(: Description: Rename one attribute node, replace another. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   rename node $var/@name as "gender",
   replace node $var/@gender with <e name="Sylvia"/>/@*
   )
