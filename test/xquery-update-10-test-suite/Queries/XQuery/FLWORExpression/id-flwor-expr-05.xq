(: Name: id-flwor-expr-05 :)
(: Description: Evaluation of delete expression use with FLWOR expression where let clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
let $var1 := delete node $var/salary[1]
return 
  "This Test Should Fail"