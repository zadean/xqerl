(: Name: id-rename-expr-013 :)
(: Description: Evaluation of a rename expression where the new name expression evaluates to a number.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  rename node $var/salary[1] as xs:int($var/salary[1]) + 1