(: Name: id-rename-expr-06 :)
(: Description: Evaluation of a rename expression where the target expression is a target expression.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  rename node(rename node $var/salary[1] as "newSalary") as "newSalary"