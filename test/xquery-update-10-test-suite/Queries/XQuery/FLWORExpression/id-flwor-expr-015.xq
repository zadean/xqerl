(: Name: id-flwor-expr-015 :)
(: Description: Evaluation of rename expression used with FLWOR expression where "where" clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
where (rename node $var/salary[1] as "salary1")
return 
  "This Test Should Fail"