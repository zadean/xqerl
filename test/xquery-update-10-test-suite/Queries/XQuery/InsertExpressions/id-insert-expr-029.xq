(: Name: id-insert-expr-029 :)
(: Description: Evaluation of insert expression where the target expression evaluates to a number. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  insert node <salary>100000</salary> into xs:int(2 + 2)