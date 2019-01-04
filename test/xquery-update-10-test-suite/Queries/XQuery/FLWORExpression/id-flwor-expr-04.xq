(: Name: id-flwor-expr-04 :)
(: Description: Evaluation of insert expression use with FLWOR expression where "order by" clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
order by (insert node <salary>110000</salary> into $var) descending
return 
  "This Test Should Fail"