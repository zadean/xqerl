(: Name: id-typeswitch-expr-08 :)
(: Description: Evaluation of delete expression used with typeswitch expression where the operand is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

 typeswitch(insert node <salary>34000</salary> into $input-context/employees[1]/employee[2])
  case $i as xs:string
    return "test should fail"
  case $i as xs:double
    return "test should fail" 
  default
   return "test should fail"