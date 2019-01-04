(: Name: id-flwor-expr-08 :)
(: Description: Evaluation of a delete expression use with FLWOR expression where "order by" clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
order by (delete node $var/salary[1]) descending
return 
  "This Test Should Fail"