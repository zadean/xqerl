(: Name: id-transform-expr-058 :)
(: Description: Within a transform, the value of an element node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var := $input-context/works[1]/employee[1]
modify
   (
   replace value of node $var with "test",
   replace value of node $var with "otherTest"
   )
return $var
