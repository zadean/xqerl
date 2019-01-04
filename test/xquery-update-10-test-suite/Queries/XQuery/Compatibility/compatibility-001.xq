(: Name: compatibility-001 :)
(: Description: An element node is renamed more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   rename node $var as "newEmployee",
   rename node $var as "otherNewEmployee"
   )
