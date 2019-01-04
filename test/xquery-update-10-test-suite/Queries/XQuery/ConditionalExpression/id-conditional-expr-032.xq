(: Name: id-conditional-expr-032 :)
(: Description: Evaluates a transform expression together with a conditional expression where the if-clause is an updating (delete) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
if (delete node $var/hours[1]) then
    "This test should fail"
else
   "This test should fail"