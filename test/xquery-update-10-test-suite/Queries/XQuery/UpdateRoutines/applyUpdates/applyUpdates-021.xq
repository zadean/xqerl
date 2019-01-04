(: Name: applyUpdates-021 :)
(: Description: Insert and rename attributes with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute name {"Sylvia"} into $var,
   rename node $var/@name as "oldName"
   )
