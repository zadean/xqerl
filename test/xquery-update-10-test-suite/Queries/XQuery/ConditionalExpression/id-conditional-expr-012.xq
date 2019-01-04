(: Name: id-conditional-expr-012 :)
(: Description: Evaluation of a delete expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
 if (fn:false()) then
  "This test should fail"
 else
   delete node $var/salary[1]