(: Name: id-conditional-expr-011 :)
(: Description: Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
 if (fn:true()) then
  delete node $var/salary[1]
 else
  "This test should fail"