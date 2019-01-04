(: Name: id-typeswitch-expr-020 :)
(: Description: Evaluation of a replace expression used with typeswitch expression where a branch (a "case") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return (replace value of node $input-context/employees[1]/employee[1]/salary[1] with $input-context/employees[1]/employee[2]/salary[1])
 case $i as xs:double
    return "This test should fail"
 default
    return "This test should fail"