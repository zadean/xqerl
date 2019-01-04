(: Name: id-flwor-expr-013 :)
(: Description: Evaluation of a rename expression use with FLWOR expression where let clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
let $var1 := rename node $var/salary[1] as "salary1"
return 
  "This Test Should Fail"