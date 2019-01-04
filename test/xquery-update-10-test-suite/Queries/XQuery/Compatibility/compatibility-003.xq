(: Name: compatibility-003 :)
(: Description: An attribute node is renamed more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   rename node $var/@name as "newName",
   rename node $var/@name as "otherNewName"
   )
