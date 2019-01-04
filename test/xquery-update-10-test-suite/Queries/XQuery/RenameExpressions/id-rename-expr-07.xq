(: Name: id-rename-expr-07 :)
(: Description: Evaluation of a rename expression where the target expression results in sequence of two nodes.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees
return 
  rename node $var/employee[position() < 3] as "employee1"