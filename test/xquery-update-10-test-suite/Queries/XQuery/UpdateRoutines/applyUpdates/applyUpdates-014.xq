(: Name: applyUpdates-014 :)
(: Description: Insert and delete attributes with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   delete node $var/@name,
   insert node attribute name {"Sylvia"} into $var
   )
