(: Name: id-typeswitch-expr-015 :)
(: Description: Evaluation of a replace expression used with typeswitch expression where the operand is an updating (replace) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(replace value of node $input-context/employees[1]/employee[1]/salary[1] with $input-context/employees[1]/employee[2]/salary[1])
 case $i as xs:string
    return "test should fail"
 case $i as xs:double
    return "test should fail" 
 default
   return "test should fail"