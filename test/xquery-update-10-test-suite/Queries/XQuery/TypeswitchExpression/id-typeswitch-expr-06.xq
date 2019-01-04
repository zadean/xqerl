(: Name: id-typeswitch-expr-06 :)
(: Description: Evaluation of insert expression used with typeswitch expression where a branch (a "case") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return (insert node <salary>34000</salary> into $input-context/employees[1]/employee[2])
 case $i as xs:double
    return "This test should fail"
 default
    return "This test should fail"