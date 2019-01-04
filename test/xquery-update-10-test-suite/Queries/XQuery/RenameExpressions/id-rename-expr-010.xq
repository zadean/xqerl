(: Name: id-rename-expr-010 :)
(: Description: Evaluation of a rename expression where the newname expression is an updating expression.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  rename node $var/salary[1] as delete node $var/name[1]