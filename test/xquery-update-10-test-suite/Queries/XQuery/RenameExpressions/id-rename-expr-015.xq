(: Name: id-rename-expr-015 :)
(: Description: A rename expression where the target expression evaluates to a sequence of two attribute nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]/attribute::*
return 
  rename node $var as "mgr1"