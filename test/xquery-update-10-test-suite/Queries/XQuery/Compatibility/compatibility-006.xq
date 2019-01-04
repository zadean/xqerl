(: Name: compatibility-005 :)
(: Description: A PI node is renamed more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return
   (
   rename node $var/processing-instruction() as "newName",
   rename node $var/processing-instruction() as "newName"
   )
