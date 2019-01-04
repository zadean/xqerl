(: Name: id-rename-expr-016 :)
(: Description: A rename expression, where the new name expression uses fn:concat function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/hours[1] as fn:concat("hour","s1")