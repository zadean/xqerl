(: Name: id-transform-expr-041 :)
(: Description: Transform a document by changing the namespaces of its elements. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/works[1]/employee[1]
modify rename node $var1 as "emp"
return $var1
