(: Name: id-flwor-expr-06 :)
(: Description: Evaluation of a delete expression use with FLWOR expression where for clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
for $var1 in (delete node $var/salary[1])
return 
  "This Test Should Fail"