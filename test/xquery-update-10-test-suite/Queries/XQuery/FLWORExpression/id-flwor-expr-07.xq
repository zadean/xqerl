(: Name: id-flwor-expr-07 :)
(: Description: Evaluation of delete expression used with FLWOR expression where "where" clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
where (delete node $var/salary[1])
return 
  "This Test Should Fail"