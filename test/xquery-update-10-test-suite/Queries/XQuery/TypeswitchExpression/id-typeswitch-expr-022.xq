(: Name: id-typeswitch-expr-022 :)
(: Description: Evaluation of rename expression used with typeswitch expression where the operand is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(rename node $input-context/employees[1]/employee[1]/salary[1] as "salary1")
 case $i as xs:string
    return "test should fail"
 case $i as xs:double
    return "test should fail" 
 default
   return "test should fail"