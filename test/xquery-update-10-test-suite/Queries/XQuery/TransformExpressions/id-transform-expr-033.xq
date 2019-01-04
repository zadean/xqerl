(: Name: id-transform-expr-033 :)
(: Description: Transform with later copy variable binding seeing earlier copy variable binding. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]
return 
  copy $var1 := $var/employee[1],
       $var2 := $var/employee[$var1/hours[1] div 20] 
  modify delete node $var2/hours
  return $var2
