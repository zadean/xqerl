(: Name: id-flwor-expr-016 :)
(: Description: Evaluation of a rename expression use with FLWOR expression where "order by" clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
order by (rename node $var/salary[1] as "salary1") descending
return 
  "This Test Should Fail"