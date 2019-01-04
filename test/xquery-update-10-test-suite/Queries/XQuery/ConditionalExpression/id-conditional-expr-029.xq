(: Name: id-conditional-expr-029 :)
(: Description: Evaluation of a transform expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
if (fn:true()) then
  (copy $newVar := $var modify delete node $newVar/salary[1]
  return $newVar)
else
  "This test should not fail"