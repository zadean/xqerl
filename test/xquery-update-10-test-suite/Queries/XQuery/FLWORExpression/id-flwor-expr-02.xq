(: Name: id-flwor-expr-02 :)
(: Description: Evaluation of insert expression use with FLWOR expression where for clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
for $var1 in (insert node <salary>110000</salary> into $var)
return 
  "This Test Should Fail"