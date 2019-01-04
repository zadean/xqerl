(: Name: applyUpdates-022 :)
(: Description: Insert and replace attributes with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute name {"Sylvia"} into $var,
   replace node $var/@name with <e oldName="{$var/@name}"/>/@oldName
   )
