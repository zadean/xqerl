(: Name: id-typeswitch-expr-07 :)
(: Description: Evaluation of insert expression used with typeswitch expression where a branch (the "default") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:string
        return "This test should fail"
 case $i as xs:double
    return "This test should fail"
 default
    return (insert node <salary>34000</salary> into $input-context/employees[1]/employee[2])