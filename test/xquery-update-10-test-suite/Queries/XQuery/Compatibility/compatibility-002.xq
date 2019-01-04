(: Name: compatibility-002 :)
(: Description: An attribute node is renamed more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   rename node $var as "newEmployee",
   rename node $var as "newEmployee"
   )
