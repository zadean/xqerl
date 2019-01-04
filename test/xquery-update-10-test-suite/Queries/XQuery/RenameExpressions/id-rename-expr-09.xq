(: Name: id-rename-expr-09 :)
(: Description: Evaluation of a rename expression where the newname expression is the empty sequence.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  rename node $var/salary[1] as ()