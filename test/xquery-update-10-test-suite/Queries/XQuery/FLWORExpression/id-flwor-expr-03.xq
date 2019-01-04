(: Name: id-flwor-expr-03:)
(: Description: Evaluation of insert expression used with FLWOR expression where "where" clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
where (insert node <salary>110000</salary> into $var)
return 
  "This Test Should Fail"