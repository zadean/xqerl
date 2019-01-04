(: Name: id-transform-expr-055 :)
(: Description: Within a transform, an element node is renamed more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var := $input-context/works[1]/employee[1]
modify
   (
   rename node $var as "newEmployee",
   rename node $var as "otherNewEmployee"
   )
return $var
