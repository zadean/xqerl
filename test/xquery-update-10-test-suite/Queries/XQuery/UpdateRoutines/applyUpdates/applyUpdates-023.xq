(: Name: applyUpdates-023 :)
(: Description: Insert two attributes with the same name, delete the containing element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute name {"Sylvia"} into $var,
   insert node attribute name {"Gwynneth"} into $var,
   delete node $var
   )
