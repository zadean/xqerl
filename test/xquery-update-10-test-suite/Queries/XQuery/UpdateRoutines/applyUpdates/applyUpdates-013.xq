(: Name: applyUpdates-013 :)
(: Description: Insert and delete attributes with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute name {"Sylvia"} into $var,
   delete node $var/@name
   )
