(: Name: id-rename-expr-012 :)
(: Description: Evaluation of a rename expression where the target expression evaluates to a number.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
 rename node (xs:int($var/salary[1]) + 1) as "salary1"