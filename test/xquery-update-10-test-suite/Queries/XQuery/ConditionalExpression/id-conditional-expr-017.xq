(: Name: id-conditional-expr-017 :)
(: Description: Evaluation of a replace expression used with conditional expression where a branch (the "then") is an updating (replace) expression. :)
(: The "else" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
if (fn:true()) then
    replace value of node $var/salary[1] with <salary>124000</salary>
else
  "This test should fail"