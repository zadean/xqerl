(: Name: id-rename-expr-018 :)
(: Description: A rename expression, where the new name expression is a transform expression that returns a node. The fn:name function is used to retrieve the name of the node.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/hours[1] as copy $newVar := $var modify rename node $newVar/hours[1] as "hours1" return fn:name($newVar/hours1[1])