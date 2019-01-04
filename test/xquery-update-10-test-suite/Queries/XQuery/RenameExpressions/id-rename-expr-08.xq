(: Name: id-rename-expr-08 :)
(: Description: Evaluation of a rename expression where the target expression resolve to the empty sequence.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[5]
return 
  rename node ($var) as "employee1"