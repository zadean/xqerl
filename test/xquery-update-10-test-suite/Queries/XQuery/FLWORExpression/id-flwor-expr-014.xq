(: Name: id-flwor-expr-014 :)
(: Description: Evaluation of rename expression used with FLWOR expression where for clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
for $var1 in (rename node $var/salary[1] as "salary1")
return 
  "This Test Should Fail"