(: Name: id-transform-expr-056 :)
(: Description: Within a transform, an attribute node is renamed more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var := $input-context/works[1]/employee[1]
modify
   (
   rename node $var/@name as "newName",
   rename node $var/@name as "otherNewName"
   )
return $var
